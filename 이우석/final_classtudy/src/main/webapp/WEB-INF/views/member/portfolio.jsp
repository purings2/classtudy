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
			<h1><b>[ 이력서&nbsp;&amp;&nbsp; 포트폴리오 ]</b></h1><br><br>
		</header>
		<!-- 숨겨서 보낼 정보 -->
		<input type="hidden" id="writer" name="writer" class="form-control" value="${member.memberId}" maxlength=16 readonly/>
	</form>
</div>
	<div class="container" style="padding-bottom: 30px">
		<header>
			<h2 align="left" >[${member.name}]&nbsp;님이 작성한 이력서</h2>
		</header>
		<!-- 숨겨서 보낼 정보 -->
		<input type="hidden" id="writer" name="writer" class="form-control" value="${member.memberId}" maxlength=16 readonly/>
		<div class="form-group">
			<div class="col-sm-12" align="right">
				<button type="button" class="btn-lg btn-success" id="resumeBtn">작성하기</button><p><p>
			</div>
		</div>	
		<div class="form-group">
			<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<th style="text-align: center; width: 25%; font-size: 20px">작성자</th>
						<th style="text-align: center; width: 50%; font-size: 20px">이력서 제목</th>
						<th style="text-align: center; width: 25%; font-size: 20px">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty list}">
						<tr style="background-color: #FFFFFF;">
							<td colspan="5">게시글이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="resume" items="${list}">
						<tr>
							<td style="font-size: 20px">${member.memberId}(${resume.writerName})</td>
							<td style="font-size: 25px">
								<a href="${path}/member/resumeView/${resume.resumeNo}"><b>${resume.title}</b></a></td>
							<td style="font-size: 20px"><fmt:formatDate value="${resume.writeDate}" pattern="yyyy-MM-dd"/></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
<%@ include file="../include/footer.jsp" %>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	$(document).ready(function() {
		// 작성하기 버튼이 눌렸을 경우
		$("#resumeBtn").on("click", function() {
			location.href ="/member/resume";
		});
	});
	</script>
</body>
</html>