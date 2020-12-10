<%@page import="java.util.Date"%>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.member.domain.MemberDTO" %>
<%@ page import="com.edu.classboard.domain.ClassboardDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>클래스룸 :: 게시글 작성</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>

<div class="container" style="padding-bottom: 30px">
	<header>
		<h1>게시글 작성</h1><br>
	</header>
	<form class="form-horizontal" action="/class/classboard/write" method="post">
		<div class="form-group">
			<!-- 숨겨서 넘길 정보들 -->
			<input type="hidden" id="writer" name="writer" value="${member.memberId}" maxlength=16/>
			<input type="hidden" id="lectureNo" name="lectureNo" value="${member.lectureNo}"/>
			<!-- 보여줄 내용들 -->
			<label class="control-label col-sm-2">작성자</label>
			<div class="col-sm-3">
				<input type="text" id="writerName" name="writerName" class="form-control" value="${member.name}" readonly="readonly" maxlength=16/>
			</div>
			<label class="control-label col-sm-2">말머리</label>
			<div class="col-sm-3">
				<c:if test="${til != 'yes'}">
					<select id="category" name="category" class="form-control">
						<option value="TIL">TIL</option>
						<option value="클래스">클래스</option>
						<option value="질문">질문</option>
					</select>
				</c:if>
				<c:if test="${til == 'yes'}">
					<input type="text" id="category" name="category" class="form-control" value="TIL" readonly/>
				</c:if>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">제&nbsp;&nbsp;&nbsp;목</label>
			<div class="col-sm-8">
				<input type="text" id="title" name="title" class="form-control" maxlength=50/>
			</div>
		</div>
		<div class="form-group">
			<div id="test-editormd" style="display: block; width: 85%; margin: 0px auto">
				<textarea style="display:none;" id="content" name="content"></textarea>
			</div>
		</div>
		<footer>
			<div class="col-sm-12" style="text-align: center;">
				<button type="button" class="btn btn-success" onclick="checkClassboardForm(this.form)">등록</button>&nbsp;
				<button type="button" class="btn btn-warning cancel">취소</button>
			</div>
		</footer>
	</form>
</div>
	
	<%@ include file="../include/footer.jsp" %>
	<script>
	$(document).ready(function() {
		
		// 취소 버튼이 눌렸을 경우
		$(".cancel").on("click", function() {
			if(confirm("정말 취소하시겠습니까?") == false){
				return false;
			} else {
				location.href ="/class/classboard/all";
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
				readOnly 	: false,
				placeholder : "내용을 입력하세요."
			});
		});
		
	});
	</script>
</body>
</html>