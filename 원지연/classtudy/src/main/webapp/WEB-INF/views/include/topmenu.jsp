<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.member.domain.MemberDTO" %>
<%
	// 로그인 여부 체크할 변수 선언
	boolean isLogin = false;
	// 세션에 MemberDTO가 있는지 확인하고
	// 있으면 member의 name, memberId, lectureNo를 저장한다.
	String name = "";
	String memberId = "";
	int lectureNo = 0;
	if(session.getAttribute("member") != null) {
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		memberId = member.getMemberId();
		name = member.getName();
		lectureNo = member.getLectureNo();
		isLogin = true;
	} else {
		isLogin = false;
	}
%>
<input type="hidden" id="nowPath" name="nowPath" class="form-control" value="${path}"/>
<% if (isLogin) { %>
	<input type="hidden" id="loginId" name="loginId" value="<%=memberId%>"/>
	<input type="hidden" id="loginName" name="loginName" value="<%=name%>"/>
	<nav class="navbar navbar-default navbar-stikcy-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle"
					data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>	
					<span class="icon-bar"></span>	
					<span class="icon-bar"></span>	
				</button>
				<a class="navbar-brand" href="/${path}">
					<span class="glyphicon glyphicon-education"></span>&nbsp;<span>클래스터디</span>
				</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							커뮤니티 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li class="dropdown-submenu" style="position: relative;">
								<a class="test" data-toggle="dropdown" href="#">
									그룹 <span class="caret"></span>
								</a>
								<ul class="dropdown-menu">
									<li><a href="${path}/community/group">그룹찾기</a></li>
									<li><a href="${path}/community/groupboard/all">그룹게시판</a></li>
								</ul>
							</li>
							<li><a href="${path}/community/freeboard/all">자유게시판</a></li>
							<li><a href="${path}/community/incruit">채용공고</a></li>
						</ul>
					</li>
					<li>
						<a href="${path}/academy">학원</a>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							클래스 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="${path}/class/classboard/myTIL">TIL</a></li>
							<li><a href="${path}/class/classboard/all">클래스룸</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							<span class="glyphicon glyphicon-user"></span> <%=name%>님 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="${path}/member/myPage">마이페이지</a></li>
							<li class="dropdown-submenu" style="position: relative;">
								<a class="test" data-toggle="dropdown" href="#">
									회원정보 <span class="caret"></span>
								</a>
								<ul class="dropdown-menu">
									<li><a href="${path}/member/memberUpdate">정보 수정하기</a></li>
									<li><a href="${path}/member/memberDelete">탈퇴하기</a></li>
								</ul>
							</li>
							<li><a href="${path}/member/portfolio">이력서&amp;포폴</a></li>
						</ul>
					</li>
					<!-- 알림 영역 -->
					<li class="dropdown" id="notiBadgeArea">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">알림 <span class="badge">0</span></a>
						<ul class="dropdown-menu" id="notiList"></ul>
					</li>
					<li><a href="${path}/member/logout"><span class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
				</ul>
			</div>
		</div>
	</nav>
<% } else { %>
	<nav class="navbar navbar-default navbar-stikcy-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle"
					data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>	
					<span class="icon-bar"></span>	
					<span class="icon-bar"></span>	
				</button>
				<a class="navbar-brand" href="/${path}">
					<span class="glyphicon glyphicon-education"></span>&nbsp;<span>클래스터디</span>
				</a>
			</div>
			<div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#">
								커뮤니티 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-submenu" style="position: relative;">
									<a class="test" data-toggle="dropdown" href="#">
										그룹 <span class="caret"></span>
									</a>
									<ul class="dropdown-menu">
										<li><a href="${path}/community/group">그룹찾기</a></li>
										<li><a href="${path}/community/groupboard/all">그룹게시판</a></li>
									</ul>
								</li>
								<li><a href="${path}/community/freeboard/all">자유게시판</a></li>
								<li><a href="${path}/community/incruit">채용공고</a></li>
							</ul>
						</li>
						<li>
							<a href="${path}/academy">학원</a>
						</li>
						<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#">
								클래스 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="${path}/class/classboard/myTIL">TIL</a></li>
								<li><a href="${path}/class/classboard/all">클래스룸</a></li>
							</ul>
						</li>				
						<li><a href="${path}/member/login"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
						<li><a href="${path}/member/register"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
<% } %>