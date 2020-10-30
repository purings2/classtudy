<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>
<div class="container">

	<h1>게시판 등록하기</h1><hr>
	<form class="form-horizontal" action="/board/insert" method="post">
		<div class="createForm">
			<label>제  목</label>
			<input type="text" name="b_title" class="createForm" placeholder="게시판 제목"/>
		</div>
		<div class="createForm">
			<label>내  용</label>
			<textarea rows="10" cols="100" name="b_detail" class="createForm" placeholder="게시판 내용"></textarea>
		</div>
		<div class="createForm">
			<label>글쓴이</label>
			<input type="text" name="b_writer" class="createForm" placeholder="글쓴이" value="${b_writer}"/>
		</div>
		<div class="Formfooter">
			<button type="submit" class="btn btn-info">등록</button>
		</div>
	</form>
</div>	
	<%@ include file="../include/footer.jsp" %>
</body>
</html>












