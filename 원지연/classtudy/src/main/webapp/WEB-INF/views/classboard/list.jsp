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
		<h1>클래스룸</h1><br>
	</header>
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
					<td><fmt:formatDate value="${board.writeDate}" pattern="yyyy년 MM월 dd일"/></td>
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
	<script type="text/javascript">
	var testEditor;
	$(function() {
		testEditor = editormd("test-editormd", {
			width 		: "90%",
			height 		: 640,
			syncScrolling : "single",
			path 		: '/static/js/lib/',
			readOnly 	: false
		});		
		
		$("#watch-btn").click(function(){
			testEditor.previewing();
		});
		$("#unwatch-btn").click(function(){
			testEditor.previewed();
		});
		window.onload = function() {
			testEditor.previewing();
		};
	});
	</script>
</body>
</html>