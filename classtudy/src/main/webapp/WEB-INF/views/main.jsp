<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>메인프로그램</title>
	<%@ include file="include/header.jsp" %>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
	<%@ include file="include/topmenu.jsp" %>
	<h1>${message}님 환영합니다!!!</h1>
	<h1>스프링의 세계로 오신것을 환영합니다!!!</h1>
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>