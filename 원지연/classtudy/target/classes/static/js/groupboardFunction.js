// 게시글 번호와 작성자 저장
var boardNo = document.getElementById("boardNo").value;
var boardWriter = document.getElementById("writer").value;

// 로그인한 회원 아이디와 이름을 저장
var loginId = document.getElementById("loginId").value;
var loginName = document.getElementById("loginName").value;

// 현재 path 경로 저장
var path = document.getElementById("nowPath").value;

//-------------------------------------------------------------------------------------
// 그룹게시판 게시글 작성 검사
//-------------------------------------------------------------------------------------
function checkGroupboardForm(groupboardForm) {
	// 아이디 검사
	if(groupboardForm.writer.value == "" ) {
		alert("아이디를 받아올 수 없습니다.");
		return false;
	}
	// 제목 검사
	if(groupboardForm.title.value == "") {
		alert("제목을 입력하세요.");
		boardForm.title.focus();
		return false;
	}
	// 내용 검사
	if(document.getElementById("content").value.length == 0) {
		alert("내용을 입력하세요.");
		groupboardForm.content.focus();
		return false;
	}
	groupboardForm.submit();
}

//---------------------------------------------------------------------
// 그룹게시판 게시글 수정 검사
//---------------------------------------------------------------------
function checkUpdateGroupboardForm(groupboardForm) {
	// 제목 검사
	if(groupboardForm.title.value == "") {
		alert("제목을 입력하세요.");
		groupboardForm.title.focus();
		return false;
	}
	// 내용 검사
	if(document.getElementById("content").value.length == 0) {
		alert("내용을 입력하세요.");
		groupboardForm.content.focus();
		return false;
	}
	groupboardForm.submit();
}

//---------------------------------------------------------------------
// 그룹게시판 게시글 좋아요 - 좋아요 버튼이 눌렸을 경우
//---------------------------------------------------------------------
function likeGBoard() {
	// 해당 게시글에 좋아요를 이미 눌렀는지 확인
	if(document.getElementById("likeBtn").value == "Y"){
		//alert("이미 좋아요를 누른 게시글입니다.");
		if(confirm("이미 좋아요를 누른 게시글입니다.\n좋아요를 취소하시겠습니까?") == false){
			return false;
		} else {
			// 해당 게시글의 좋아요를 취소한다.
			$.ajax({
				url: 	"/community/groupboard/deleteLike/",
				type: 	"post",
				dataType: "json",
				data: 	{"boardNo" : boardNo, "memberId" : loginId},
				success: function(data) {
						document.getElementById("likeBtn").value = "N";
						document.getElementById("likeBtn").style.backgroundColor = "#ffffff";
						document.getElementById("likeBtn").style.color = "#000000";
						document.getElementById("likeBtn").innerHTML
							= '<span class="glyphicon glyphicon-thumbs-up"></span>&nbsp;좋아요&nbsp;' + data + '';
					}
			});
		}
	} else if(document.getElementById("likeBtn").value == "N"){
		// 해당 게시글의 좋아요수를 올린다.
		$.ajax({
			url: 	"/community/groupboard/like/",
			type: 	"post",
			dataType: "json",
			data: 	{"boardNo" : boardNo, "memberId" : loginId},
			success: function(data) {
					document.getElementById("likeBtn").value = "Y";
					document.getElementById("likeBtn").style.backgroundColor = "#888888";
					document.getElementById("likeBtn").style.color = "#ffffff";
					document.getElementById("likeBtn").innerHTML
						= '<span class="glyphicon glyphicon-thumbs-up"></span>&nbsp;좋아요&nbsp;' + data + '';
					// 좋아요수를 확인해서 알림을 보낸다.
					notiToGbLikes(data);
				}
		});
		// ----- 알림 보내기 -----
		// 자신이 작성한 글은 알림을 보내지 않는다.
		if(boardWriter != loginId) {
			// 작성자에게 보낼 알림 텍스트를 만든다.
			var notiContent = '';
			notiContent += loginName + '(' + loginId + ')님이 회원님의 ';
			notiContent += '<a href="' + path + '/community/groupboard/detail/' + boardNo + '">게시글</a>';
			notiContent += '을 좋아합니다.';
			// 게시글 작성자에게 알림을 보낸다.
			$.ajax({
				url: 	"/noti/insert/",
				type: 	"post",
				dataType: "json",
				data: 	{"notiContent" : notiContent, "receiver" : boardWriter},
				success: function(data) { }
			});
		}
	}
}
//---------------------------------------------------------------------
// 그룹게시판 게시글 좋아요 여부 확인
//---------------------------------------------------------------------
function checkGbLikes(boardNo, memberId) {
	// 좋아요 테이블에 좋아요 목록이 있는지 확인
	// 게시글번호, 로그인한 아이디가 모두 같아야 한다.
	$.ajax({
		url: 	"/community/freeboard/likeCheck/",
		type: 	"post",
		dataType: "json",
		data: 	{"boardNo"  : boardNo, "memberId" : memberId},
		success: function(data) {
				if(data == 1) { // 좋아요 누른 게시글이면 좋아요 버튼 변경
					document.getElementById("likeBtn").value = "Y";
					document.getElementById("likeBtn").style.backgroundColor = "#888888";
					document.getElementById("likeBtn").style.color = "#ffffff";
				}
			}
	});
}

