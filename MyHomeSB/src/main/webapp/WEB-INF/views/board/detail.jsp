<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags" %>

<layoutTag:layout>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 상세 정보</title>
</head>
<body>

<div class="container">
	<h2>게시글 상세 정보</h2>
	<button class="btn btn-warning" onclick="location.href='/board/update/${detail.bno}'">수정</button>
	<button class="btn btn-danger"  onclick="location.href='/board/delete/${detail.bno}'">삭제</button>
		
	<form class="form-horizontal" action="/board/insert" method="post">
		<div class="form-group">
			<label>제  목</label>
			<p>${detail.subject}</p>
		</div>
		<div class="form-group">
			<label>작성자</label>
			<p>${detail.writer}</p>
		</div>
		<div class="form-group">
			<label>작성날짜</label>
			<p>${detail.reg_date}</p>
		</div>
		<div class=:form-group">
			<label>첨부파일</label>
			<p><a href="/board/fileDown/${files.bno}">${files.fileOriName}</a></p>
		</div>
		<div class="form-group">
			<label>내  용</label>
			<p>${detail.content}</p>
		</div>
		<button type="submit" class="btn btn-primary">글쓰기</button>
	</form>
	
</div>

</body>

<!-- layoutTag를 적용하므로 bootstrap.jsp 파일이 필요 업어졌다. -->
</html>

</layoutTag:layout>



































