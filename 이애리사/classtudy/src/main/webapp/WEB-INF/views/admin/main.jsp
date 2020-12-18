<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>클래스터디 관리자</title>
	<%@ include file="../include/admin_header.jsp"%>
	<style type="text/css">
	@import url("https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css");
	@import url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css");
	</style>
	<style>
	.card-body {
		backgorund: #ddd;
	}
	.card-body2 {
	        margin: 0 auto; /* Added */
	        float: none; /* Added */
	        margin-bottom: 10px; /* Added */
	        margin-top: 10px; /* Added */
	}
	.card:hover {
		box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
	}
	.card-header {
			height: 35px;
			font-size: 13px;
	}
	</style>
</head>
<body>
	<%@ include file="../include/admin_menu.jsp" %>
	<div class="content">
		<div class="container-fluid" style="padding: 30px 10px;">
			<div class="card" style="background: #F8F9F9; font-size: 13px;">
				<div class="card-body">
					<h3 class="card-title"><span class="glyphicon glyphicon-flash"></span> ADMIN PAGE</h3>
					<p class="card-text">게시물, 회원, 방문자수, 포인트 등을 조회 및 관리하는 페이지.</p>
					<a href="${path}/" class="card-link">classtudy</a>
					<a href="/admin/logout" onclick="return confirm('로그아웃 하시겠습니까?');"
						class="card-link">Logout</a>
				</div>
			</div>
			<br>
			<div class="card-deck">
				<div class="card text-black mb-4 bg-default"
					style="width: 300px; /* background: #A2D9CE; */">
					<div class="card-header" style="background: #D1F2EB;">최근에 가입한 회원</div>
					<div class="card-body">
						<h5 class="card-title">카드 타이틀</h5>
						<h2 class="card-text pull-right">70</h2>
					</div>
				</div>
				<div class="card text-black mb-4 bg-default"
					style="width: 300px; /* background: #F7DC6F; */">
					<div class="card-header" style="background: #FCF3CF;">최근에 추가된 강의</div>
					<div class="card-body">
						<h5 class="card-title">카드 타이틀</h5>
						<h2 class="card-text pull-right">30</h2>
					</div>
				</div>
			</div>
			<div class="card-deck">
				<div class="card text-black mb-4 bg-default"
					style="width: 300px; /* background: #D7BDE2; */">
					<div class="card-header" style="background: #E8DAEF;">최근에 올라온 게시글</div>
					<div class="card-body">
						<h5 class="card-title">카드 타이틀</h5>
						<h2 class="card-text pull-right">200</h2>
					</div>
				</div>
				<div class="card text-black mb-4 bg-default"
					style="width: 300px;  /* background: #F1948A; */">
					<div class="card-header" style="background: #FADBD8;">최근에 올라온 댓글</div>
					<div class="card-body">
						<h5 class="card-title">카드 타이틀</h5>
						<h2 class="card-text pull-right">1000</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../include/admin_footer.jsp"%>
</body>
</html>