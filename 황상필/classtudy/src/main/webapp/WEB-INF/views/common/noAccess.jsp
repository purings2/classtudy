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
			<h1>아직 이용할 수 없는 메뉴입니다.</h1>
			<p>관리자에게 강의번호 확인을 받은 후 다시 이용해주세요.</p><br>
			<button id="mainBtn" type="button" class="btn btn-info btn-lg"
				onclick="location.href='${path}'">메인으로</button>
		</div>
	</div>
	
<%@ include file="../include/footer.jsp" %>
</body>
</html>