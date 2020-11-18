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
		<div class="form-group">
			<label class="control-label col-sm-2">말머리</label>
			<div class="col-sm-3">
				<input type="text" id="category" name="category" class="form-control" value="${detail.category}"/>
			</div>		
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">작성자</label>
			<div class="col-sm-3">
				<input type="text" id="writer" name="writer" class="form-control" value="${detail.writer}" readonly="readonly" maxlength=16/>
			</div>
			<label class="control-label col-sm-2">작성일</label>
			<div class="col-sm-3">
				<input type="text" id="writeDate" name="writeDate" class="form-control" value="<fmt:formatDate value="${detail.writeDate}" pattern="yyyy년 MM월 dd일"/>" readonly="readonly"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">제  목</label>
			<div class="col-sm-8">
				<input type="text" id="title" name="title" class="form-control" value="${detail.title}" maxlength=50/>
			</div>
		</div>
		<div class="form-group">
			<div id="test-editormd">
				<textarea style="display:none;" id="content" name="content">${detail.content}</textarea>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-0 col-sm-12" style="text-align: center;">
				<button type="button" class="btn btn-success" 
					onclick="tilCheckForm(this.form)">수정</button>&nbsp;
				<button type="button" class="btn btn-warning cancel">취소</button>&nbsp;
				<!-- 
				<button type="button" class="btn btn-info" id="previewBtn">preview</button>
				 -->
			</div>
		</div>
	</form>
</div>
	
	<%@ include file="../include/footer.jsp" %>
	<script>
	$(document).ready(function() {

		// 취소 버튼이 눌렸을 경우 => OK하면 메인으로 이동
		$(".cancel").on("click", function() {
			if(confirm("정말 취소하시겠습니까?") == false){
				return false;
			} else {
				location.href ="/";
			}
		});

		// Markdown Editor
		testEditor = editormd("test-editormd", {
			width 		: "95%",
			height 		: 640,
			syncScrolling : "single",
			path 		: '/static/js/lib/',
			readOnly 	: true
		});
		//alert("테스트1");
		//testEditor.state.preview = true;
		//testEditor.previewing();
		//testEditer.state.CodeMirror = false;
		//testEditer.codeMirror.hide();
		
		$("#previewBtn").click(function(){
			testEditor.codeMirror.hide();
			//alert("테스트1");
			//testEditor.previewing();
		});
		
	});
	</script>
</body>
</html>