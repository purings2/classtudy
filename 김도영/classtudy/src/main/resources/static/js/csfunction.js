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
// 회원가입 검사
//---------------------------------------------------------------------
function registerCheckForm(memberForm)
{
	// 아이디 검사
	/*
	if(memberForm.memberId.value == "") {
		alert("아이디를 입력하세요.");
		document.memberForm.memberId.focus();
		return false;
	}
	if(isAlphaNumCheck(memberForm.memberId.value) == false) {
		alert("아이디는 숫자와 영문자만 가능합니다.");
		document.memberForm.memberId.focus();
		return false;
	}
	if( (memberForm.memberId.value.length < 4) || (memberForm.memberId.value.length > 10)) {
		alert("아이디는 4~10자리로만 가능합니다.");
		memberForm.memberId.focus();
		return false;
	}
	*/
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
	var bf = /[0-9]{4}-[0-9]{2}-[0-9]{2}/; //지정된 양식(XXXX-XX-XX)
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
	// 회원가입 동의 필요할 경우 수정
	/*
	if(memberForm.registerYn[0].checked == false) {
	//if(memberForm.registerYn.value[0] != "Y") {
		alert("회원가입 동의를 해야 가입할 수 있습니다.");
		memberForm.registerYn.focus();
		return;
	}
	
	if(memberForm.is_subscribed.checked == false) {
		alert("개인정보 수집 및 이용에 동의해야 가입 할 수 있습니다.");
		memberForm.is_subscribed.focus();
		return;
	}
	*/
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
	//document.memberForm.submit();
	//memberForm.setAttribute("charset", "UTF-8");
	//memberForm.setAttribute("method", "Post");
	//memberForm.setAttribute("action", "/member/memberUpdate");
	memberForm.submit();
}

//---------------------------------------------------------------------
// TIL 작성 검사
//---------------------------------------------------------------------
function tilCheckForm(classboardForm)
{
	// 아이디와 강의번호 검사
	if(classboardForm.writer.value == "" || classboardForm.lectureNo.value == "") {
		alert("아이디와 강의번호를 받아올 수 없습니다.");
		return false;
	}
	// 카테고리 검사
	if( !(classboardForm.category.value == "질문" || classboardForm.category.value == "클래스" || classboardForm.category.value == "TIL") ) {
		alert("인식할 수 없는 말머리 값입니다.");
		return false;
	}
	// 제목 검사
	if(classboardForm.title.value == "") {
		alert("제목을 입력하세요.");
		classboardForm.title.focus();
		return false;
	}
	// 내용 검사
	if(document.getElementById("content").value.length == 0) {
		alert("내용을 입력하세요.");
		memberForm.content.focus();
		return false;
	}
	classboardForm.submit();
}
//---------------------------------------------------------------------
// 게시글 수정 검사
//---------------------------------------------------------------------
function classboardCheckForm(classboardForm)
{
	// 카테고리 검사
	if( !(classboardForm.category.value == "질문" || classboardForm.category.value == "클래스" || classboardForm.category.value == "TIL") ) {
		alert("인식할 수 없는 말머리 값입니다.");
		return false;
	}
	// 제목 검사
	if(classboardForm.title.value == "") {
		alert("제목을 입력하세요.");
		classboardForm.title.focus();
		return false;
	}
	// 내용 검사
	if(document.getElementById("content").value.length == 0) {
		alert("내용을 입력하세요.");
		memberForm.content.focus();
		return false;
	}
	classboardForm.submit();
}

