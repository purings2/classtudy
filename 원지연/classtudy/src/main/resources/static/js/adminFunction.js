// 현재 path 경로 저장
var path = document.getElementById("nowPath").value;

//---------------------------------------------------------------------
// 회원 검색
//---------------------------------------------------------------------
function searchMember(keyword, searchCode) {
	// 검색어가 입력되었는지 확인
	if(keyword != ""){
		location.href = path + "/admin/member/search/" + searchCode + "/" + keyword;
	} else {
		alert("검색어를 입력해주세요.");
		return false;
	}
}
//---------------------------------------------------------------------
// 모든 회원가입 내역을 승인
//---------------------------------------------------------------------
function registerCheckAll() {
	if(confirm("모두 승인 하시겠습니까?") == false){
		return false;
	} else {
		location.href = path + "/admin/registerCheckAll";
	}
}
//---------------------------------------------------------------------
// 선택한 회원가입 내역을 승인
//---------------------------------------------------------------------
function registerCheck(listNo) {
	$.ajax({
		url: 	"/admin/registerCheck/" + listNo,
		type: 	"post",
		dataType: "json",
		data: 	{"listNo" : listNo},
		success: function(data) {
			if(data == 1) { //승인 후 확인 표시
				document.getElementById("confirmBtn" + listNo).innerHTML
					= '<i class="glyphicon glyphicon-ok"></i>';
			}
		}
	});
}

//---------------------------------------------------------------------
// 강의 검색
//---------------------------------------------------------------------
function searchLecture(keyword, viewAcademy, searchCode) {
	// 검색어가 입력되었는지 확인
	if(keyword != ""){
		location.href=path+"/admin/lecture/search/"+searchCode+"/"+keyword+"/"+viewAcademy;
	} else {
		alert("검색어를 입력해주세요.");
		return false;
	}
}
//---------------------------------------------------------------------
// 강의 등록 검사
//---------------------------------------------------------------------
function checkLectureForm(lectureForm) {
	// 학원 선택 검사
	if(lectureForm.academyNo.value == "") {
		alert("학원을 선택하세요.");
		lectureForm.academyNo.focus();
		return false;
	}
	// 강의 이름 검사
	if(lectureForm.lectureName.value == "") {
		alert("강의 이름을 입력하세요.");
		lectureForm.lectureName.focus();
		return false;
	}
	lectureForm.submit();
}
//---------------------------------------------------------------------
// 강의 삭제
//---------------------------------------------------------------------
function lectureDelete(lectureNo) {
	if(confirm("정말 삭제 하시겠습니까?") == false){
		return false;
	} else {
		location.href = path + "/admin/lecture/delete/" + lectureNo;
	}
}
//---------------------------------------------------------------------
// 학원 등록 검사
//---------------------------------------------------------------------
function checkAcademyForm(academyForm) {
	// 학원 이름 검사
	if(academyForm.academyName.value == "") {
		alert("학원 이름을 입력하세요.");
		academyForm.academyName.focus();
		return false;
	}
	academyForm.submit();
}
//---------------------------------------------------------------------
// 학원 삭제
//---------------------------------------------------------------------
function academyDelete(academyNo) {
	if(confirm("정말 삭제 하시겠습니까?") == false){
		return false;
	} else {
		location.href = path + "/admin/academy/delete/" + academyNo;
	}
}

//---------------------------------------------------------------------
// 클래스게시판 게시글 삭제
//---------------------------------------------------------------------
function classboardDelete(boardNo) {
	if(confirm("정말 삭제 하시겠습니까?") == false){
		return false;
	} else {
		location.href = path + "/adboard/delete/classboard/" + boardNo;
	}
}
//---------------------------------------------------------------------
// 자유게시판 게시글 삭제
//---------------------------------------------------------------------
function freeboardDelete(boardNo) {
	if(confirm("정말 삭제 하시겠습니까?") == false){
		return false;
	} else {
		location.href = path + "/adboard/delete/freeboard/" + boardNo;
	}
}
//---------------------------------------------------------------------
// 그룹게시판 게시글 삭제
//---------------------------------------------------------------------
function groupboardDelete(boardNo) {
	if(confirm("정말 삭제 하시겠습니까?") == false){
		return false;
	} else {
		location.href = path + "/adboard/delete/groupboard/" + boardNo;
	}
}

//---------------------------------------------------------------------
// 자유게시판 공지사항 등록/수정 검사
//---------------------------------------------------------------------
function freeboardNoticeFormCheck(freeboardForm) {
	// 제목 검사
	if(freeboardForm.title.value == "") {
		alert("제목을 입력하세요.");
		freeboardForm.title.focus();
		return false;
	}
	// 내용 검사
	if(document.getElementById("content").value.length == 0) {
		alert("내용을 입력하세요.");
		freeboardForm.content.focus();
		return false;
	}
	freeboardForm.submit();
}

//---------------------------------------------------------------------
// 클래스게시판 댓글 삭제
//---------------------------------------------------------------------
function classboardCommentDelete(commentNo) {
	if(confirm("정말 삭제 하시겠습니까?") == false){
		return false;
	} else {
		location.href = path + "/adboard/deleteComment/classboard/" + commentNo;
	}
}
//---------------------------------------------------------------------
// 자유게시판 댓글 삭제
//---------------------------------------------------------------------
function freeboardCommentDelete(commentNo) {
	if(confirm("정말 삭제 하시겠습니까?") == false){
		return false;
	} else {
		location.href = path + "/adboard/deleteComment/freeboard/" + commentNo;
	}
}
//---------------------------------------------------------------------
// 그룹게시판 댓글 삭제
//---------------------------------------------------------------------
function groupboardCommentDelete(commentNo) {
	if(confirm("정말 삭제 하시겠습니까?") == false){
		return false;
	} else {
		location.href = path + "/adboard/deleteComment/groupboard/" + commentNo;
	}
}

//---------------------------------------------------------------------
// 게시글 목록 키워드 검색
//---------------------------------------------------------------------
function searchAdminBoard(keyword, viewTable, searchCode) {
	// 검색어가 입력되었는지 확인
	if(keyword != ""){
		location.href=path+"/adboard/search/"+searchCode+"/"+keyword+"/"+viewTable;
	} else {
		alert("검색어를 입력해주세요.");
		return false;
	}
}
//---------------------------------------------------------------------
// 댓글 목록 키워드 검색
//---------------------------------------------------------------------
function searchAdminComment(keyword, viewTable, searchCode) {
	// 검색어가 입력되었는지 확인
	if(keyword != ""){
		location.href=path+"/adboard/comment/search/"+searchCode+"/"+keyword+"/"+viewTable;
	} else {
		alert("검색어를 입력해주세요.");
		return false;
	}
}