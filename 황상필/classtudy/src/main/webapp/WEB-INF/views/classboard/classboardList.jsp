<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 목록</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>

<div class="container">
	<table class="table table-bordered table-striped table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<!-- <th>작성일</th> -->
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.writer}</td>
					<td>
						<a href="/classboard/detail?boardNo=${list.boardNo}">${list.title}</a>
					</td>
					<td>${list.writer}</td>
					<%-- <td>
						<fmt:formatDate value="${list.b_date}" 
							pattern="yyyy-MM-dd"/>
					</td> --%>
					<td>${list.views}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<%@ include file="../include/footer.jsp" %>
</body>
</html>













