// 게시글 번호 저장
var boardNo = document.getElementById("boardNo").value;

// 로그인한 회원 아이디 저장
var memberId = document.getElementById("memberId").value;

// 댓글 목록 보기
function commentList() {
	$.ajax({
		url:	"/cbcomment/list/" + boardNo,
		type:	"get",
		data:	{"boardNo": boardNo},
		success: function(data) {
			var str = '';
			$.each(data, function(key, value){ 
				if (key == 0) {
					str += '<div class="col-sm-12" style="padding-top: 5px;">';
				} else {
					str += '<div class="col-sm-12" style="border-top: 1px solid #dddddd; margin-top: 15px; padding-top: 15px;">';
				}
				str += '<div class="col-sm-2" align="left"><b>' + value.writerName + ' (' + value.writer + ')' + '</b></div>';
				str += '<div class="col-sm-8 commentContent' + value.commentNo + '" align="left"><p>' + value.content +'</p></div>';
				str += '<div class="col-sm-2">';
				str += '<button class="btn btn-sm btn-default" onclick="commentUpdate(' + value.commentNo + ',\'' + value.content + '\',\'' + value.writer + '\');">수정</button>&nbsp;';
				str += '<button class="btn btn-sm btn-default" onclick="commentDelete(' + value.commentNo + ',\'' + value.writer + '\');">삭제</button>';
				str += '</div></div>';
			});
			$("#commentList").html(str);
		}
	});
}

// 댓글 작성
function commentInsert(content){
	// 댓글 내용이 입력되었는지 확인
	if(document.getElementById("commentContent").value == "") {
		alert("댓글 내용을 입력하세요.");
	} else {
		$.ajax({
			url: 	"/cbcomment/insert",
			type: 	"post",
			data: 	{"writer": memberId, "content": content, "boardNo": boardNo},
			success: function(data){
				if(data == 1) {
					commentList(); // 댓글 목록 새로고침
					$("#commentContent").val(""); // 댓글 작성칸 비우기
				}
			}
		});
	}
}

// 댓글 수정 - 댓글 내용 부분을 input으로 변경
function commentUpdate(commentNo, content, writer) {
	if (writer != memberId) {
		alert("수정할 수 있는 권한이 없습니다.");
	} else {
		var str = '';
		str += '<div class="input-group">';
		str += '<input type="text" class="form-control" name="content_' + commentNo + '" value="' + content + '"/>';
		str += '<span class="input-group-btn"><button class="btn btn-success" type="button" onclick="commentUpdateProc(' + commentNo + ');">수정</button></span>';
		str += '</div>';
		$('.commentContent' + commentNo).html(str);
	}
}

// 댓글 수정 - 수정한 댓글 내용을 DB에 업데이트
function commentUpdateProc(commentNo) {
	// 댓글 번호에 해당하는 댓글 내용을 가져온다.
	var updateContent = $('[name=content_' + commentNo + ']').val();
	$.ajax({
		url:	'/cbcomment/update',
		type:	'post',
		data:	{'content' : updateContent, 'commentNo' : commentNo},
		success: function(data) {
			if(data == 1) { commentList(); } //댓글 수정 후 목록을 다시 출력
		}
	});
}

// 댓글 삭제
function commentDelete(commentNo, writer) {
	if (writer != memberId) {
		alert("삭제할 수 있는 권한이 없습니다.");
	} else {
		if(confirm("정말 삭제하시겠습니까?") == false) {
			return false;
		} else {
			$.ajax({
				url:	'/cbcomment/delete/' + commentNo,
				type:	'post',
				success: function(data) {
					if(data == 1) { commentList(); } //댓글 삭제 후 목록을 다시 출력
				}
			});
		}
	}
}