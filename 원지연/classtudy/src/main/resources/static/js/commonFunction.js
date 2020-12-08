// 현재 path 경로 저장
var path = document.getElementById("nowPath").value;

//---------------------------------------------------------------------
// 각종 검사
//---------------------------------------------------------------------
// 최상위 체크 로직(chars로 넘긴 값이 있다면 false)
function containsChars(input, chars) {
	for (var inx = 0; inx < input.length; inx++) {
		if (chars.indexOf(input.charAt(inx)) != -1)
			return true;
	}
	return false;
}
// 최상위 체크 로직(chars로 넘긴 값이 있다면 true)
function containsCharsOnly(input, chars) {
	for (var inx = 0; inx < input.length; inx++) {
		if (chars.indexOf(input.charAt(inx)) == -1)
			return false;
	}
	return true;
}
// 숫자 체크
function isNumberCheck ( inputVal ) {
	var var_normalize = /[^0-9]/gi; //정규식
	if (var_normalize.test(inputVal) == true) return false;
	else return true;
}
function isNum(input) {
	var chars = "0123456789";
	return containsCharsOnly(input, chars);
}
// 영대소문자 및 숫자 체크
function isAlphaNumCheck(input) { 
	var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	return containsCharsOnly(input, chars);
}
// 숫자 및 특수문자 체크
function isNameCheck(input) {
	var chars = "0123456789~!@#$%^&*()_-+=|{}[]<>,./?";
	return containsChars(input, chars);
}
// 생년월일에 대한 유효성 검사
// max : 현재 날짜, min : 1900-01-01
function dateValidCheck(input, max) {
	// input에서 년, 월, 일 분리
	var birthSplit 	= input.split('-');
	var maxSplit 	= max.split('-');
	// 문자열을 숫자로 바꿔서 저장
	var year 	= Number(birthSplit[0]); //년
	var month 	= Number(birthSplit[1]); //월
	var day 	= Number(birthSplit[2]); //일
	// 윤년 여부 검사
	var isLeap = false;
	if(year % 4 == 0) {
		isLeap = true;
		if(year % 100 == 0) { isLeap = false; }
		if(year % 400 == 0) { isLeap = true;  }
	}
	// 년월일 범위 검사
	var dayOfMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
	if(year < 1900 || year > maxSplit[0]) { return false; }
	if(year == maxSplit[0] && month > maxSplit[1]) { return false; }
	if(year == maxSplit[0] && month == maxSplit[1] && day > maxSplit[2]) { return false; }
	if(month < 1 || month > 12) { return false; }
	// 윤년일 때
	if(isLeap && month == 2) {
		if(day < 1 || day > dayOfMonth[month-1] + 1) { return false; }
	} else {
		if(day < 1 || day > dayOfMonth[month-1]) { return false; }
	}
	return true;
}
//---------------------------------------------------------------------
// 아이디 중복 검사
// 입력한 아이디에 해당하는 정보가 있는지 검사하고, 결과값(정수)을 리턴받는다.
//---------------------------------------------------------------------
function dupCheck(memberForm) {
	if(memberForm.memberId.value == "") {
		document.getElementById("checkMsg").innerHTML 
			= '<p style="color:red">아이디를 입력하세요.</p>';
		//alert("아이디를 입력하세요.");
		memberForm.memberId.focus();
		return false;
	}
	if(isAlphaNumCheck(memberForm.memberId.value) == false) {
		document.getElementById("checkMsg").innerHTML 
			= '<p style="color:red">아이디는 숫자와 영문자만 가능합니다.</p>';
		//alert("아이디는 숫자와 영문자만 가능합니다.");
		memberForm.memberId.focus();
		return false;
	}
	if( (memberForm.memberId.value.length < 4) || (memberForm.memberId.value.length > 10)) {
		document.getElementById("checkMsg").innerHTML 
			= '<p style="color:red">아이디는 4~10자리로만 가능합니다.</p>';
		//alert("아이디는 4~10자리로만 가능합니다.");
		memberForm.memberId.focus();
		return false;
	}
	$.ajax({
		url: "/member/idCheck",
		type: "post",
		dataType: "json",
		data: {"memberId" : memberForm.memberId.value},	
		success: function(data) {
					if(data == 1) {
						document.getElementById("checkMsg").innerHTML 
							= '<p style="color:red">이미 사용중인 아이디입니다.<br>다른 아이디를 입력하세요.</p>';
						memberForm.idCheck.setAttribute("value", "N");
						memberForm.memberId.setAttribute("value", "");
						memberForm.memberId.focus();
					} else if(data == 0) {
						document.getElementById("checkMsg").innerHTML 
							= '<p style="color:blue">사용가능한 아이디입니다!</p>';
						memberForm.idCheck.setAttribute("value", "Y");
					}
				}
	});
}

