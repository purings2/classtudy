<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags" %>

<layoutTag:layout>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 수정</title>
</head>
<body>

<div class="container">
	<form class="form-horizontal" action="/board/updateProc" method="post">
		<div class="form-group">
			<label>제  목</label>
			<input type="text" class="form-control" id="subject" name="subject" value="${detail.subject}"/>
		</div>	
		<div class="form-group">
			<label>내  용</label>
			<textarea class="form-control" id="content" name="content" rows="6" cols="100">${detail.content}</textarea>
		</div>
		<input type="hidden" name="bno" value="${bno}"/>
		<button type="submit" class="btn btn-primary">수정</button>
	</form>
</div>

</body>

<!-- layoutTag를 적용하므로 bootstrap.jsp 파일이 필요 업어졌다. -->
</html>

</layoutTag:layout>



























