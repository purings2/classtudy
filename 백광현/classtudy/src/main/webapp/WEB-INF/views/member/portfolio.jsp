<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.member.domain.MemberDTO" %>
<%@ page import="com.edu.member.domain.ResumeDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>이력서</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>
<div class="container" style="padding-bottom: 30px">
	<form class="form-horizontal" action="/member/resumeList">
		<header>
			<h1>이력서 및 포트폴리오</h1><br>
		</header>
		<!-- 숨겨서 보낼 정보 -->
		<input type="hidden" id="writer" name="writer" class="form-control" value="${member.memberId}" maxlength=16 readonly/>
		<div class="form-group">
			<div class="col-sm-12" align="center">
				<button type="button" class="btn btn-success" id="resumeBtn">작성하기</button><p><p>
				<button type="button" class="btn btn-warning" id="resumeList">이력서보기/${resume.boardNo}</button>	
			</div>
		</div>
	</form>
		

</div>
<%@ include file="../include/footer.jsp" %>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	$(document).ready(function() {
		
		// 작성하기 버튼이 눌렸을 경우
		$("#resumeBtn").on("click", function() {
			location.href ="/member/resume";
		});
		// 보기 버튼이 눌렸을 경우
		$("#resumeList").on("click", function() {
			location.href ="/member/resumeList/${member.memberId}";
		});
	});
	</script>
</body>
</html>