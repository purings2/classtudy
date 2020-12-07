<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
	//씨 댓글 하는데 일주일이 걸리냐미친
	function viewBtn(indexNo){
		var boardNumber = document.getElementsByName('boardNo')[indexNo];
		var boardNo = boardNumber.value;

		commentList(boardNo, indexNo);
	}

	function replyInsertBtn(indexNo){
		//게시물 번호
		var boardNo = document.getElementsByName('boardNo')[indexNo];
		//댓글 content
		var content = document.getElementsByName('content')[indexNo];
		//댓글 글쓴이
		var writer = document.getElementsByName('writer')[indexNo];

		if (!content.value) {		
			content.setAttribute("placeholder", "내용을 먼저 입력해 주세요.");
			content.focus();
			return false;
		}
		var insertData = "content=" + content.value + "&boardNo=" + boardNo.value +"&writer=" + writer.value ;

		commentInsert(insertData, boardNo.value);
	}
	
	//댓글 등록
	function commentInsert(insertData, boardNo){
		$.ajax({    
	      url : '/gbcomment/insert',
	      type : 'post',
	      data : insertData,
	      success : function(data){
	          if(data == 1) {
	              commentList(boardNo); //댓글 작성 후 댓글 목록 reload
	              $('[name=content]').val('');
	          }
	      }
	  });
	}



	//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경한다.
	function commentUpdate(commentNo, content, boardNo, indexNo) {
		alert("댓글 수정 indexNo : "+indexNo);
		var str = '';
	
		str += '<div class="input-group">';
		str += '<input type="text" class="form-control" name="content' +commentNo+ '" value="' +content+ '"/>';
		str += '<span class="input-group-btn"><button class="btn btn-warning" type="button" onclick="commentUpdateProc('+commentNo+',\''+boardNo+'\',\''+indexNo+'\');">수정</button> </span>';
		str += '</div>';
		$('.commentContent' +commentNo).html(str);
	}
	
	//댓글 수정 - 수정한 댓글 내용을 테이블에 업데이트한다.
	function commentUpdateProc(commentNo, boardNo, indexNo) {
		//댓글 번호에 해당하는 수정된 내용을 가져온다.
		alert("boardNo : " + boardNo + "commentNo : " + commentNo + "indexNo : " + indexNo);

		var updateContent = $('[name=content'+commentNo+']').val();
		$.ajax({
			url:	'/gbcomment/update/',
			type:	'post',
			data:	{'content' : updateContent, 'commentNo' : commentNo},
			success: function(data) {
				if(data == 1) commentList(boardNo); //댓글을 수정한 후 목록을 출력한다.
			}
		});
	}
	//댓글 삭제
	function commentDelete(commentNo, boardNo) {
		
		$.ajax({
			url:	'/gbcomment/delete/' + commentNo,
			type:	'post',
			success : function(data){
		          if(data == 1) {
		              commentList(boardNo); //댓글 작성 후 댓글 목록 reload
		            
		          }
		      }
		});
	}

	//댓글 목록 보기
	function commentList(boardNo, indexNo) {
		//alert("commentList(boardNo) ==> " + boardNo);
		$.ajax({
			url:	'/gbcomment/list/'+ boardNo,
			type:	'get',
			data:	{'boardNo': boardNo},
			success: function(data) {
				var str = '';
				$.each(data,function(key, value){ 
					str += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
					str += '<div class="commentInfo'+value.commentNo+'">'+'댓글번호 : '+value.commentNo+' / 작성자 : '+value.writer;
					str += '<a onclick="commentUpdate('+value.commentNo+',\''+value.content+'\',\''+value.boardNo+'\',\''+indexNo+'\');"> 수정 </a>';
					str += '<a onclick="commentDelete('+value.commentNo+',\''+value.boardNo+'\');"> 삭제 </a> </div>';
					str += '<div class="commentContent'+value.commentNo+'"> <p> 내용 : '+value.content +'</p>';
					str += '</div></div>';
				});
				$(".commentList").html(str);
			}
		})
		.done(function(data) {
			console.log(data);
		});
	}
	

//페이지 로딩시 게시글에 연결된 댓글이 있으면 무조건 댓글을 보여준다.

</script>