
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 --%>
<%-- <%@ taglib prefix="layoutTag" tagdir="WEB-INF/tags" %>
<layoutTag:layout> --%>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 관리</title>
<%@ include file="../include/admin_header.jsp"%>
</head>
<body>
<div class="content">
	<br>
	<!-- 메인보드 -->
	<div class="container" style="border: 1px solid #ddd">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12" style="height: 80px;">
					<h2>
						게시판 관리
						<button class="btn btn-default pull-right btn-lg"
							onclick="location.href='/adboard/insert'">글쓰기</button>
					</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Search for..."> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">검색</button>
						</span>
					</div>
					<!-- /input-group -->
				</div>
			</div>
		</div>
		<br>
		<div class="container-fluid">
			<div class="row">
				<!-- 모바일 디바이스 카테고리 -->
				<div class="visible-sm visible-xs col-md-12">
					<select class="form-control" id="sampleSelect">
						<option value="#1">공지사항</option>
						<option value="#2">Q&A</option>
						<option value="#3">정보</option>
						<option value="#4">이야기</option>
						<option value="#5">그룹홍보</option>
					</select> <br>
				</div>
				<!-- 태블릿 & 데스크탑 디바이스 카테고리 -->
				<div class="visible-md visible-lg col-md-3">
					<!-- 패널 타이틀(optional) -->
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="glyphicon glyphicon-paperclip"> 자유게시판</i>
							</h3>
						</div>
						<!-- 메뉴목록 -->
						<ul class="list-group">
							<li class="list-group-item"><a href="#">공지사항</a></li>
							<li class="list-group-item"><a href="#">Q&A</a></li>
							<li class="list-group-item"><a href="#">정보</a></li>
							<li class="list-group-item"><a href="#">이야기</a></li>
							<li class="list-group-item"><a href="#">그룹홍보</a></li>
						</ul>
					</div>
					<!-- 패널 타이틀(optional) -->
					<div class="panel panel-success">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="glyphicon glyphicon-paperclip"> 그룹게시판</i>
							</h3>
						</div>
						<!-- 메뉴목록 -->
						<ul class="list-group">
							<li class="list-group-item"><a href="#">모집글</a></li>
							<li class="list-group-item"><a href="#">그룹</a></li>
							<li class="list-group-item"><a href="#">프로젝트</a></li>
						</ul>
					</div>
					<!-- 패널 타이틀(optional) -->
					<div class="panel panel-warning">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="glyphicon glyphicon-paperclip"> 클래스게시판</i>
							</h3>
						</div>
						<!-- 메뉴목록 -->
						<ul class="list-group">
							<li class="list-group-item"><a href="#">TIL</a></li>
							<li class="list-group-item"><a href="#">클래스룸</a></li>
						</ul>
					</div>
				</div>
				<!-- 게시판  -->
				<div class="col-xs-12 col-md-9">

					<table class="table table-hover"
						style="text-align: center; border: 1px solid #ddd;">
						<thead>
							<tr>
								<th style="background-color: #FAFAFA; text-align: center;">
									번호</th>
								<th style="background-color: #FAFAFA; text-align: center;">
									제목</th>
								<th style="background-color: #FAFAFA; text-align: center;">
									작성자</th>
								<th style="background-color: #FAFAFA; text-align: center;">
									작성일</th>
								<th style="background-color: #FAFAFA; text-align: center;">
									</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="b" items="${board}">
								<tr onclick="location.href='/adboard/detail/${b.boardNo}'">
									<td>${b.boardNo}</td>
									<td>${b.title}</td>
									<td>${b.writer}</td>
									<td>${b.writeDate}</td>
									<td><a href='/adboard/delete/${b.boardNo}' onclick="return confirm('삭제 하시겠습니까?');" class="btn btn-default">삭제</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
					<!-- 페이징 시작 -->
					<div class="text-center">
						<ul class="pagination">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
						</ul>
					</div>
					<!-- 페이징 끝 -->
				</div>
			</div>
		</div>
	</div>





	<br>

</div>

</body>

<%-- 

	<div class="content">
		<div class="container-fluid">

			<!-- Control the column width, and how they should appear on different devices -->
			<div class="row">
				<div class="container">
					<div class="row">
						<br>
						<table class="table"
							style="text-align: center; border: 1px solid #ddd">
							<thead>
								<tr>
									<th style="background-color: #eeeeee; text-align: center;">
										번호</th>
									<th style="background-color: #eeeeee; text-align: center;">
										제목</th>
									<th style="background-color: #eeeeee; text-align: center;">
										작성자</th>
									<th style="background-color: #eeeeee; text-align: center;">
										작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="b" items="${board}">
									<tr>
										<td>${b.boardNo}</td>
										<td>${b.subject}</td>
										<td>${b.writer}</td>
										<td>${b.writeDate}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<button class="btn btn-default pull-center" onclick="location.href='/adboard/insert'">글쓰기</button>
					</div>
				</div>
			</div>

			<div class="container">
	<h2>게시글 목록</h2>
	<button class="btn btn-primary" onclick="location.href='/adboard/insert'">글쓰기</button>
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th>No</th>
				<th>Subject</th>
				<th>Content</th>
				<th>Writer</th>
				<th>Date</th>
			</tr>
		</thead>
			<c:forEach var="board" items="${list}">
			<tr>
				<td class="info" onclick="location.href='/adboard/detail/${board.boardNo}'">${board.boardNo}</td>
				<td>${board.subject}</td>
				<td>${board.content}</td>
				<td>${board.writer}</td>
				<td><fmt:formatDate value="${board.reg_date}" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/></td>
			</tr>
			</c:forEach>
		<tbody>
		</tbody>
	</table>

</div>

			<br>

			<!-- Or let Bootstrap automatically handle the layout -->
			<div class="row">
				<div class="col-sm" style="background-color: lightgray;">25%</div>
				<div class="col-sm" style="background-color: lightblue;">25%</div>
				<div class="col-sm" style="background-color: lightgray;">25%</div>
				<div class="col-sm" style="background-color: lightblue;">25%</div>
			</div>
			<br>

			<div class="row">
				<div class="col" style="background-color: lightgray;">25%</div>
				<div class="col" style="background-color: lightblue;">25%</div>
				<div class="col" style="background-color: lightgray;">25%</div>
				<div class="col" style="background-color: lightblue;">25%</div>
			</div>
		</div>
	</div>


</body> --%>


<%@ include file="../include/admin_footer.jsp"%>


</html>
<%-- </layoutTag:layout>  --%>













