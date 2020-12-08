<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="com.edu.member.domain.MemberDTO" %>
<%@ page import="com.edu.freeboard.domain.FreeboardDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>자유게시판</title>
<%@ include file="../include/header.jsp" %>	
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>

<div class="container" style="padding-bottom: 30px">
	<form class="form-horizontal" action="/community/freeboard/write" method="post">
		<header>
			<h1>게시글 작성</h1><br>
		</header> 
		<div class="form-group">
			<label class="control-label col-sm-2">작성자</label>
			<div class="col-sm-3">
				<input type="text" id="name" name="name" class="form-control" value="${member.name}" readonly="readonly" maxlength=16/>
			</div>
			<label class="control-label col-sm-2">말머리</label>
			<div class="col-sm-3">
				<select id="category" name="category" class="form-control">					
					<option value="공지사항">공지사항</option>
					<option value="이야기">이야기</option>
					<option value="질문">질문</option>
					<option value="정보">정보</option>					
					<option value="그룹홍보">그룹홍보</option>
				</select>
			</div>
			<!-- 숨겨서 넘길 정보들 -->
			<input type="hidden" id="writer" name="writer" class="form-control" value="${member.memberId}" maxlength=16/>	
					
		</div>		
		<div class="form-group">		
			<label class="control-label col-sm-2">제&nbsp;&nbsp;&nbsp;목</label>
			<div class="col-sm-8">
				<input class="form-control" type="text" id="title" name="title" placeholder="제목을 작성하세요." maxlength=50/>
			</div>
		</div>
		<div class="form-group">
			<div id="test-editormd" style="display: block; width: 85%; margin: 0px auto">
				<textarea style="display:none;" id="content" name="content"></textarea>
			</div>
		</div>		
		<!-- 
		<div class="form-group">		
			<label class="control-label col-sm-2">태  그</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" id="tags" name="tags" onkeydown="nextFocus(content)" placeholder="태그"/>
				<input type="text" class="form-control" id="tags" name="tags" value="${board.tags}" readonly="readonly" onkeydown="nextFocus(category)">
			</div>
		</div>
		-->
		<footer>
			<div class="form-group">
				<div class="col-sm-12" style="text-align: center;">
				<!-- <div class="col-sm-9" align="right">-->
					<button type="button" class="btn btn-success" onclick="checkFreeboardForm(this.form)">등록</button>&nbsp;
					<button type="button" class="btn btn-warning cancel">취소</button>	
				</div>	
			</div>
		</footer>	
	</form>
</div>


<%@ include file="../include/footer.jsp" %>
	<script src="/static/js/fbcommentAction.js"></script>
	<script>
	$(document).ready(function() {		
		// 취소 버튼이 눌렸을 경우 => OK하면 메인으로 이동
		$(".cancel").on("click", function() {
			if(confirm("정말 취소하시겠습니까?") == false){
				return false;
			} else {
				location.href ="/community/freeboard/all";
			}
		});
		// Markdown Editor
		var testEditor;
		$(function() {
			testEditor = editormd("test-editormd", {
				width 		: "90%",
				height 		: "600px",
				syncScrolling : "single",
				path 		: "/static/js/lib/",
				readOnly 	: false
			});
		});
		
	});
	</script>
</body>


</html>