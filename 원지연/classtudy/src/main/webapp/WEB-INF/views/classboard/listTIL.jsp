<%@page import="java.util.Date"%>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.domain.ClassboardDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>클래스룸</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>

<div class="container">
	<header>
		<h1>TIL 목록</h1><br>
	</header>
	<div class="col-sm-12" style="text-align: right; padding-bottom: 10px;">
		<button class="btn btn-success" 
			onclick="location.href='/class/writeTIL'">작성</button>
	</div>
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th style="text-align: center;">글번호</th>
				<th style="text-align: center;">제  목</th>
				<th style="text-align: center;">작성자</th>
				<th style="text-align: center;">작성일</th>
				<th style="text-align: center;">조회수</th>
				<th style="text-align: center;">좋아요</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="board" items="${list}">
				<tr>
					<td>${board.boardNo}</td>
					<td><a href="/class/detail/${board.boardNo}">${board.title}</a></td>
					<td>${board.writer}</td>
					<td><fmt:formatDate value="${board.writeDate}" pattern="yyyy-MM-dd"/></td>
					<td>${board.views}</td>
					<td>${board.likes}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
	
	<%@ include file="../include/footer.jsp" %>
	<script>
	$(document).ready(function() {
		
	});
	</script>
</body>
</html>