<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" 	tagdir="/WEB-INF/tags" %>

<layoutTag:layout>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 목록 보기</title>
	<style>
	.navbar-inverse .navbar-nav > .active > a, 
	.navbar-inverse .navbar-nav > .active > a:focus, 
	.navbar-inverse .navbar-nav > .active > a:hover {
	    color: rgb(255, 255, 255);
	    background-color: red
	}
	</style>
</head>
<body>

<div class="container">
	<h2>게시글 목록</h2>
	<button class="btn btn-primary" onclick="location.href='/board/insert'">글쓰기</button>
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th>No</th>
				<th>Subject</th>
				<th>Content</th>
				<th>Writer</th>
				<th>Date</th>
				<th>댓글</th>
			</tr>
		</thead>
			<c:forEach var="board" items="${list}">
			<tr>
				<td class="info" onclick="location.href='/board/detail/${board.bno}'">${board.bno}</td>
				<td>${board.subject}</td>
				<td>${board.content}</td>
				<td>${board.writer}</td>
				<td><fmt:formatDate value="${board.reg_date}" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/></td>
				<td class="warning" onclick="location.href='/board/detailComment/${board.bno}'">댓글</td>
			</tr>
			</c:forEach>
		<tbody>
		</tbody>
	</table>

</div>

</body>

<!-- layoutTag를 적용하므로 bootstrap.jsp 파일이 필요 없어졌다. -->
</html>

</layoutTag:layout>





