//---------------------------------------------------------------------
// 강의번호 찾기
//---------------------------------------------------------------------
function searchLectureNo() {
	// 강의번호 검색창 열기
	// window.open("open할 window", "자식창 이름", "팝업창 옵션");
	var openWin = window.open("/member/searchLecture", "강의번호 검색",
			"width=500, height=400, resizable=no");
}

//---------------------------------------------------------------------
// 회원가입 검사
//---------------------------------------------------------------------
function registerCheckForm(memberForm) {
	if( memberForm.idCheck.value == 'N') {
		alert("아이디 중복검사를 해주세요.");
		document.memberForm.memberId.focus();
		return false;
	}
	// 비밀번호 검사
	if(memberForm.passwd.value == "") {
		alert("비밀번호를 입력하세요.");
		memberForm.passwd.focus();
		return false;
	}
	if(isAlphaNumCheck(memberForm.passwd.value) == false) {
		alert("비밀번호는 숫자와 영문자만 가능합니다.");
		document.memberForm.passwd.focus();
		return false;
	}
	if( (memberForm.passwd.value.length < 4) || (memberForm.passwd.value.length > 10)) {
		alert("비밀번호는 4~10자리로만 가능합니다.");
		memberForm.passwd.focus();
		return false;
	}
	if(memberForm.passwdCheck.value == "") {
		alert("비밀번호확인을 입력하세요.");
		memberForm.passwdCheck.focus();
		return false;
	}
	if( (memberForm.passwd.value) != (memberForm.passwdCheck.value) ) {
		alert("비밀번호와 비밀번호 확인이 다릅니다.");
		memberForm.passwdCheck.focus();
		return false;
	}
	// 이름 검사
	if(memberForm.name.value == "") {
		alert("이름을 입력하세요.");
		memberForm.name.focus();
		return false;
	}
	if(isNameCheck(memberForm.name.value) == true) {
		alert("이름에 숫자나 특수문자를 입력할 수 없습니다.");
		document.memberForm.name.focus();
		return false;
	}
	// 생년월일 검사
	if(memberForm.dateOfBirth.value == "") {
		alert("생년월일을 입력하세요.");
		memberForm.dateOfBirth.focus();
		return false;
	}
	// 입력 받은 생년월일 값이 정해진 양식과 일치하는지 검사
	var bf = /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/; //지정된 양식(XXXX-XX-XX)
	if( !(bf.test(memberForm.dateOfBirth.value)) ) {
		alert("생년월일을 형식에 맞게 입력해주세요.\n<예시> 1990-01-01");
		return false;
	}
	// 생년월일 유효성 검사
	if( !(dateValidCheck(memberForm.dateOfBirth.value, memberForm.dateOfBirth.max)) ) {
		alert("생년월일이 유효하지 않습니다.");
		return false;
	}
	/*
	// 입력 받은 생년월일 값이 정해진 양식과 일치하는지 검사
	var birthSplit = (memberForm.dateOfBirth.value).split('-');
	// 문자열을 숫자로 바꿔서 저장
	var year 	= birthSplit[0] * 1; //년
	var month 	= birthSplit[1] * 1; //월
	var day 	= birthSplit[2] * 1; //일
	if(birthSplit[0].length != 4 || birthSplit[1].length != 2 || birthSplit[2].length != 2 
		|| year < 1900 || year > 9999 || month < 1 || month > 12 || day < 1 || day > 31) {
		alert("생년월일을 지정된 형식으로 입력해주세요.\n<예시> 1990-01-01");
		return false;
	}
	*/
	/*
	if(memberForm.birthYear.value == "" ||
		memberForm.birthMonth.value == "" ||
		memberForm.birthMonth.value == "") {
		alert("생년월일을 모두 선택하세요.");
		memberForm.birthYear.focus();
		return false;
	}
	*/
	// 성별 검사
	if(memberForm.gender.value == "") {
		alert("성별을 선택하세요.");
		memberForm.gender.focus();
		return false;
	}	
	// 전화번호 검사
	if(memberForm.tel1.value == "" ||
		memberForm.tel2.value == "" ||
		memberForm.tel3.value == "") {
		alert("전화번호를 모두 입력하세요.");
		memberForm.tel1.focus();
		return false;
	}
	if (isNumberCheck(memberForm.tel2.value) == false) {
		alert("전화번호는 숫자만 입력 가능합니다.");
		memberForm.tel2.focus();
		return false;
	}
	if (memberForm.tel2.value.length < 3) {
		alert("전화번호가 너무 짧습니다.");
		memberForm.tel2.focus();
		return false;
	}
	if (isNumberCheck(memberForm.tel3.value) == false) {
		alert("전화번호는 숫자만 입력 가능합니다.");
		memberForm.tel3.focus();
		return false;
	}
	if (memberForm.tel3.value.length < 4) {
		alert("전화번호가 너무 짧습니다.");
		memberForm.tel3.focus();
		return false;
	}
	// 주소 검사
	if(memberForm.zipcode.value == "") {
		alert("우편번호를 입력하세요.");
		memberForm.zipcode.focus();
		return false;
	}
	if(memberForm.address.value == "") {
		alert("주소를 입력하세요.");
		memberForm.address.focus();
		return false;
	}
	// 상세주소도 null 비허용할 경우 수정
	/*
	if(memberForm.addressDetail.value == "") {
		alert("상세주소를 입력하세요.");
		memberForm.addressDetail.focus();
		return;
	}
	*/
	// 이메일 검사
	if(memberForm.email.value == "") {
		alert("이메일을 입력하세요.");
		memberForm.email.focus();
		return false;
	}
	// 입력 받은 이메일이 정상적인 형태인지 검사
	var format = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_\.-]+)$/;
	if( !(format.test(memberForm.email.value)) ) {
		alert("이메일 형식이 올바르지 않습니다.");
		return false;
	}
	// 강의번호 검사
	if(memberForm.lectureNo.value == "") {
		alert("강의번호를 입력하세요.");
		memberForm.lectureNo.focus();
		return false;
	}
	//document.memberForm.submit();
	//memberForm.setAttribute("charset", "UTF-8");
	//memberForm.setAttribute("method", "Post");
	//memberForm.setAttribute("action", "/member/register");
	memberForm.submit();
}

