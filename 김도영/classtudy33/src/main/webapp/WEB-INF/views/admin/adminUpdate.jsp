<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="layoutTag" tagdir="WEB-INF/tags" %>
<layoutTag:layout> --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보수정</title>
	<%@ include file="../include/admin_header.jsp" %>
</head>
<body>
	<div class="container">
		<form class="form-horizontal" action="/admin/adminUpdate" method="post">
			<div class="form-group">
				<div class="col-sm-2"></div>
				<div class="col-sm-6">
					<h2 align="left">회원정보수정</h2>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input type="text" id="adminId" name="adminId" class="form-control" value="${admin.adminId}" readonly="readonly" maxlength=16 placeholder="아이디를 입력하세요."/>
					<div class="text-center small mt-2" id="checkMsg" style="color: red"></div>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input type="password" id="passwd" name="passwd" class="form-control" placeholder="비밀번호를 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-4">
					<button type="submit" class="btn btn-success" id="submit">회원정보수정</button>
					<button type="button" class="btn btn-warning cancel">취소</button>					
				</div>
			</div>
		</form>
	</div>	
	
	<%@ include file="../include/admin_footer.jsp" %>
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>

		$(document).ready(function() {
			// 취소 버튼이 눌렸을 경우
			$(".cancel").on("click", function() {
				location.href ="/admin/login";
			});			
		});	
	
		//회원수정 버튼을 눌렀을 경우 => 입력필드가 비어있는지 검사한다.
		$("#submit").on("click", function() {
			if($("#passwd").val() == "") {
				alert("비밀번호를 입력하십시오.");
				$("#passwd").focus();
				return false;
			}
					
		});

		// 회원정보수정 버튼을 눌렀을 경우
		$("#adminUpdate").on("click", function() {
			location.href="/admin/adminUpdate";
		});
		

		

		
	</script>
</body>
</html>
<%-- </layoutTag:layout>  --%>













