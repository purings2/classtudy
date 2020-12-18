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