//---------------------------------------------------------------------
// 회원정보 수정 검사
//---------------------------------------------------------------------
function updateCheckForm(memberForm)
{
	//alert("회원정보 수정 검사 시작");
	
	// 비밀번호 검사
	if(memberForm.passwd.value == "") {
		alert("비밀번호를 입력하세요.");
		memberForm.passwd.focus();
		return false;
	}
	if(isAlphaNumCheck(memberForm.passwd.value) == false) {
		alert("비밀번호는 숫자와 영문자만 가능합니다.");
		document.memberForm.passwd.focus();
		return false;
	}
	if( (memberForm.passwd.value.length < 4) || (memberForm.passwd.value.length > 10)) {
		alert("비밀번호는 4~10자리로만 가능합니다.");
		memberForm.passwd.focus();
		return false;
	}
	if(memberForm.passwdCheck.value == "") {
		alert("비밀번호확인을 입력하세요.");
		memberForm.passwdCheck.focus();
		return false;
	}
	if( (memberForm.passwd.value) != (memberForm.passwdCheck.value) ) {
		alert("비밀번호와 비밀번호 확인이 다릅니다.");
		memberForm.passwdCheck.focus();
		return false;
	}
	// 이름 검사
	if(memberForm.name.value == "") {
		alert("이름을 입력하세요.");
		memberForm.name.focus();
		return false;
	}
	if(isNameCheck(memberForm.name.value) == true) {
		alert("이름에 숫자나 특수문자를 입력할 수 없습니다.");
		document.memberForm.name.focus();
		return false;
	}
	// 생년월일 검사
	if(memberForm.dateOfBirth.value == "") {
		alert("생년월일을 모두 선택하세요.");
		memberForm.dateOfBirth.focus();
		return false;
	}
	// 입력 받은 생년월일 값이 정해진 양식과 일치하는지 검사
	var bf = /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/; //지정된 양식(XXXX-XX-XX)
	if( !(bf.test(memberForm.dateOfBirth.value)) ) {
		alert("생년월일을 형식에 맞게 입력해주세요.\n<예시> 1990-01-01");
		return false;
	}
	// 생년월일 유효성 검사
	if( !(dateValidCheck(memberForm.dateOfBirth.value, memberForm.dateOfBirth.max)) ) {
		alert("생년월일이 유효하지 않습니다.");
		return false;
	}
	// 성별 검사
	if(memberForm.gender.value == "") {
		alert("성별을 선택하세요.");
		memberForm.gender.focus();
		return false;
	}	
	// 전화번호 검사
	if(memberForm.tel1.value == "" ||
		memberForm.tel2.value == "" ||
		memberForm.tel3.value == "") {
		alert("전화번호를 모두 입력하세요.");
		memberForm.tel1.focus();
		return false;
	}
	if (isNumberCheck(memberForm.tel2.value) == false) {
		alert("전화번호는 숫자만 입력 가능합니다.");
		memberForm.tel2.focus();
		return false;
	}
	if (memberForm.tel2.value.length < 3) {
		alert("전화번호가 너무 짧습니다.");
		memberForm.tel2.focus();
		return false;
	}
	if (isNumberCheck(memberForm.tel3.value) == false) {
		alert("전화번호는 숫자만 입력 가능합니다.");
		memberForm.tel3.focus();
		return false;
	}
	if (memberForm.tel3.value.length < 4) {
		alert("전화번호가 너무 짧습니다.");
		memberForm.tel3.focus();
		return false;
	}
	// 주소 검사
	if(memberForm.zipcode.value == "") {
		alert("우편번호를 입력하세요.");
		memberForm.zipcode.focus();
		return false;
	}
	if(memberForm.address.value == "") {
		alert("주소를 입력하세요.");
		memberForm.address.focus();
		return false;
	}
	// 이메일 검사
	if(memberForm.email.value == "") {
		alert("이메일을 입력하세요.");
		memberForm.email.focus();
		return false;
	}
	// 입력 받은 이메일이 정상적인 형태인지 검사
	var format = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_\.-]+)$/;
	if( !(format.test(memberForm.email.value)) ) {
		alert("이메일 형식이 올바르지 않습니다.");
		return false;
	}
	//document.memberForm.submit();
	//memberForm.setAttribute("charset", "UTF-8");
	//memberForm.setAttribute("method", "Post");
	//memberForm.setAttribute("action", "/member/memberUpdate");
	memberForm.submit();
}

