
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
<title>회원 관리</title>
<%@ include file="../adinclude/admin_header.jsp"%>
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
							회원 관리
							<!-- <button class="btn btn-default pull-right btn-lg"
								onclick="location.href='/adboard/insert'">글쓰기</button> -->
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
			<div style="float: right;">
				<select id="cntPerPage" name="sel" onchange="selChange()">
					<option value="5"
						<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄
						보기</option>
					<option value="10"
						<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄
						보기</option>
					<option value="15"
						<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄
						보기</option>
					<option value="20"
						<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄
						보기</option>
				</select>
			</div>
			<!-- 옵션선택 끝 -->
			<br>
			<div class="container-fluid">
				<div class="row">
					<!-- 게시판  -->
					<div class="col-xs-12 col-md-12">

						<table class="table table-hover"
							style="text-align: center; border: 1px solid #ddd;">
							<thead>
								<tr>
									<th style="background-color: #FAFAFA; text-align: center;">
										아이디</th>
									<th style="background-color: #FAFAFA; text-align: center;">
										이름</th>
									<th style="background-color: #FAFAFA; text-align: center;">
										성별</th>
									<th style="background-color: #FAFAFA; text-align: center;">
										이메일</th>
									<th style="background-color: #FAFAFA; text-align: center;">
										가입날짜</th>
									<th style="background-color: #FAFAFA; text-align: center;">
									</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="l" items="${memberList}">
									<tr>
										<td>${l.memberId}</td>
										<td>${l.name}</td>
										<td>${l.gender}</td>
										<td>${l.email}</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
												value="${l.regDate}" /></td>
										<td><a href='/adboard/memberDelete/${l.memberId}'
											class="btn btn-default">삭제</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<!-- 페이징 시작 -->
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<li class="page-item disabled"><a class="page-link"
									href="#" tabindex="-1">Previous</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a>
								</li>
							</ul>
						</nav>
						<!-- 페이징 끝 -->
						<div style="display: block; text-align: center;">
							<c:if test="${paging.startPage != 1 }">
								<a
									href="/memberList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
							</c:if>
							<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
								var="p">
								<c:choose>
									<c:when test="${p == paging.nowPage }">
										<b>${p }</b>
									</c:when>
									<c:when test="${p != paging.nowPage }">
										<a
											href="/memberList?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
									</c:when>
								</c:choose>
							</c:forEach>
							<c:if test="${paging.endPage != paging.lastPage}">
								<a
									href="/memberList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>





		<br>

	</div>

</body>
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href = "memberList?nowPage=${paging.nowPage}&cntPerPage=" + sel;
	}
</script>
<script type="text/javascript">
	$("#memberDelete").on("click", function() {
		location.href = "/member/memberDelete";
	});
</script>


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
										<td>${b.bno}</td>
										<td>${b.subject}</td>
										<td>${b.writer}</td>
										<td>${b.regdate}</td>
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
				<td class="info" onclick="location.href='/adboard/detail/${board.bno}'">${board.bno}</td>
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


<%@ include file="../adinclude/admin_footer.jsp"%>


</html>
<%-- </layoutTag:layout>  --%>













