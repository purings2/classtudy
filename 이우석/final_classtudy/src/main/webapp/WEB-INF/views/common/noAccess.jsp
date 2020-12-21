<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>클래스터디</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>

	<div class="container">
		<div align="center">
			<h1>이용할 수 없습니다.</h1>
			<p>${message}</p><br>
			<button id="mainBtn" type="button" class="btn btn-info btn-lg"
				onclick="location.href='${path}/'">메인으로</button>
		</div>
	</div>
	
<%@ include file="../include/footer.jsp" %>
</body>
</html>