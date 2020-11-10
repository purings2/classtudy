<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags" %>

<layoutTag:layout>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 작성</title>
</head>
<body>

<div class="container">

	<h2>게시글 작성</h2>
	
	<form class="form-horizontal" action="/board/insertProc" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label for="subject">제  목</label>
			<input type="text" class="form-control" id="subject" name="subject" placeholder="제목을 입력하십시오."/>
		</div>
		<div class="form-group">
			<label for="subject">작성자</label>
			<input type="text" class="form-control" id="writer" name="writer" placeholder="작성자를 입력하십시오."/>
		</div>
		<div class="form-group">
			<label for="content">내  용</label>
			<textarea rows="4" cols="100" class="form-control" id="content" name="content" placeholder="게시글을 작성하십시오."></textarea>
		</div>
		<input type="file" name="files">
		<button type="submit" class="btn btn-primary">작성</button>
	</form>

</div>


</body>


<!-- layoutTag를 적용하므로 bootstrap.jsp 파일이 필요 업어졌다. -->
</html>

</layoutTag:layout>



















