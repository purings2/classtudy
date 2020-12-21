<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<script>
	<!-- view 버튼 클릭-->
	function viewBtn(indexNo, groupNo){
		var boardNumber = document.getElementsByName('boardNo')[indexNo];
		var boardNo = boardNumber.value;
		commentList(boardNo, indexNo);
		//alert("groupNo : " + groupNo);
		//checkjoin(groupNo);
	}

	<!--join 버튼 클릭 시-->
	function insertJoin(groupNo){
		if(confirm("그룹에 참여 하시겠습니까?") == false) {
			return false;
		} else {
			$.ajax({    
			      url : '${path}/community/groupsearch/join',
			      type : 'post',
			      data : {'groupNo': groupNo},
			      success : function(data){
			      }
			});
		}
	}
<!--=====================댓글========================-->
/*	function checkjoin(groupNo) {
	// join 했는지 확인 groupNo, 로그인한 아이디가 모두 같아야 한다.
		$.ajax({
			url: 	"/community/joinCheck/",
			type: 	"post",
			dataType: "json",
			data: 	{"groupNo"  : groupNo},
			success: function(data) {
					if(data == 1) { // 좋아요 누른 게시글이면 좋아요 버튼 변경
						alert("이미 조인 했음");
						document.getElementById("insertJoin").value = "Y";
						document.getElementById("insertJoin").style.backgroundColor = "#888888";
						document.getElementById("insertJoin").style.color = "#ffffff";
					} else {
						alert("조인 안했음");
					}
				}
		});
	}*/

	function replyInsertBtn(indexNo){
		//게시물 번호
		var boardNo = document.getElementsByName('boardNo')[indexNo];
		//댓글 content
		var content = document.getElementsByName('content')[indexNo];
		//댓글 글쓴이
		var writer = document.getElementsByName('replyWriter')[indexNo];
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
	      url : '/gscomment/insert',
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
		//alert("댓글 수정 indexNo : "+indexNo);
		if(confirm("수정 하시겠습니까?") == false) {
			return false;
		} else {
			var str = '';
		
			str += '<div class="input-group">';
			str += '<input type="text" class="form-control" name="content' +commentNo+ '" value="' +content+ '"/>';
			str += '<span class="input-group-btn"><button class="btn btn-warning" type="button" onclick="commentUpdateProc('+commentNo+',\''+boardNo+'\',\''+indexNo+'\');">수정</button> </span>';
			str += '</div>';
			$('.commentContent' +commentNo).html(str);
		}
	}
	//댓글 수정 - 수정한 댓글 내용을 테이블에 업데이트한다.
	function commentUpdateProc(commentNo, boardNo, indexNo) {
		//댓글 번호에 해당하는 수정된 내용을 가져온다.
		//alert("boardNo : " + boardNo + "commentNo : " + commentNo + "indexNo : " + indexNo);
		
		var updateContent = $('[name=content'+commentNo+']').val();
		$.ajax({
			url:	'/gscomment/update/',
			type:	'post',
			data:	{'content' : updateContent, 'commentNo' : commentNo},
			success: function(data) {
				if(data == 1) {commentList(boardNo, indexNo);} //댓글을 수정한 후 목록을 출력한다.
			}
		});
		//alert("boardNo : " + boardNo + "commentNo : " + commentNo + "indexNo : " + indexNo);
	}
	
	//댓글 삭제
	function commentDelete(commentNo, boardNo) {
		if(confirm("정말 삭제하시겠습니까?") == false) {
			return false;
		} else {
			$.ajax({
				url:	'/gscomment/delete/' + commentNo,
				type:	'post',
				success : function(data){
			          if(data == 1) {
			              commentList(boardNo); //댓글 작성 후 댓글 목록 reload
			          }
			    }
			});
		}
	}

	//댓글 목록 보기
	function commentList(boardNo, indexNo) {
		 var uid = $("#sessionVal").val();
	      //alert("commentList 세션값입니다 : " + uid);
		
		$.ajax({
			url:	'/gscomment/list/'+ boardNo,
			type:	'get',
			data:	{'boardNo': boardNo},
			success: function(data) {
				var str = '';
				if (data.length < 1) { //댓글이 없을 때
					str += '<div class="col-sm-12" style="padding-top: 5px;">댓글이 없습니다.</div>';
				} else {
					$.each(data,function(key, value){ 
						
						str += '<div class="commentArea">';
						//str += '<div class="commentInfo'+value.commentNo+'">'+'작성자 : '+value.writer;
						str += '<div class="col-sm-2" align="left"><b>' + value.writer+ '</b></div>';

						//str += '<div class="commentContent'+value.commentNo+'"> <p> 내용 : '+value.content +'</p>';
						str += '<div class="commentContent' + value.commentNo + '" align="left" id="Ccm"><p>' + value.content +'</p></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div>';
						if(value.writer == uid){
							str += '<div id="updelBtn"><button class="btn btn-sm btn-default"  onclick="commentUpdate('+value.commentNo+',\''+value.content+'\',\''+value.boardNo+'\',\''+indexNo+'\');"> 수정 </button>';
							str += '<button class="btn btn-sm btn-default" onclick="commentDelete('+value.commentNo+',\''+value.boardNo+'\'); "> 삭제 </button></div>';
						}
						//str += '</div></div>';
						str += '</div>';
					});
				}
				$(".commentList").html(str);
			}
		});
	}
//페이지 로딩시 게시글에 연결된 댓글이 있으면 무조건 댓글을 보여준다.
<!--=====================댓글 End========================-->
<!--
$.each(data,function(key, value){ 
	str += '<div class="commentArea" style="margin-bottom: 15px;">';
	str += '<div class="commentInfo'+value.commentNo+'">'+'작성자 : '+value.writer;
	/*str += '<a onclick="commentUpdate('+value.commentNo+',\''+value.content+'\',\''+value.boardNo+'\',\''+indexNo+'\');"> 수정 </a>';*/
	//if(value.writer == loginId){
		str += '<a onclick="commentDelete('+value.commentNo+',\''+value.boardNo+'\');"> 삭제 </a> </div>';
	//}
	str += '<div class="commentContent'+value.commentNo+'"> <p> 내용 : '+value.content +'</p>';
	str += '</div></div>';
});
-->
<!--
function searchGBoard(keyword, searchCode, viewGroup) {
	// 검색어가 입력되었는지 확인
	if(keyword != ""){
		location.href=path + "/community/groupboard/search/" + searchCode + "/" + keyword + "/" + viewGroup;
	} else {
		alert("검색어를 입력해주세요.");
		return false;
	}
}
-->
</script>