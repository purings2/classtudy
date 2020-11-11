//---------------------------------------------------------------------
// 아이디 중복 확인		
//---------------------------------------------------------------------
function confirmId()
{
	//alert("confirmId() 시작");
	if(document.memInsForm.id.value == "") {
		alert("아이디를 입력하십시오.");
		return;
	}
	url = "confirmId.jsp?id=" + document.memInsForm.id.value;
	
	window.open(url, "confirm", "toolbar=no, location=no, \
				status=no, menubar=no, scrollbars=no, \
				resizable=no, width=500, height=200, left=500 top=100");
}


//---------------------------------------------------------------------
// 각종 검사
//---------------------------------------------------------------------
function isNumberCheck ( inputVal ) 
{
	var var_normalize = /[^0-9]/gi; //정규식
	if (var_normalize.test(inputVal) == true) return false;
	else return true;
}

//최상위 체크 로직(chars로 넘긴 값이 있다면 false)
function containsChars(input, chars) 
{
	for (var inx = 0; inx < input.length; inx++) {
		if (chars.indexOf(input.charAt(inx)) != -1)
			return true;
	}
	return false;
}
//최상위 체크 로직(chars로 넘긴 값이 있다면 true)
function containsCharsOnly(input, chars) 
{
	for (var inx = 0; inx < input.length; inx++) {
		if (chars.indexOf(input.charAt(inx)) == -1)
			return false;
	}
	return true;
}
//숫자 체크
function isNum(input) 
{
	var chars = "0123456789";
	return containsCharsOnly(input, chars);
}

//영숫자 판별
function isAlphaNumCheck(input) 
{ 
	var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	return containsCharsOnly(input, chars);
}

//이름체크
function isNameCheck(input) 
{
	var chars = "0123456789~!@#$%^&*()_-+=|{}[]<>,./?";
	return containsCharsOnly(input, chars);
}

//---------------------------------------------------------------------
//회원등록 검사
//---------------------------------------------------------------------
function memberInsertCheckForm(memInsForm)
{

	if(!memInsForm.id.value) {
		alert("고객 id를 입력하십시요.");
		document.memInsForm.id.focus();
		return;
	}
	if(isAlphaNumCheck(memInsForm.id.value) == false) {
		alert("고객 id는 숫자와 영문자만 가능합니다.");
		document.memInsForm.id.focus();
		return;
	}
    if( (memInsForm.id.value.length < 4) || (memInsForm.id.value.length > 10)) {
        alert("\n고객 id는 4자리에서 10자리를 입력하셔야 합니다.");
        memInsForm.id.focus();
		return;
    }

	if(!memInsForm.passwd.value) {
	  alert("비밀번호를 입력하십시오");
	  memInsForm.passwd.focus();
		return;
	}
	if(isAlphaNumCheck(memInsForm.passwd.value) == false) {
		alert("비밀번호는 숫자와 영문자만 가능합니다.");
		document.memInsForm.passwd.focus();
		return;
	}
    if( (memInsForm.passwd.value.length < 4) || (memInsForm.passwd.value.length > 10)) {
        alert("\n비밀번호는 4자리에서 10자리를 입력하셔야 합니다.");
        memInsForm.passwd.focus();
		return;
    }
	
	if(!memInsForm.repasswd.value) {
	  alert("비밀번호확인을 입력하십시오");
	  memInsForm.repasswd.focus();
		return;
	}
	if(isAlphaNumCheck(memInsForm.repasswd.value) == false) {
		alert("비밀번호확인은 숫자와 영문자만 가능합니다.");
		document.memInsForm.repasswd.focus();
		return;
	}
    if( (memInsForm.repasswd.value.length < 4) || (memInsForm.repasswd.value.length > 11)) {
        alert("\n비밀번호확인은 4자리에서 10자리를 입력하셔야 합니다.");
        memInsForm.repasswd.focus();
		return;
    }
    if( (memInsForm.passwd.value) != (memInsForm.repasswd.value) ) {
        alert("\n비밀번호와 비밀번호확인이 틀립니다.");
        memInsForm.repasswd.focus();
		return;
    }

    
    
	if(!memInsForm.name.value) {
	  alert("이름을 입력하십시오");
	  memInsForm.name.focus();
		return;
	}
	if(isNameCheck(memInsForm.name.value) == true) {
		alert("이름에는 숫자나 특수문자를 입력할 수 없습니다.");
		document.memInsForm.name.focus();
		return;
	}

	if(!memInsForm.address.value) {
		alert("주소를 입력하십시오");
		memInsForm.address.focus();
		return;
	}
	
	if(!memInsForm.tel1.value) {
		alert("전화번호를 입력하십시오");
		memInsForm.tel1.focus();
		return;
	}
		
	if(!memInsForm.tel2.value) {
		alert("전화번호 2번째 자리를 입력하십시오");
		memInsForm.tel2.focus();
		return;
	}

	if (!isNumberCheck(memInsForm.tel2.value)) {
        alert("\n전화번호 2번째 자리는 숫자만 입력 가능합니다.");
        memInsForm.tel2.focus();
		return;
    }
		
    if (memInsForm.tel2.value.length < 3) {
        alert("\n전화번호 2번째 자리는 최소 3자를 입력하셔야 합니다.");
        memInsForm.tel2.focus();
		return;
    }
    
	if(!memInsForm.tel3.value) {
		alert("전화번호 3번째 자리를 입력하십시오");
		memInsForm.tel3.focus();
		return;
	}
		
	if (!isNumberCheck(memInsForm.tel3.value)) {
        alert("\n전화번호 3번째 자리는 숫자만 입력 가능합니다.");
        memInsForm.tel3.focus();
		return;
    }
		
    if (memInsForm.tel3.value.length < 4) {
        alert("\n전화번호 3번째 자리는 4자를 입력하셔야 합니다.");
        memInsForm.tel3.focus();
		return;
    }
    
	if(memInsForm.registerYn[0].checked == false) {
	//if(thisform.registerYn.value[0] != "Y") {
		alert("\n회원가입을 하시려면 회원가입에 에 동의해주셔야 합니다.\n");
		memInsForm.registerYn.focus();
		return;
	}
	
	if(memInsForm.is_subscribed.checked == false) {
        alert("\n개인정보 수집 및 이용에 동의해주셔야 회원가입을 하실 수 있습니다.\n");
        memInsForm.is_subscribed.focus();
		return;
    }

    document.memInsForm.submit();
	//memInsForm.action = "memberInsertPro.jsp";
	//memInsForm.submit();
	
} 

