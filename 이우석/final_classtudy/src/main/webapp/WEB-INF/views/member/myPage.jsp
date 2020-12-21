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
	<!-- 왼쪽 사이드 메뉴 -->
	<div class="col-sm-2 myPageMenu">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><b>마이페이지</b></h3>
			</div>
			<div class="list-group">
				<a class="list-group-item" href="#myGrade">나의 등급</a>
				<a class="list-group-item" href="#myGroup">나의 그룹</a>
				<a class="list-group-item" href="#myHistory">활동내역</a>
				<a class="list-group-item" href="#myPoint">마이포인트</a>
				<a class="list-group-item" href="#myReward">마이적립금</a>
				<a class="list-group-item" data-toggle="collapse" href="#accordion_submenu">
					내가 쓴 글 <span class="caret"></span>
				</a>
				<div class="collapse" id="accordion_submenu" style="border-top: 1px solid #ddd;">
					<a class="list-group-item" href="#myPost" onclick="changeBoard('class');">클래스룸</a>
					<a class="list-group-item" href="#myPost" onclick="changeBoard('free');">자유게시판</a>
					<a class="list-group-item" href="#myPost" onclick="changeBoard('group');">그룹게시판</a>
				</div>
			</div>
		</div>
		<!-- 페이지 맨위로 가는 버튼 고정 -->
		<div class="BackToTop">
			<a href="#" onclick='$("html, body").animate({scrollTop: $("html").top});'
			><img title="Back to Top"
				src="https://cdn.dribbble.com/assets/icon-backtotop-d9d209c36a169637612a8fe4a1f15ab9e5763a20dbe5b7706df4e23aadf6052e.png"
				alt="Icon backtotop" style="height: 50px; width: 50px; opacity: 0.5;"></a>
				<!-- <b>TOP</b>&nbsp;<span class="glyphicon glyphicon-arrow-up"></span> -->
		</div>
	</div>
	<!-- 내용 영역 -->
	<div class="col-sm-10 myPageContent" style="margin: 0; padding: 0;">
		<!-- 나의 등급 -->
		<div class="col-sm-6">
			<div id="myGrade" class="panel panel-default">
				<div class="panel-heading">
					<h4><i class="fa fa-user"></i>&nbsp;&nbsp;<b>나의 등급</b></h4>
				</div>
				<div class="panel-body" style="padding-bottom: 0;">
					<table class="table table-condensed" style="height: 110px;">
						<tbody>
							<tr>
								<td style="border: none;"
									><b><%=name%></b>님은 현재 <b style="font-size: 20px;"><%=grade%>등급 <img src="/static/img/icon/level_<%=grade%>.png" 
										alt="<%=grade%>" width="22" height="22"></b>입니다.</td>
							</tr>
							<tr>
								<td style="border: none;"><small
									>회원등급은 하루 평균 포인트를 기준으로 선정됩니다.
									<br>매일 꾸준한 활동으로 높은 등급에 도전해보세요!</small></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- 나의 그룹 -->
		<div class="col-sm-6">
			<div id="myGroup" class="panel panel-default">
				<div class="panel-heading">
					<h4><i class="fa fa-users"></i>&nbsp;&nbsp;<b>나의 그룹</b></h4>
				</div>
				<div class="panel-body" style="padding-bottom: 0;">
					<table class="table table-condensed" style="height: 110px;">
						<tbody>
							<!-- 가입한 그룹이 없을 때 -->
							<c:if test="${empty groupList}">
								<tr height="100">
									<td style="border: none;">가입한 그룹이 없습니다.</td>
								</tr>
							</c:if>
							<!-- 가입한 그룹 출력 -->
							<c:forEach var="list" items="${groupList}">
								<tr>
									<td style="border: none; width: 200px;"
										><i class="fa fa-caret-right"></i>&nbsp;&nbsp;<a href="${path}/community/groupboard/${list.groupNo}">${list.groupName}</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- 활동내역 -->
		<div class="col-sm-12">
			<div id="myHistory" class="panel panel-default">
				<div class="panel-heading">
					<h4><i class="fa fa-calendar-check-o"></i>&nbsp;&nbsp;<b>활동내역</b></h4>
				</div>
				<div class="panel-body">
					<div class="content-wrap">
						<div class="content-calendar" align="center">
							<table id="calendar" class="clearfix">
								<thead>
									<tr class="btn-wrap">
										<td><label id="prev">&lt;</label></td>
										<td id="current-year-month" colspan="5"></td>
										<td><label id="next">&gt;</label></td>
									</tr>
									<tr>
										<td class="sun">일</td>
										<td>월</td>
										<td>화</td>
										<td>수</td>
										<td>목</td>
										<td>금</td>
										<td class="sat">토</td>
									</tr>
								</thead>
								<tbody id="calendar-body" class="calendar-body"></tbody>
							</table>
						</div> <!-- content-calendar -->
						<div class="content-history">
							<div class="main-wrap">
								<div id="main-date" class="main-date"></div>
								<div id="main-status" class="main-status"></div>
							</div>
							<div class="history-wrap">
								<!-- 작성한 게시글 -->
								<div class="history-title">작성한 게시글</div>
								<div id="history-board" class="history-board">
									<table class="table table-hover table-bordered table-condensed" style="font-size: 13px;">
										<thead>
											<tr>
												<th style="text-align: center; width: 70px;" >게시판</th>
												<th style="text-align: center; width: 300px;">게시글 제목</th>
											</tr>
										</thead>
										<!-- 출력될 게시글 목록 -->
										<tbody id="myTodayBoardFirst"></tbody>
										<tbody id="myTodayBoardSecond" class="accordion-body collapse"></tbody>
									</table>
								</div>
								<!-- 작성한 댓글 -->
								<div class="history-title">작성한 댓글</div>
								<div id="history-comment" class="history-comment">
									<table class="table table-hover table-bordered table-condensed" style="font-size: 13px;">
										<thead>
											<tr>
												<th style="text-align: center; width: 70px;" >게시판</th>
												<th style="text-align: center; width: 300px;">댓글 내용</th>
											</tr>
										</thead>
										<!-- 출력될 댓글 목록 -->
										<tbody id="myTodayCommentFirst"></tbody>
										<tbody id="myTodayCommentSecond" class="accordion-body collapse"></tbody>
									</table>
								</div>
							</div> <!-- history-wrap -->
						</div> <!-- content-history -->
					</div> <!-- content-wrap -->
				</div>
			</div>
		</div>
		<!-- 마이포인트 -->
		<div class="col-sm-6">
			<div id="myPoint" class="panel panel-default">
				<div class="panel-heading">
					<h4><span class="glyphicon glyphicon-tree-deciduous"></span>&nbsp;&nbsp;<b>마이포인트</b></h4>
				</div>
				<div class="panel-body" style="padding-bottom: 0;">
					<table class="table table-hover table-bordered table-condensed" style="font-size: 13px;">
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
									<td><c:if test="${point.changeVal > 0}">+</c:if>${point.changeVal}</td>
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
									<td><c:if test="${point.changeVal > 0}">+</c:if>${point.changeVal}</td>
								</tr>
							</c:forEach>
						</tbody>
						<!-- 포인트 총 합계 -->
						<tbody id="myPointSum">
							<tr>
								<td colspan="3"><b>총 ${myPointSum} 포인트</b></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- 마이적립금 -->
		<div class="col-sm-6">
			<div id="myReward" class="panel panel-default">
				<div class="panel-heading">
					<h4><span class="glyphicon glyphicon-piggy-bank"></span>&nbsp;&nbsp;<b>마이적립금</b></h4>
				</div>
				<div class="panel-body" style="padding-bottom: 0;">
					<table class="table table-hover table-bordered table-condensed" style="font-size: 13px;">
						<thead>
							<tr>
								<th style="text-align: center; width: 100px;">날짜</th>
								<th style="text-align: center; width: 300px;">내용</th>
								<th style="text-align: center; width: 80px;" ><i class="fa fa-krw"></i></th>
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
									<td><c:if test="${reward.changeVal > 0}">+</c:if><fmt:formatNumber value="${reward.changeVal}" type="number"/></td>
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
									<td><c:if test="${reward.changeVal > 0}">+</c:if><fmt:formatNumber value="${reward.changeVal}" type="number"/></td>
								</tr>
							</c:forEach>
						</tbody>
						<!-- 적립금 총 합계 -->
						<tbody id="myRewardSum">
							<tr>
								<td colspan="3"><b>총 <fmt:formatNumber value="${myRewardSum}" type="number"/> 원</b></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- 내가 쓴 글 -->
		<div class="col-sm-12">
			<div id="myPost" class="panel panel-default">
				<div class="panel-heading">
					<h4><i class="fa fa-pencil"></i>&nbsp;&nbsp;<b>내가 쓴 글</b></h4>
				</div>
				<div class="panel-body" style="padding-bottom: 0;">
					<div class="btn-group" style="padding-bottom: 10px;">
						<a href="#myPost" id="classBtn" onclick="changeBoard('class');" class="btn btn-sm btn-info">클래스룸</a>
						<a href="#myPost" id="freeBtn" onclick="changeBoard('free');" class="btn btn-sm btn-default">자유게시판</a>
						<a href="#myPost" id="groupBtn" onclick="changeBoard('group');" class="btn btn-sm btn-default">그룹게시판</a>
					</div>
					<table class="table table-hover table-bordered" style="font-size: 14px;">
						<thead>
							<tr>
								<!-- <th style="text-align: center; width: 70px;" >번호</th> -->
								<th style="text-align: center; width: 75px;" >분류</th>
								<th style="text-align: center; width: 300px;">제목</th>
								<th style="text-align: center; width: 100px;">작성일</th>
								<th style="text-align: center; width: 50px;" >조회</th>
								<th style="text-align: center; width: 50px;" ><span class="glyphicon glyphicon-thumbs-up"></span></th>
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
	
	<%@ include file="../include/footer.jsp" %>
	<script src="/static/js/calendar.js"></script>
	<script>
	$(document).ready(function() {
		
		changeBoard('class');
		
	});
	</script>
</body>
</html>