//---------------------------------------------------------------------
// 회원 탈퇴 검사
//---------------------------------------------------------------------
function deleteCheckForm(memberForm)
{
	// 비밀번호 검사
	if(memberForm.passwd.value == "") {
		alert("비밀번호를 입력하세요.");
		memberForm.passwd.focus();
		return false;
	}
	if(memberForm.passwdCheck.value == "") {
		alert("비밀번호확인을 입력하세요.");
		memberForm.passwdCheck.focus();
		return false;
	}
	if( (memberForm.passwd.value) != (memberForm.passwdCheck.value) ) {
		alert("비밀번호와 비밀번호 확인이 다릅니다.");
		memberForm.passwdCheck.focus();
		return false;
	}
	if(confirm("정말 탈퇴하시겠습니까?") == false){
		return false;
	}
	memberForm.submit();
}

//---------------------------------------------------------------------
// 새로운 알림이 있는지 확인
//---------------------------------------------------------------------
function notiLoad() {
	var memberId = document.getElementById("loginId").value;
	$.ajax({
		url:	"/noti/load/",
		type:	"post",
		data:	{"memberId": memberId},
		success: function(data) {
			var notiBadge = '';
			notiBadge += '<a class="dropdown-toggle" data-toggle="dropdown" href="#" onclick="notiList(\'' + memberId + '\')">알림 ';
			if (data > 0) {
				notiBadge += '<span class="badge" style="background-color: #FFB132;">' + data + '</span></a>';
			} else {
				notiBadge += '<span class="badge">' + data + '</span></a>';
			}
			notiBadge += '<ul class="dropdown-menu" id="notiList"></ul>';
			$("#notiBadgeArea").html(notiBadge);
		}
	});
}