//---------------------------------------------------------------------
// 게시글 좋아요 - 좋아요 버튼이 눌렸을 경우
//---------------------------------------------------------------------
function likeBoard(boardForm) {
	// 자신이 작성한 글은 좋아요를 누를 수 없다.
	// 게시글의 작성자와 로그인한 사람의 아이디 확인
	if(boardForm.writer.value == boardForm.memberId.value) {
		alert("본인의 글은 좋아요를 누를 수 없습니다.");
		return false;
	}
	// 해당 게시글에 좋아요를 이미 눌렀는지 확인
	if(document.getElementById("likeBtn").value == "Y"){
		//alert("이미 좋아요를 누른 게시글입니다.");
		if(confirm("이미 좋아요를 누른 게시글입니다.\n좋아요를 취소하시겠습니까?") == false){
			return false;
		} else {
			// 해당 게시글의 좋아요를 취소한다.
			$.ajax({
				url: 	"/class/deleteLike/",
				type: 	"post",
				dataType: "json",
				data: 	{"boardNo" : boardForm.boardNo.value, "memberId" : boardForm.memberId.value},
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
			url: 	"/class/like/",
			type: 	"post",
			dataType: "json",
			data: 	{"boardNo" : boardForm.boardNo.value, "memberId" : boardForm.memberId.value},
			success: function(data) {
					document.getElementById("likeBtn").value = "Y";
					document.getElementById("likeBtn").style.backgroundColor = "#888888";
					document.getElementById("likeBtn").style.color = "#ffffff";
					document.getElementById("likeBtn").innerHTML
						= '<span class="glyphicon glyphicon-thumbs-up"></span>&nbsp;좋아요&nbsp;' + data + '';
				}
		});
	}
}

//---------------------------------------------------------------------
// 게시글 좋아요 여부 확인
//---------------------------------------------------------------------
function checkLikes(boardNo, memberId) {
	// 좋아요 테이블에 좋아요 목록이 있는지 확인
	// 게시글번호, 로그인한 아이디가 모두 같아야 한다.
	$.ajax({
		url: 	"/class/likeCheck/",
		type: 	"post",
		dataType: "json",
		data: 	{"boardNo"  : boardNo, "memberId" : memberId},
		success: function(data) {
				if(data == 1) { // 좋아요 누른 게시글이면 좋아요 버튼 변경
					//alert("좋아요 했음");
					document.getElementById("likeBtn").value = "Y";
					document.getElementById("likeBtn").style.backgroundColor = "#888888";
					document.getElementById("likeBtn").style.color = "#ffffff";
				} else {
					//alert("좋아요 안했음");
				}
			}
	});
}
//---------------------------------------------------------------------
// Freeboard 게시글 작성 검사
//---------------------------------------------------------------------
function fbCheckForm(freeboardForm)
{
	// 아이디와 검사
	if(freeboardForm.writer.value == "" ) {
		alert("아이디와 강의번호를 받아올 수 없습니다.");
		return false;
	}
	// 카테고리 검사
	if( !(freeboardForm.category.value == "이야기" || freeboardForm.category.value == "공지사항" || freeboardForm.category.value == "질문" || freeboardForm.category.value == "정보" || freeboardForm.category.value == "그룹홍보" )) {
		alert("인식할 수 없는 말머리 값입니다.");
		return false;
	}
	// 제목 검사
	if(freeboardForm.title.value == "") {
		alert("제목을 입력하세요.");
		classboardForm.title.focus();
		return false;
	}
	// 내용 검사
	if(document.getElementById("content").value.length == 0) {
		alert("내용을 입력하세요.");
		memberForm.content.focus();
		return false;
	}
	freeboardForm.submit();
}

//---------------------------------------------------------------------
// freeboard 게시글 수정 검사
//---------------------------------------------------------------------
function freeboardCheckForm(freeboardForm)
{
	// 카테고리 검사
	if( !(freeboardForm.category.value == "이야기" || freeboardForm.category.value == "공지사항" || freeboardForm.category.value == "질문" || freeboardForm.category.value == "정보" || freeboardForm.category.value == "그룹홍보" )) {
		alert("인식할 수 없는 말머리 값입니다.");
		return false;
	}
	// 제목 검사
	if(freeboardForm.title.value == "") {
		alert("제목을 입력하세요.");
		classboardForm.title.focus();
		return false;
	}
	// 내용 검사
	if(document.getElementById("content").value.length == 0) {
		alert("내용을 입력하세요.");
		memberForm.content.focus();
		return false;
	}
	freeboardForm.submit();
}

//---------------------------------------------------------------------
// Freeboard 적용
//---------------------------------------------------------------------
// Freeboard 게시글 작성 검사
//---------------------------------------------------------------------
function fbCheckForm(freeboardForm)
{
	// 아이디와 검사
	if(freeboardForm.writer.value == "" ) {
		alert("아이디와 강의번호를 받아올 수 없습니다.");
		return false;
	}
	// 카테고리 검사
	if( !(freeboardForm.category.value == "이야기" || freeboardForm.category.value == "공지사항" || 
			freeboardForm.category.value == "질문" || freeboardForm.category.value == "정보" || 
			freeboardForm.category.value == "그룹홍보" )) {
		alert("인식할 수 없는 말머리 값입니다.");
		return false;
	}
	// 제목 검사
	if(freeboardForm.title.value == "") {
		alert("제목을 입력하세요.");
		classboardForm.title.focus();
		return false;
	}
	// 내용 검사
	if(document.getElementById("content").value.length == 0) {
		alert("내용을 입력하세요.");
		memberForm.content.focus();
		return false;
	}
	freeboardForm.submit();
}
//---------------------------------------------------------------------
// freeboard 게시글 수정 검사
//---------------------------------------------------------------------
function freeboardCheckForm(freeboardForm)
{
	// 카테고리 검사
	if( !(freeboardForm.category.value == "이야기" || freeboardForm.category.value == "공지사항" || 
			freeboardForm.category.value == "질문" || freeboardForm.category.value == "정보" || 
			freeboardForm.category.value == "그룹홍보" )) {
		alert("인식할 수 없는 말머리 값입니다.");
		return false;
	}
	// 제목 검사
	if(freeboardForm.title.value == "") {
		alert("제목을 입력하세요.");
		classboardForm.title.focus();
		return false;
	}
	// 내용 검사
	if(document.getElementById("content").value.length == 0) {
		alert("내용을 입력하세요.");
		memberForm.content.focus();
		return false;
	}
	freeboardForm.submit();
}
//---------------------------------------------------------------------
// 게시글 좋아요 - 좋아요 버튼이 눌렸을 경우
//---------------------------------------------------------------------
function likefBoard(boardForm) {
	// 자신이 작성한 글은 좋아요를 누를 수 없다.
	// 게시글의 작성자와 로그인한 사람의 아이디 확인
	if(boardForm.writer.value == boardForm.memberId.value) {
		alert("본인의 글은 좋아요를 누를 수 없습니다.");
		return false;
	}
	// 해당 게시글에 좋아요를 이미 눌렀는지 확인
	if(document.getElementById("likeBtn").value == "Y"){
		//alert("이미 좋아요를 누른 게시글입니다.");
		if(confirm("이미 좋아요를 누른 게시글입니다.\n좋아요를 취소하시겠습니까?") == false){
			return false;
		} else {
			// 해당 게시글의 좋아요를 취소한다.
			$.ajax({
				url: 	"/community/deleteLike/",
				type: 	"post",
				dataType: "json",
				data: 	{"boardNo" : boardForm.boardNo.value, "memberId" : boardForm.memberId.value},
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
			url: 	"/community/like/",
			type: 	"post",
			dataType: "json",
			data: 	{"boardNo" : boardForm.boardNo.value, "memberId" : boardForm.memberId.value},
			success: function(data) {
					document.getElementById("likeBtn").value = "Y";
					document.getElementById("likeBtn").style.backgroundColor = "#888888";
					document.getElementById("likeBtn").style.color = "#ffffff";
					document.getElementById("likeBtn").innerHTML
						= '<span class="glyphicon glyphicon-thumbs-up"></span>&nbsp;좋아요&nbsp;' + data + '';
				}
		});
	}
}

//---------------------------------------------------------------------
// 게시글 좋아요 여부 확인
//---------------------------------------------------------------------
function checkfbLikes(boardNo, memberId) {
	// 좋아요 테이블에 좋아요 목록이 있는지 확인
	// 게시글번호, 로그인한 아이디가 모두 같아야 한다.
	$.ajax({
		url: 	"/community/likeCheck/",
		type: 	"post",
		dataType: "json",
		data: 	{"boardNo"  : boardNo, "memberId" : memberId},
		success: function(data) {
				if(data == 1) { // 좋아요 누른 게시글이면 좋아요 버튼 변경
					//alert("좋아요 했음");
					document.getElementById("likeBtn").value = "Y";
					document.getElementById("likeBtn").style.backgroundColor = "#888888";
					document.getElementById("likeBtn").style.color = "#ffffff";
				} else {
					//alert("좋아요 안했음");
				}
			}
	});
}