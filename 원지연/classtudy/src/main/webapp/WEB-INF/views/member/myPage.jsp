<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>마이페이지</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>
	
<div class="container" style="padding-bottom: 30px">
	<header>
		<h2>마이페이지</h2><br>
	</header>
	<div>
		<!-- 왼쪽 사이드 메뉴 -->
		<div class="col-sm-2 myPageMenu">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title"><b>마이페이지</b></h3>
				</div>
				<div class="list-group">
					<a class="list-group-item" href="#myAttendance">출석현황</a>
					<a class="list-group-item" href="#myPoint">마이포인트</a>
					<a class="list-group-item" href="#myReward">마이적립금</a>
					<a class="list-group-item" data-toggle="collapse" href="#accordion_submenu">
						내가 쓴 글 <span class="caret"></span>
					</a>
					<div class="collapse" id="accordion_submenu" style="border-top: 1px solid #ddd;">
						<a class="list-group-item" href="#myPost" onclick="changeBoard('class');">클래스게시판</a>
						<a class="list-group-item" href="#myPost" onclick="changeBoard('free');">자유게시판</a>
						<a class="list-group-item" href="#myPost" onclick="changeBoard('group');">그룹게시판</a>
					</div>
				</div>
			</div>
			<!-- 페이지 맨위로 가는 버튼 고정 -->
			<div style="position: fixed; bottom: 35px; left: 40px; z-index: 5;">
				<a href="#" class="btn btn-default" onclick='$("html, body").animate({scrollTop: $("html").top});'
				><b>TOP</b>&nbsp;<span class="glyphicon glyphicon-arrow-up"></span></a>
			</div>
		</div>
		<!-- 내용 영역 -->
		<div class="col-sm-10 myPageContent" style="margin: 0; padding: 0;">
			<!-- 출석현황 -->
			<div class="col-sm-12">
				<div id="myAttendance" class="panel panel-default">
					<div class="panel-heading"><h4><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;<b>출석현황</b></h4></div>
					<div class="panel-body">
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					</div>
				</div>
			</div>
			<!-- 마이포인트 -->
			<div class="col-sm-6">
				<div id="myPoint" class="panel panel-default">
					<div class="panel-heading"><h4><span class="glyphicon glyphicon-tree-deciduous"></span>&nbsp;&nbsp;<b>마이포인트</b></h4></div>
					<div class="panel-body" style="padding-bottom: 0;">
						<table class="table table-hover table-bordered" style="font-size: 13px;">
							<thead>
								<tr>
									<th style="text-align: center; width: 100px;">날짜</th>
									<th style="text-align: center; width: 300px;">내용</th>
									<th style="text-align: center; width: 60px;" ><span class="glyphicon glyphicon-apple"></span></th>
								</tr>
							</thead>
							<tbody id="pointListFirst">
								<!-- 먼저 보여질 포인트 내역 -->
								<c:if test="${empty pointListFirst}">
									<tr style="background-color: #FFFFFF;">
										<td colspan="3">내역이 없습니다.</td>
									</tr>
								</c:if>
								<c:forEach var="point" items="${pointListFirst}">
									<tr>
										<td><fmt:formatDate value="${point.accrDate}" pattern="yy/MM/dd"/></td>
										<td>${point.content}</td>
										<td>${point.changeVal}</td>
									</tr>
								</c:forEach>
								<!-- 더보기 버튼 : 총 개수가 보여질 개수보다 많으면 표시 -->
								<c:if test="${pointListCount > numOfPointList+0 }">
									<tr>
										<td colspan="3">
											<div class="accordion-heading" style="height: 10px; position: relative; top: -3px;">
												<a class="accordion-toggle" data-toggle="collapse" href="#myPointListSecond" onclick="viewSecond('#myPointListSecond', '#viewPointBtn');"
													style="color: #444444"><span id="viewPointBtn" class="glyphicon glyphicon-chevron-down"></span></a>
											</div>
										</td>
									</tr>
								</c:if>
							</tbody>
							<!-- 더보기 누르면 나오는 포인트 내역 -->
							<tbody id="myPointListSecond" class="accordion-body collapse">
								<c:forEach var="point" items="${pointListSecond}">
									<tr>
										<td><fmt:formatDate value="${point.accrDate}" pattern="yy/MM/dd"/></td>
										<td>${point.content}</td>
										<td>${point.changeVal}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- 마이적립금 -->
			<div class="col-sm-6">
				<div id="myReward" class="panel panel-default">
					<div class="panel-heading"><h4><span class="glyphicon glyphicon-piggy-bank"></span>&nbsp;&nbsp;<b>마이적립금</b></h4></div>
					<div class="panel-body" style="padding-bottom: 0;">
						<table class="table table-hover table-bordered" style="font-size: 13px;">
							<thead>
								<tr>
									<th style="text-align: center; width: 100px;">날짜</th>
									<th style="text-align: center; width: 300px;">내용</th>
									<th style="text-align: center; width: 80px;" ><span class="glyphicon glyphicon-usd"></span></th>
								</tr>
							</thead>
							<tbody id="rewardListFirst">
								<!-- 먼저 보여질 적립금 내역 -->
								<c:if test="${empty rewardListFirst}">
									<tr style="background-color: #FFFFFF;">
										<td colspan="3">내역이 없습니다.</td>
									</tr>
								</c:if>
								<c:forEach var="reward" items="${rewardListFirst}">
									<tr>
										<td><fmt:formatDate value="${reward.accrDate}" pattern="yy/MM/dd"/></td>
										<td>${reward.content}</td>
										<td>${reward.changeVal}</td>
									</tr>
								</c:forEach>
								<!-- 더보기 버튼 : 총 개수가 보여질 개수보다 많으면 표시 -->
								<c:if test="${rewardListCount > numOfRewardList+0 }">
									<tr>
										<td colspan="3">
											<div class="accordion-heading" style="height: 10px; position: relative; top: -3px;">
												<a class="accordion-toggle" data-toggle="collapse" href="#myRewardListSecond" onclick="viewSecond('#myRewardListSecond', '#viewRewardBtn');"
													style="color: #444444"><span id="viewRewardBtn" class="glyphicon glyphicon-chevron-down"></span></a>
											</div>
										</td>
									</tr>
								</c:if>
							</tbody>
							<!-- 더보기 누르면 나오는 적립금 내역 -->
							<tbody id="myRewardListSecond" class="accordion-body collapse">
								<c:forEach var="reward" items="${rewardListSecond}">
									<tr>
										<td><fmt:formatDate value="${reward.accrDate}" pattern="yy/MM/dd"/></td>
										<td>${reward.content}</td>
										<td>${reward.changeVal}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- 내가 쓴 글 -->
			<div class="col-sm-12">
				<div id="myPost" class="panel panel-default">
					<div class="panel-heading">
						<h4><span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;<b>내가 쓴 글</b></h4>
					</div>
					<div class="panel-body">
						<div class="btn-group" style="padding-bottom: 10px;">
							<a href="#myPost" id="classBtn" onclick="changeBoard('class');" class="btn btn-sm btn-info">클래스게시판</a>
							<a href="#myPost" id="freeBtn" onclick="changeBoard('free');" class="btn btn-sm btn-default">자유게시판</a>
							<a href="#myPost" id="groupBtn" onclick="changeBoard('group');" class="btn btn-sm btn-default">그룹게시판</a>
						</div>
						<table class="table table-hover table-bordered" style="font-size: 14px;">
							<thead>
								<tr>
									<th style="text-align: center; width: 70px;" >번호</th>
									<th style="text-align: center; width: 70px;" >말머리</th>
									<th style="text-align: center; width: 300px;">제목</th>
									<th style="text-align: center; width: 100px;">작성일</th>
									<th style="text-align: center; width: 60px;" >조회</th>
									<th style="text-align: center; width: 60px;" ><span class="glyphicon glyphicon-thumbs-up"></span></th>
								</tr>
							</thead>
							<!-- 출력될 게시글 목록 -->
							<tbody id="myBoardListFirst"></tbody>
							<tbody id="myBoardListSecond" class="accordion-body collapse"></tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	
	<%@ include file="../include/footer.jsp" %>
	<script>
	$(document).ready(function() {
		
		changeBoard('class');
		
	});
	</script>
</body>
</html>