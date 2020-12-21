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
		font-size: 14px;
		font-weight: bold;
	}
	.card-body table tr {
		font-size: 12px;
		text-align: center;
	}
	</style>
</head>
<body>
	<%@ include file="../include/admin_menu.jsp" %>
	<div class="content">
		<div class="container-fluid" style="padding: 30px 30px;">
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
						<table class="table table-hover table-condensed">
							<thead>
								<tr>
									<th style="text-align: center; width: 100px;">가입일</th>
									<th style="text-align: center; width: 80px;" >아이디</th>
									<th style="text-align: center; width: 80px;" >이름</th>
									<th style="text-align: center; width: 50px;" >성별</th>
									<th style="text-align: center; width: 200px;">강의이름</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty memberList}">
									<tr style="background-color: #FFFFFF;">
										<td colspan="5">회원 목록이 없습니다.</td>
									</tr>
								</c:if>
								<c:forEach var="list" items="${memberList}">
									<tr>
										<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd"/></td>
										<td><a href="${path}/admin/member/detail/${list.memberId}">${list.memberId}</a></td>
										<td>${list.name}</td>
										<c:if test="${list.gender == 'M'}">
											<td>남성</td>
										</c:if>
										<c:if test="${list.gender == 'F'}">
											<td>여성</td>
										</c:if>
										<c:if test="${list.lectureNo == 0}">
											<td>종료된 강의</td>
										</c:if>
										<c:if test="${list.lectureNo != 0}">
											<td>${list.lectureName}</td>
										</c:if>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div><!-- 회원 목록 end -->
				<div class="card text-black mb-4 bg-default"
					style="width: 300px; /* background: #F7DC6F; */">
					<div class="card-header" style="background: #FCF3CF;">최근에 추가된 강의</div>
					<div class="card-body">
						<table class="table table-hover table-condensed">
							<thead>
								<tr>
									<th style="text-align: center; width: 50px;" >번호</th>
									<th style="text-align: center; width: 300px;">강의 이름</th>
									<th style="text-align: center; width: 200px;">학원 이름</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty lectureList}">
									<tr style="background-color: #FFFFFF;">
										<td colspan="3">등록된 강의가 없습니다.</td>
									</tr>
								</c:if>
								<c:forEach var="list" items="${lectureList}">
									<tr>
										<td>${list.lectureNo}</td>
										<td>${list.lectureName}</td>
										<td>${list.lectureAcademy}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div><!-- 강의 목록 end -->
			</div>
			<div class="card-deck">
				<div class="card text-black mb-4 bg-default"
					style="width: 300px; /* background: #D7BDE2; */">
					<div class="card-header" style="background: #E8DAEF;">최근에 올라온 게시글</div>
					<div class="card-body">
						<table class="table table-hover table-condensed">
							<thead>
								<tr>
									<th style="text-align: center; width: 80px;" >게시판</th>
									<th style="text-align: center; width: 70px;" >번호</th>
									<th style="text-align: center; width: 400px;">제목</th>
									<th style="text-align: center; width: 100px;">작성자</th>
									<th style="text-align: center; width: 100px;">작성일</th>
									<th style="text-align: center; width: 60px;" >조회</th>
									<th style="text-align: center; width: 60px;" ><span class="glyphicon glyphicon-thumbs-up"></span></th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty boardList}">
									<tr style="background-color: #FFFFFF;">
										<td colspan="7">게시글이 없습니다.</td>
									</tr>
								</c:if>
								<c:forEach var="board" items="${boardList}">
									<tr>
										<c:if test="${board.tableName == 'classboard'}">
											<td>클래스</td>
										</c:if>
										<c:if test="${board.tableName == 'freeboard'}">
											<td>자유</td>
										</c:if>
										<c:if test="${board.tableName == 'groupboard'}">
											<td>그룹</td>
										</c:if>
										<td>${board.boardNo}</td>
										<td>
											<a href="${path}/adboard/detail/${board.tableName}/${board.boardNo}">${board.title}</a>&nbsp;
											<a href="${path}/adboard/detail/${board.tableName}/${board.boardNo}/comment"><span class="badge">${board.commentNum}</span></a>
										</td>
										<td>${board.writerName} (${board.writer})</td>
										<td><fmt:formatDate value="${board.writeDate}" pattern="yyyy-MM-dd"/></td>
										<td>${board.views}</td>
										<td>${board.likes}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div><!-- 게시글 목록 end -->
				<div class="card text-black mb-4 bg-default"
					style="width: 300px;  /* background: #F1948A; */">
					<div class="card-header" style="background: #FADBD8;">최근에 올라온 댓글</div>
					<div class="card-body">
						<table class="table table-hover table-condensed">
							<thead>
								<tr>
									<th style="text-align: center; width: 80px;" >게시판</th>
									<th style="text-align: center; width: 70px;" >번호</th>
									<th style="text-align: center; width: 400px;">내용</th>
									<th style="text-align: center; width: 100px;">작성자</th>
									<th style="text-align: center; width: 100px;">작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty commentList}">
									<tr style="background-color: #FFFFFF;">
										<td colspan="5">댓글이 없습니다.</td>
									</tr>
								</c:if>
								<c:forEach var="comment" items="${commentList}">
									<tr>
										<c:if test="${comment.tableName == 'classboard'}">
											<td>클래스</td>
										</c:if>
										<c:if test="${comment.tableName == 'freeboard'}">
											<td>자유</td>
										</c:if>
										<c:if test="${comment.tableName == 'groupboard'}">
											<td>그룹</td>
										</c:if>
										<td>${comment.commentNo}</td>
										<td>
											<a href="${path}/adboard/detail/${comment.tableName}/${comment.boardNo}/comment">${comment.content}</a>
											<c:if test="${comment.tableName == 'freeboard'}">
												<span class="badge" style="background: #eee; color: #666;"><i class="glyphicon glyphicon-thumbs-up"></i> ${comment.commentLikesNum}</span>
											</c:if>
										</td>
										<td>${comment.writerName} (${comment.writer})</td>
										<td><fmt:formatDate value="${comment.writeDate}" pattern="yyyy-MM-dd"/></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div><!-- 댓글 목록 end -->
			</div>
		</div>
	</div>
	<%@ include file="../include/admin_footer.jsp"%>
</body>
</html>