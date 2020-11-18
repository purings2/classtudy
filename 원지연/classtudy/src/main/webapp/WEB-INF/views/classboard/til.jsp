<%@page import="java.util.Date"%>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.domain.MemberDTO" %>
<%@ page import="com.edu.domain.ClassboardDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Today I Learned</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>

<div class="container" style="padding-bottom: 30px">
	<form class="form-horizontal" action="/class/writeTIL" method="post">
		<header>
			<h1>Today I learned</h1><br>
		</header>
		<div class="form-group">
			<label class="control-label col-sm-offset-1 col-sm-2">작성자</label>
			<div class="col-sm-3">
				<input type="text" id="name" name="name" class="form-control" value="${member.name}" readonly="readonly" maxlength=16/>
			</div>
			<!-- 숨겨서 넘길 정보들 -->
			<input type="hidden" id="writer" name="writer" class="form-control" value="${member.memberId}" maxlength=16/>
			<input type="hidden" id="lectureNo" name="lectureNo" class="form-control" value="${member.lectureNo}"/>
			<input type="hidden" id="category" name="category" class="form-control" value="TIL"/>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-offset-1 col-sm-2">제목</label>
			<div class="col-sm-7">
				<input type="text" id="title" name="title" class="form-control" maxlength=50/>
			</div>
		</div>
		<div class="form-group">
			<div id="test-editormd">
				<textarea style="display:none;" id="content" name="content"></textarea>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-0 col-sm-12" style="text-align: center;">
				<button type="button" class="btn btn-success" 
					onclick="tilCheckForm(this.form)">등록</button>&nbsp;
				<button type="button" class="btn btn-warning cancel">취소</button>
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
		
	});
	</script>
	<script type="text/javascript">
	var testEditor;
	$(function() {
		testEditor = editormd("test-editormd", {
			width 		: "95%",
			height 		: 640,
			syncScrolling : "single",
			path 		: '/static/js/lib/',
			readOnly 	: false,
			watch 		: true
		});
	});
	</script>
</body>
</html>