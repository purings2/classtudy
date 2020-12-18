<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="layoutTag" tagdir="WEB-INF/tags" %>
<layoutTag:layout> --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<%@ include file="../adinclude/admin_header.jsp" %>
</head>
<body>
	<div class="container">
		<form class="form-horizontal" action="/admin/register" method="post">
			<div class="form-group">
				<div class="col-sm-2"></div>
				<div class="col-sm-6">
					<h2 align="left">회원가입</h2>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input type="text" id="adminId" name="adminId" class="form-control" maxlength=16 placeholder="아이디를 입력하세요."/>
					<div class="text-center small mt-2" id="checkMsg" style="color: red"></div>
				</div>
				<div class="col-sm-2">
					<button class="idCheck" type="button" id="idCheck" onclick="dupCheck()" value="N">중복검사</button>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input type="password" id="passwd" name="passwd" class="form-control" placeholder="비밀번호를 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">이  름</label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control" maxlength=16 placeholder="이름을 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-4">
					<button type="submit" class="btn btn-success">회원가입</button>
					<button type="button" class="btn btn-warning cancel">취소</button>
				</div>
			</div>
		</form>
	</div>	
	
	<%@ include file="../adinclude/admin_footer.jsp" %>
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>

		$(document).ready(function() {
			// 취소 버튼이 눌렸을 경우
			$(".cancel").on("click", function() {
				location.href ="/admin/login";
			});			
		});

		// 아이디 중복 검사
		// 입력한 아이디에 해당하는 정보가 있는지 검사하고, 결과값(정수)을 리턴받는다.
		function dupCheck() {
			if($("#adminId").val() == "") {
				alert("아이디를 입력하십시오.");
				$("#adminId").focus();
				return false;
			}
			$.ajax({
				url: "/admin/idCheck",
				type: "post",
				dataType: "json",
				data: {"adminId" : $("#adminId").val()},	
				success: function(data) {
					         if(data == 1) {							     
							     $('#checkMsg').html('<p style="color:red">이미 사용중인 ID 입니다. 다른 ID를 입력하세요.</p>');
			                     $('#adminId').val('');
			                     $('#adminId').focus();
							 } else if(data == 0) {
						         $("#idCheck").attr("value", "Y");
						         $('#checkMsg').html('<p style="color:blue">사용가능한 ID 입니다!</p>');
						     }
						 }				 
			});
		}
	
		
	
		//회원가입 버튼을 눌렀을 경우 => 입력필드가 비어있는지 검사한다.
		$("#submit").on("click", function() {
			if($("#adminId").val() == "") {
				alert("아이디를 입력하십시오.");
				$("#adminId").focus();
				return false;
			}
			if($("#passwd").val() == "") {
				alert("비밀번호를 입력하십시오.");
				$("#passwd").focus();
				return false;
			}
		});
				
	</script>
</body>
</html>
<%-- </layoutTag:layout>  --%>













