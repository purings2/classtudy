<%@ page import="java.util.Date"%>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.domain.ClassboardDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 상세 정보</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>

<div class="container">
	<header>
		<h1>게시글 상세 정보</h1><br>
	</header>
	<form class="form-horizontal" action="/class/updateBoard" method="post">
		<div>
			<!-- 숨겨서 넘길 정보들 -->
			<input type="hidden" id="boardNo" name="boardNo" class="form-control" value="${detail.boardNo}" maxlength=16/>
			<input type="hidden" id="views" name="views" class="form-control" value="${detail.views}"/>
			<input type="hidden" id="likes" name="likes" class="form-control" value="${detail.likes}"/>
			<input type="hidden" id="lectureNo" name="lectureNo" class="form-control" value="${detail.lectureNo}"/>
		</div>
		<c:if test="${detail.category == 'TIL'}">
			<div class="form-group">
				<label class="control-label col-sm-2">말머리</label>
				<div class="col-sm-3">
					<input type="text" id="category" name="category" class="form-control" value="${detail.category}" readonly/>
				</div>		
			</div>
		</c:if>
		<c:if test="${detail.category != 'TIL'}">
			<div class="form-group">
				<label class="control-label col-sm-2">말머리</label>
				<div class="col-sm-3">
					<input type="text" id="category" name="category" class="form-control" value="${detail.category}"/>
				</div>		
			</div>
		</c:if>
		<div class="form-group">
			<label class="control-label col-sm-2">작성자</label>
			<div class="col-sm-3">
				<input type="text" id="writer" name="writer" class="form-control" value="${detail.writer}" readonly="readonly" maxlength=16/>
			</div>
			<label class="control-label col-sm-2">작성일</label>
			<div class="col-sm-3">
				<input type="text" id="writeDate" name="writeDate" class="form-control" value="<fmt:formatDate value="${detail.writeDate}" pattern="yyyy-MM-dd hh:mm:ss"/>" readonly="readonly"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">제  목</label>
			<div class="col-sm-8">
				<input type="text" id="title" name="title" class="form-control" value="${detail.title}" maxlength=50/>
			</div>
		</div>
		<div class="form-group">
			<div id="test-markdown-view" style="display: block; width: 85%; margin: 0px auto; padding: 0px;">
				<textarea style="display:none;" id="content" name="content">${detail.content}</textarea>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-12" style="text-align: center; padding-bottom: 25px;">
				<!-- <button type="button" class="btn btn-info" id="previewBtn">preview</button> -->
				<button type="button" class="btn btn-success" onclick="location.href='/class/update/${detail.boardNo}'">수정</button>&nbsp;
				<button type="button" class="btn btn-danger" onclick="location.href='/class/delete/${detail.boardNo}'">삭제</button>&nbsp;
				<button type="button" class="btn btn-primary" onclick="location.href='/class/classroom'">목록</button>
			</div>
		</div>
	</form>
</div>
	
	<%@ include file="../include/footer.jsp" %>
	<script>
	$(document).ready(function() {

		// Markdown View
		var testView = editormd.markdownToHTML("test-markdown-view", {
			//markdown : "[TOC]\n### Hello world!\n## Heading 2", // Also, you can dynamic set Markdown text
			//htmlDecode : true,  // Enable / disable HTML tag encode.
			//htmlDecode : "style,script,iframe"  // Note: If enabled, you should filter some dangerous HTML tags for website security.
		});

		/*
		// Markdown Editor
		var testEditor;
		testEditor = editormd("test-editormd", {
			width 		: "95%",
			height 		: 640,
			syncScrolling : "single",
			path 		: '/static/js/lib/',
			readOnly 	: true
		});
		// Preview 버튼이 눌렸을 때 실행
		function hideCodeMirror(){
			//testEditor.state.preview = true;
			testEditor.codeMirror.hide();
			//alert("preview 버튼이 눌렸습니다.");
			//testEditor.previewing();
		});
		*/
		
	});
	</script>
</body>
</html>