//---------------------------------------------------------------------
// 그룹게시판 게시글 검색
//---------------------------------------------------------------------
function searchGBoard(keyword, searchCode, viewGroup) {
	// 검색어가 입력되었는지 확인
	if(keyword != ""){
		location.href=path + "/community/groupboard/search/" + searchCode + "/" + keyword + "/" + viewGroup;
	} else {
		alert("검색어를 입력해주세요.");
		return false;
	}
}

//---------------------------------------------------------------------
// 댓글 목록 보기
//---------------------------------------------------------------------
function gbcommentList() {
	$.ajax({
		url:	"/gbcomment/list/" + boardNo,
		type:	"get",
		data:	{"boardNo": boardNo},
		success: function(data) {
			var str = '';
			if (data.length < 1) { //댓글이 없을 때
				str += '<div class="col-sm-12" style="padding-top: 5px;">댓글이 없습니다.</div>';
			} else {
				$.each(data, function(key, value){ 
					if (key == 0) {
						str += '<div class="col-sm-12" style="padding-top: 5px;">';
					} else {
						str += '<div class="col-sm-12" style="border-top: 1px solid #dddddd; margin-top: 15px; padding-top: 15px;">';
					}
					str += '<div class="col-sm-2" align="left"><b>' + value.writerName + ' (' + value.writer + ')' + '</b></div>';
					//댓글 작성자이면 수정, 삭제 버튼을 보여주기
					if (value.writer == loginId) {
						str += '<div class="col-sm-8 commentContent' + value.commentNo + '" align="left"><p>' + value.content +'</p></div>';
						str += '<div class="col-sm-2" align="right">';
						str += '<button class="btn btn-sm btn-default" onclick="gbcommentUpdate(' + value.commentNo + ',\'' + value.content + '\',\'' + value.writer + '\');">수정</button>&nbsp;';
						str += '<button class="btn btn-sm btn-default" onclick="gbcommentDelete(' + value.commentNo + ',\'' + value.writer + '\');">삭제</button></div>';
					} else {
						str += '<div class="col-sm-10 commentContent' + value.commentNo + '" align="left"><p>' + value.content +'</p></div>';
					}
					str += '</div>';
				});
			}
			$("#commentList").html(str);
		}
	});
}

//---------------------------------------------------------------------
// 댓글 작성
//---------------------------------------------------------------------
function gbcommentInsert(content){
	// 댓글 내용이 입력되었는지 확인
	if(document.getElementById("commentContent").value == "") {
		alert("댓글 내용을 입력하세요.");
		return false;
	} else {
		$.ajax({
			url: 	"/gbcomment/insert",
			type: 	"post",
			data: 	{"writer": loginId, "content": content, "boardNo": boardNo},
			success: function(data){
				if(data == 1) {
					gbcommentList(); // 댓글 목록 새로고침
					$("#commentContent").val(""); // 댓글 작성칸 비우기
				}
			}
		});
		// ----- 알림 보내기 -----
		// 자신이 작성한 글은 알림을 보내지 않는다.
		if (boardWriter != loginId) {
			// 작성자에게 보낼 알림 텍스트를 만든다.
			var notiContent = '';
			notiContent += loginName + '(' + loginId + ')님이 회원님의 ';
			notiContent += '게시글에 ';
			notiContent += '<a href="' + path + '/community/groupboard/detail/' + boardNo + '/comment">댓글</a>을 남겼습니다.';
			// 게시글 작성자에게 알림을 보낸다.
			$.ajax({
				url: 	"/noti/insert/",
				type: 	"post",
				dataType: "json",
				data: 	{"notiContent" : notiContent, "receiver" : boardWriter},
				success: function(data) { }
			});
		}
	}
}

