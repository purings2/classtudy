<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" 	tagdir="/WEB-INF/tags" %>
<layoutTag:layout>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보수정</title>
</head>
<body>

<div class="container">
	<form class="form-horizontal" method="post" action="/member/memberUpdate">
		<div class="form-group">
			<div class="col-sm-2"></div>
			<div class="col-sm-6">
				<h2 align="left">회원정보수정</h2>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">아이디</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="userid" name="userid"
					value="${member.userid}" readonly="readonly" 
					maxlength=16 placeholder="아이디를 입력하세요."/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">비밀번호</label>
			<div class="col-sm-2">
				<input type="password" class="form-control" id="passwd" name="passwd"
					maxlength="16" placeholder="비밀번호를 입력하세요."/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">이  름</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="name" name="name"
					value="${member.name}" maxlength="16" placeholder="이름을 입력하세요"/>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-4">
				<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
				<button class="btn btn-danger cancel" type="reset">취소</button>
			</div>
		</div>
	</form>
</div>

<script>
$(document).ready(function() {
	
	// 취소 버튼이 눌렸을 경우
	$(".cancel").on("click", function() {
		location.href = "/member/login";
	});

	// 회원정보수정 버튼을 눌렀을 경우
	$("#submit").on("click", function() {
		if($("#passwd").val() == "") {
			alert("비밀번호를 입력하십시오.");
			$("#passwd").focus();
			return false;
		}	
		if($("#name").val() == "") {
			alert("이름을 입력하십시오.");
			$("#name").focus();
			return false;
		}	
	});

})
</script>

</body>
</html>

</layoutTag:layout>