//---------------------------------------------------------------------
// 회원 정보 수정/탈퇴
//---------------------------------------------------------------------
function memberUpDelCheckForm(memUpDelForm, selectVal)
{
	if(!memUpDelForm.passwd.value) {
		alert("비밀번호를 입력하십시오.0000");
		memUpDelForm.passwd.focus();
		return false;
	}
	if(isAlphaNumCheck(memUpDelForm.passwd.value) == false) {
		alert("비밀번호는 숫자와 영문자만 가능합니다.");
		memUpDelForm.passwd.focus();
		return false;
	}
	if( (memUpDelForm.passwd.value.length < 4) || (memUpDelForm.passwd.value.length > 10)) {
		alert("비밀번호는 4자리에서 10자리를 입력하셔야 합니다.");
		memUpDelForm.passwd.focus();
		return false;
	}
	
	if(!memUpDelForm.repasswd.value) {
		alert("비밀번호확인을 입력하십시오.");
		memUpDelForm.repasswd.focus();
		return false;
	}
	if(isAlphaNumCheck(memUpDelForm.repasswd.value) == false) {
		alert("비밀번호확인은 숫자와 영문자만 가능합니다.");
		memUpDelForm.repasswd.focus();
		return false;
	}
	if( (memUpDelForm.repasswd.value.length < 4) || (memUpDelForm.repasswd.value.length > 10)) {
		alert("비밀번호확인은 4자리에서 10자리를 입력하셔야 합니다.");
		memUpDelForm.repasswd.focus();
		return false;
	}
	
	if( (memUpDelForm.passwd.value) != (memUpDelForm.repasswd.value) ) {
		alert("비밀번호와 비밀번호확인이 틀립니다.");
		memUpDelForm.passwd.focus();
		return false;
	}
	
	//수정일 경우만 필드를 검사한다.
	if(selectVal == "UP")
	{
		if(!memUpDelForm.name.value) {
			alert("이름을 입력하십시오.");
			memUpDelForm.name.focus();
			return false;
		}
		if(isNameCheck(memUpDelForm.name.value) == true) {
			alert("이름에는 숫자나 특수문자를 입력할 수 없습니다.");
			document.memUpDelForm.name.focus();
			return false;
		}
		if(!memUpDelForm.address.value) {
			alert("주소를 입력하십시오.");
			memUpDelForm.address.focus();
			return false;
		}

		if(!memUpDelForm.tel1.value) {
			alert("전화번호를 입력하십시오.");
			memUpDelForm.tel1.focus();
			return false;
		}
		if(!memUpDelForm.tel2.value) {
			alert("전화번호 2번째 자리를 입력하십시오.");
			memUpDelForm.tel2.focus();
			return false;
		}
		if(isNumberCheck(memUpDelForm.tel2.value) == false) {
			alert("전화번호는 숫자만 입력 가능합니다.");
			memUpDelForm.tel2.focus();
			return false;
		}
		if(memUpDelForm.tel2.value.length < 3) {
			alert("전화번호 2번째 자리는 최소 3자를 입력하셔야 합니다.");
			memUpDelForm.tel2.focus();
			return false;
		}
		
		if(!memUpDelForm.tel3.value) {
			alert("전화번호 3번째 자리를 입력하십시오.");
			memUpDelForm.tel3.focus();
			return false;
		}
		if(isNumberCheck(memUpDelForm.tel3.value) == false) {
			alert("전화번호는 숫자만 입력 가능합니다.");
			memUpDelForm.tel3.focus();
			return false;
		}
		if(memUpDelForm.tel3.value.length < 4) {
			alert("전화번호 3번째 자리는 4자를 입력하셔야 합니다.");
			memUpDelForm.tel3.focus();
			return false;
		}
	}
	memUpDelForm.action = "memberUpDelModalForm.jsp?mode=" + selectVal;
	memUpDelForm.submit();
}