//---------------------------------------------------------------------
// 댓글 수정 - 댓글 내용 부분을 input으로 변경
//---------------------------------------------------------------------
function gbcommentUpdate(commentNo, content, writer) {
	if (writer != loginId) {
		alert("수정할 수 있는 권한이 없습니다.");
	} else {
		var str = '';
		str += '<div class="input-group">';
		str += '<input type="text" class="form-control" name="content_' + commentNo + '" value="' + content + '"/>';
		str += '<span class="input-group-btn"><button class="btn btn-success" type="button" onclick="gbcommentUpdateProc(' + commentNo + ');">수정</button></span>';
		str += '</div>';
		$('.commentContent' + commentNo).html(str);
	}
}
// 댓글 수정 - 수정한 댓글 내용을 DB에 업데이트
function gbcommentUpdateProc(commentNo) {
	// 댓글 번호에 해당하는 댓글 내용을 가져온다.
	var updateContent = $('[name=content_' + commentNo + ']').val();
	$.ajax({
		url:	'/gbcomment/update',
		type:	'post',
		data:	{'content' : updateContent, 'commentNo' : commentNo},
		success: function(data) {
			if(data == 1) { gbcommentList(); } //댓글 수정 후 목록을 다시 출력
		}
	});
}

//---------------------------------------------------------------------
// 댓글 삭제
//---------------------------------------------------------------------
function gbcommentDelete(commentNo, writer) {
	if (writer != loginId) {
		alert("삭제할 수 있는 권한이 없습니다.");
	} else {
		if(confirm("정말 삭제하시겠습니까?") == false) {
			return false;
		} else {
			$.ajax({
				url:	'/gbcomment/delete/' + commentNo,
				type:	'post',
				success: function(data) {
					if(data == 1) { gbcommentList(); } //댓글 삭제 후 목록을 다시 출력
				}
			});
		}
	}
}

//---------------------------------------------------------------------
// 그룹게시판 게시글 조회수 확인 후 알림 발송
//---------------------------------------------------------------------
function notiToGbViews(views) {
	var NUM1 = 100;
	var NUM2 = 500;
	// 조회수가 NUM이면 알림을 보낸다. 
	if (views == NUM1 || views == NUM2) {
		// ----- 알림 보내기 -----
		// 게시글 번호와 작성자 저장
		var boardNo = document.getElementById("boardNo").value;
		var writer = document.getElementById("writer").value;
		// 작성자에게 보낼 알림 텍스트를 만든다.
		var notiContent = '';
		notiContent += '회원님의 ';
		notiContent += '<a href="' + path + '/community/groupboard/detail/' + boardNo + '">게시글</a>이 ';
		notiContent += views + '회 이상 조회되었습니다.';
		// 게시글 작성자에게 알림을 보낸다.
		$.ajax({
			url: 	"/noti/insert/",
			type: 	"post",
			dataType: "json",
			data: 	{"notiContent" : notiContent, "receiver" : writer},
			success: function(data) { notiLoad(); }
		});
	}
}

//---------------------------------------------------------------------
// 그룹게시판 게시글 좋아요수 확인 후 알림 발송
//---------------------------------------------------------------------
function notiToGbLikes(likes) {
	var NUM1 = 5;
	var NUM2 = 10;
	// 좋아요수가 NUM이면 알림을 보내고 포인트를 지급한다.
	if (likes == NUM1 || likes == NUM2) {
		// ----- 알림 보내기 -----
		// 게시글 번호와 작성자 저장
		var boardNo = document.getElementById("boardNo").value;
		var writer = document.getElementById("writer").value;
		// 작성자에게 보낼 알림 텍스트를 만든다.
		var notiContent = '';
		notiContent += '회원님의 ';
		notiContent += '<a href="' + path + '/community/groupboard/detail/' + boardNo + '">게시글</a>을 ';
		notiContent += likes + '명 이상 좋아합니다.';
		// 게시글 작성자에게 알림을 보낸다.
		$.ajax({
			url: 	"/noti/insert/",
			type: 	"post",
			dataType: "json",
			data: 	{"notiContent" : notiContent, "receiver" : writer},
			success: function(data) { notiLoad(); }
		});
		// ----- 포인트 지급 -----
		// 작성자에게 보낼 포인트 텍스트를 만든다.
		var pointContent = '';
		pointContent += '<a href="' + path + '/community/groupboard/detail/' + boardNo + '">게시글</a> 좋아요 ' + likes + ' 돌파';
		// 게시글 작성자에게 포인트를 지급한다.
		var changeVal = 1;
		$.ajax({
			url: 	"/point/insert/",
			type: 	"post",
			dataType: "json",
			data: 	{"pointContent" : pointContent, "member" : writer, "changeVal" : changeVal},
			success: function(data) { }
		});
	}
}

//---------------------------------------------------------------------
// 태그 영역에 태그 입력
//---------------------------------------------------------------------
function addTag(tagName) {
	$('#tags').tagsinput('add', tagName);
}