//---------------------------------------------------------------------
// 알림 목록 보기
//---------------------------------------------------------------------
function notiList(memberId) {
	//alert("notiList 실행");
	$.ajax({
		url:	"/noti/list/" + memberId,
		type:	"post",
		data:	{"memberId": memberId},
		success: function(data) {
			var str = '';
			if (data.length < 1) { //새로운 알림이 없을 때
				str += '<div class="col-sm-12" align="center">새로운 알림이 없습니다.</div>';
			} else {
				$.each(data, function(key, value){
					if (key == 0) {
						str += '<div class="col-sm-12 col-xs-12">';
					} else {
						str += '<div class="col-sm-12 col-xs-12" style="border-top: 1px solid #dddddd; margin-top: 10px; padding-top: 10px;">';
					}
					str += '<div class="col-sm-10 col-xs-10" align="left">' + value.content + '</div>';
					str += '<div class="col-sm-2 col-xs-2">';
					str += '<button class="btn btn-sm btn-default" onclick="notiCheck(' + value.notiNo + ');">확인</button>';
					str += '</div></div>';
				});
				str += '<div class="col-sm-12" align="center" style="padding-top: 10px;">'
				str += '<button class="btn btn-warning" onclick="notiCheckAll(\'' + memberId + '\');">모두 확인</button>'
				str += '</div>';
			}
			$("#notiList").html(str);
		}
	});
	//alert("notiList 끝");
}

//---------------------------------------------------------------------
// 알림 확인
//---------------------------------------------------------------------
function notiCheck(notiNo) {
	$.ajax({
		url: 	"/noti/check/" + notiNo,
		type: 	"post",
		dataType: "json",
		data: 	{"notiNo" : notiNo},
		success: function(data) {
			if(data == 1) { notiLoad(); } //알림 확인 후 알림 뱃지를 다시 출력
		}
	});
}

//---------------------------------------------------------------------
//알림 모두 확인
//---------------------------------------------------------------------
function notiCheckAll(memberId) {
	$.ajax({
		url: 	"/noti/checkAll/",
		type: 	"post",
		dataType: "json",
		data: 	{"memberId" : memberId},
		success: function(data) {
			if(data > 0) { notiLoad(); } //알림 확인 후 알림 뱃지를 다시 출력
		}
	});
}

//---------------------------------------------------------------------
// 게시글 조회수 확인 후 알림 발송
//---------------------------------------------------------------------
function notiToViews(views) {
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
		notiContent += '<a href="' + path + '/class/detail/' + boardNo + '">게시글</a>이 ';
		notiContent += views + '회 이상 조회되었습니다.';
		//alert(notiContent);
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
// 게시글 좋아요수 확인 후 알림 발송
//---------------------------------------------------------------------
function notiToLikes(likes) {
	var NUM1 = 10;
	var NUM2 = 50;
	// 좋아요수가 NUM이면 알림을 보낸다. 
	if (likes == NUM1 || likes == NUM2) {
		// ----- 알림 보내기 -----
		// 게시글 번호와 작성자 저장
		var boardNo = document.getElementById("boardNo").value;
		var writer = document.getElementById("writer").value;
		// 작성자에게 보낼 알림 텍스트를 만든다.
		var notiContent = '';
		notiContent += '회원님의 ';
		notiContent += '<a href="' + path + '/class/detail/' + boardNo + '">게시글</a>을 ';
		notiContent += likes + '명 이상 좋아합니다.';
		//alert(notiContent);
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