//=================================

//---------------------------------------------------------------------
// 회원 정보 수정/탈퇴
//---------------------------------------------------------------------
function userUpDelCheckForm(userUpDelForm, selectVal)
{
	alert("1111");
	if(!memUpDelForm.passwd.value) {
		alert("비밀번호를 입력하십시오.1111");
		memUpDelForm.passwd.focus();
		return false;
	}
	if(isAlphaNumCheck(memUpDelForm.passwd.value) == false) {
		alert("비밀번호는 숫자와 영문자만 가능합니다.");
		memUpDelForm.passwd.focus();
		return false;
	}
	if( (memUpDelForm.passwd.value.length < 4) || (memUpDelForm.passwd.value.length > 10)) {
		alert("비밀번호는 4자리에서 10자리를 입력하셔야 합니다.");
		memUpDelForm.passwd.focus();
		return false;
	}
	
	if(!memUpDelForm.repasswd.value) {
		alert("비밀번호확인을 입력하십시오.");
		memUpDelForm.repasswd.focus();
		return false;
	}
	if(isAlphaNumCheck(memUpDelForm.repasswd.value) == false) {
		alert("비밀번호확인은 숫자와 영문자만 가능합니다.");
		memUpDelForm.repasswd.focus();
		return false;
	}
	if( (memUpDelForm.repasswd.value.length < 4) || (memUpDelForm.repasswd.value.length > 10)) {
		alert("비밀번호확인은 4자리에서 10자리를 입력하셔야 합니다.");
		memUpDelForm.repasswd.focus();
		return false;
	}
	
	if( (memUpDelForm.passwd.value) != (memUpDelForm.repasswd.value) ) {
		alert("비밀번호와 비밀번호확인이 틀립니다.");
		memUpDelForm.passwd.focus();
		return false;
	}
	
	//수정일 경우만 필드를 검사한다.
	if(selectVal == "UP")
	{
		if(!memUpDelForm.name.value) {
			alert("이름을 입력하십시오.");
			memUpDelForm.name.focus();
			return false;
		}
		if(isNameCheck(memUpDelForm.name.value) == false) {
			alert("이름에는 숫자나 특수문자를 입력할 수 없습니다.");
			document.memUpDelForm.name.focus();
			return false;
		}
		if(!memUpDelForm.address.value) {
			alert("주소를 입력하십시오.");
			memUpDelForm.address.focus();
			return false;
		}

		if(!memUpDelForm.tel1.value) {
			alert("전화번호를 입력하십시오.");
			memUpDelForm.tel1.focus();
			return false;
		}
		if(!memUpDelForm.tel2.value) {
			alert("전화번호 2번째 자리를 입력하십시오.");
			memUpDelForm.tel2.focus();
			return false;
		}
		if(isNumberCheck(memUpDelForm.tel2.value) == false) {
			alert("전화번호는 숫자만 입력 가능합니다.");
			memUpDelForm.tel2.focus();
			return false;
		}
		if(memUpDelForm.tel2.value.length < 3) {
			alert("전화번호 2번째 자리는 최소 3자를 입력하셔야 합니다.");
			memUpDelForm.tel2.focus();
			return false;
		}
		
		if(!memUpDelForm.tel3.value) {
			alert("전화번호 3번째 자리를 입력하십시오.");
			memUpDelForm.tel3.focus();
			return false;
		}
		if(isNumberCheck(memUpDelForm.tel3.value) == false) {
			alert("전화번호는 숫자만 입력 가능합니다.");
			memUpDelForm.tel3.focus();
			return false;
		}
		if(memUpDelForm.tel3.value.length < 4) {
			alert("전화번호 3번째 자리는 4자를 입력하셔야 합니다.");
			memUpDelForm.tel3.focus();
			return false;
		}
	}
	memUpDelForm.action = "userUpDelModalForm.jsp?mode=" + selectVal;
	memUpDelForm.submit();
}








