<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar navbar-default navbar-stikcy-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle"
				data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>	
				<span class="icon-bar"></span>	
				<span class="icon-bar"></span>	
			</button>
			<a class="navbar-brand" href="/${path}/main">클래스터디</a>
		</div>
		<div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							커뮤니티 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="${path}/community/group">그룹</a></li>
							<li><a href="${path}/community/board">자유게시판</a></li>							
						</ul>
					</li>
					<li>
						<a href="#">학원</a>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							클래스 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="${path}/class/TIL">TIL</a></li>
							<li><a href="${path}/class/classRoom">클래스룸</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							내정보 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="${path}/mypage/myInfo">내정보확인</a></li>
							<li><a href="${path}/mypage/job">이력서&포폴</a></li>
						</ul>
					</li>
					<li><a href="${path}/member/login"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
					<li><a href="${path}/member/register"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>     				
				</ul>
			</div>
		</div>
	</div>
</nav>











