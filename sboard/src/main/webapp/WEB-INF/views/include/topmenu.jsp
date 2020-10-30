<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar navbar-inverse navbar-stikcy-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle"
				data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>	
				<span class="icon-bar"></span>	
				<span class="icon-bar"></span>	
			</button>
			<a class="navbar-brand" href="/${path}">HOME</a>
		</div>
		<div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							컨트롤러연습 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="${path}/gugu.dan">구구단</a></li>
							<li><a href="${path}/gugu.dan?dan=8">구구단(단표시)</a></li>
							<li><a href="${path}/test.do">테스트</a></li>
							<li><a href="${path}/test/testA">테스트A</a></li>
							<li><a href="${path}/test/testB">테스트B</a></li>
							<li><a href="${path}/test/testC">테스트C</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							게시판 관리 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="${path}/board/insert">게시글 등록</a></li>
							<li><a href="${path}/board/list">게시글 목록</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							파일 올리기 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="${path}/upload/uploadForm">파일 올리기 (Form)</a></li>
							<li><a href="${path}/upload/uploadAjax">파일 올리기 (Ajax)</a></li>
							<li><a href="${path}/upload/address">도로명 주소 검색</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
</nav>











