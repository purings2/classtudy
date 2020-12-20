<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스터디</title>
<%@ include file="include/header.jsp"%>
<style>
#columns {
	column-width: 100%;
	column-gap: 10px;
	text-align: center;
}

#columns figure {
/* 	display: inline-block;
	border: 1px solid rgba(0, 0, 0, 0.2);
	border-radius: 15px 15px 15px 15px;
	margin: 0;
	margin-bottom: 40px;
	margin-right: 11px;
	padding: 17px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
	width: 200px;
	cursor: pointer;
	transition: 0.2s; */
}
#columns form {
	display: inline-block;
	border: 1px solid rgba(0, 0, 0, 0.2);
	border-radius: 15px 15px 15px 15px;
	margin: 0;
	margin-bottom: 40px;
	margin-right: 11px;
	padding: 17px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
	width: 200px;
	cursor: pointer;
	transition: 0.2s;
}

#columns :hover:not(img):not(figcaption):not(figure):not(input) {
	box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}

#columns figure img,input {
	width: 100%;
	outline: 0;
	/* pointer-events: none; */
}

#columns figure figcaption {
	border-top: 1px solid rgba(0, 0, 0, 0.2);
	padding: 14px;
	margin-top: 11px;
	/* pointer-events: none; */
}

#nav a {
	color: #777;
}

#nav a:focus {
	color: #494949;
	/*  background-color: #5c8a36; */
}

#btn {
	display: inline-block;
	margin: 0 auto;
	text-align: center;
}

#btn label:active {
	color: #777;
}

#main {
	background-color: #8EC5FC;
	background-image: linear-gradient(62deg, #8EC5FC 0%, #E0C3FC 100%);
}

#footer {
	padding: 60px;
}

.accordion {
	background-color: #ECF0F1;
	color: #444;
	cursor: pointer;
	padding: 10px;
	width: 150px;
	height: 40px;
	border: none;
	text-align: center;
	outline: none;
	font-size: 12px;
	transition: 0.4s;
	border: none;
}

.active, .accordion:hover {
	background-color: #ccc;
}

.panel {
	padding: 0 18px;
	display: none;
	background-color: white;
	overflow: hidden;
}

h3 {
	background-color: #F8F9F9;
	padding: 5px;
}

.BackToTop {
   z-index:    20;
   position:    fixed;
   bottom:    40px;
   right: 	8%;
   opacity: 50%
}
@media (max-width: 992px) {
   .BackToTop {
      z-index:    5;
      position:    fixed;
      bottom:    40px;
  	  right:    30px;
  	  opacity: 50%;
  	  
   }
}
</style>



</head>
<body>
	<%@ include file="include/topmenu.jsp"%>

	<div class="container-fluid" id="main" style="text-align: center;">
		<br> <br> <br> <br>
		<!-- 로고 -->
		<img src="/static/img/logo.png" alt="logo"
			style="width: 180px; height: 180px;">
		<!-- 로고 -->
		<!-- 검색창 -->
		<div class="container-fluid" style="width: 440px;">
			<br>
			<form action="" class="search-form">
				<div class="form-group has-feedback">
					<label for="search" class="sr-only">Search</label> <input
						type="text" class="form-control" name="search" id="search"
						placeholder="search"> <span
						class="glyphicon glyphicon-search form-control-feedback"></span>
				</div>
			</form>
		</div>
		<!-- 검색창 -->
		<br> <br> <br> <br>
	</div>
	<div class="container-fluid">
		<!-- 카테고리 및 상단 메뉴 -->
		<!-- <div class="col-md-3">
				
				<div class="form-group">
					<select class="form-control" id="sel1">
						<option>인기순</option>
						<option>최신순</option>
					</select>
				</div>
			</div>
			
			<div class="col-md-6" id="btn">
				<div class="btn-group" data-toggle="buttons" >
					<label class="btn btn-default active"> <input type="radio"
						name="options" id="option1" autocomplete="off" checked> 웹
					</label>
					<label class="btn btn-default"> <input type="radio"
						name="options" id="option2" autocomplete="off"> 모바일 앱
					</label>
					<label class="btn btn-default"> <input type="radio"
						name="options" id="option3" autocomplete="off"> 게임
					</label>
					<label class="btn btn-default"> <input type="radio"
						name="options" id="option3" autocomplete="off"> 데이터베이스
					</label>
					<label class="btn btn-default"> <input type="radio"
						name="options" id="option3" autocomplete="off"> 알고리즘
					</label>
					<label class="btn btn-default"> <input type="radio"
						name="options" id="option3" autocomplete="off"> 개발도구
					</label>
				</div>
				<br>
			</div>

			<div class="col-md-3"></div> -->
		<!-- 카테고리 및 상단 메뉴  끝-->

	</div>
	<br>
	<br>
	<!-- 게시판 랭킹 -->
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="container-fluid" style="background-color: #D1F2EB;">자유게시판
					순위</div>
				<table class="table table-hover table-bordered">
					<thead>
						<tr>
							<th style="text-align: center;">제목</th>
							<th style="text-align: center;">작성자</th>
							<th style="text-align: center;">작성 날짜</th>
							<th style="text-align: center;">좋아요</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="b" items="${board}">
							<tr align="center">
								<td><a class="rankingcolor" href="${path}/community/freeboard/detail/${b.boardNo}">${b.title}</a></td>
								<td><a class="rankingcolor" href="${path}/community/freeboard/detail/${b.boardNo}">${b.writer}</a></td>
								<td><a class="rankingcolor" href="${path}/community/freeboard/detail/${b.boardNo}">${b.writeDate}</a></td>
								<td><a class="rankingcolor" href="${path}/community/freeboard/detail/${b.boardNo}">${b.likes}</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-md-6">
				<div class="container-fluid" style="background: #E8DAEF;">클래스룸게시판
					순위</div>
				<table class="table table-hover table-bordered">
					<thead>
						<tr>
							<th style="text-align: center;">제목</th>
							<th style="text-align: center;">작성자</th>
							<th style="text-align: center;">작성 날짜</th>
							<th style="text-align: center;">좋아요</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="b" items="${board2}">
							<tr>
								<td><a class="rankingcolor" href="/class/detail/${b.boardNo}">${b.title}</a></td>
								<td><a class="rankingcolor" href="/class/detail/${b.boardNo}">${b.writer}</a></td>
								<td><a class="rankingcolor" href="/class/detail/${b.boardNo}">${b.writeDate}</a></td>
								<td><a class="rankingcolor" href="/class/detail/${b.boardNo}">${b.likes}</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- 게시판 랭킹 -->
	
	<!-- 태그 목록 -->
	<div class="container">
		<h3>개발 / 프로그래밍</h3>
		<br>
		<div id="columns">
			<%-- 	<div id="columns">
			<c:forEach var="b" items="${board}">
				<figure>
					<figcaption>${b.title} / ${b.writer}
					</figcaption>
				</figure>
			</c:forEach> --%>
			<form method="post" action="${path}/tags/Java">
			<figure>
			<input type="hidden" id="tags_Java" name= "tags_Java" value="Java" />
			<input type="image" src="/static/img/java.png" ></input>
				<figcaption>Java</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/Spring">
			<figure>
			<input type="hidden" id="tags_Spring" name= "tags_Spring" value="Spring" />
			<input type="image" src="/static/img/Spring.png" ></input>
				<figcaption>Spring</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/SpringBoot">
			<figure>
			<input type="hidden" id="tags_SpringBoot" name= "tags_SpringBoot" value="Spring Boot" />
			<input type="image" src="/static/img/SpringBoot.png" ></input>
				<figcaption>Spring Boot</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/JDBC">
			<figure>
			<input type="hidden" id="tags_JDBC" name= "tags_JDBC" value="JDBC" />
			<input type="image" src="/static/img/JDBC.png" ></input>
				<figcaption>JDBC</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/JSTL">
			<figure>
			<input type="hidden" id="tags_JSTL" name= "tags_JSTL" value="JSTL" />
			<input type="image" src="/static/img/JSTL.png" ></input>
				<figcaption>JSTL</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/Front-End">
			<figure>
			<input type="hidden" id="tags_Front-End" name= "tags_Front-End" value="Front-End" />
			<input type="image" src="/static/img/frontend.png" ></input>
				<figcaption>Front-End</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/Back-End">
			<figure>
			<input type="hidden" id="tags_Back-End" name= "tags_Back-End" value="Back-End" />
			<input type="image" src="/static/img/backend.png" ></input>
				<figcaption>Back-End</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/웹-개발">
			<figure>
			<input type="hidden" id="tags_웹-개발" name= "tags_웹-개발" value="웹 개발" />
			<input type="image" src="/static/img/webdevelop.png" ></input>
				<figcaption>웹 개발</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/앱-개발">
			<figure>
			<input type="hidden" id="tags_앱-개발" name= "tags_앱-개발" value="앱 개발" />
			<input type="image" src="/static/img/appdevelop.png" ></input>
				<figcaption>앱 개발</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/HTML&CSS">
			<figure>
			<input type="hidden" id="tags_HTMLCSS" name= "tags_HTMLCSS" value="HTML/CSS" />
			<input type="image" src="/static/img/htmlcss.png" ></input>
				<figcaption>HTML/CSS</figcaption>
			</figure>
			</form>

		</div>

		<button class="accordion">+ 더보기</button>

		<div class="panel">
			<br>
			<div id="columns">
			
			<form method="post" action="${path}/tags/JavaScript">
			<figure>
			<input type="hidden" id="tags_JavaScript" name= "tags_JavaScript" value="JavaScript" />
			<input type="image" src="/static/img/JavaScript.png" ></input>
				<figcaption>JavaScript</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/jQuery">
			<figure>
			<input type="hidden" id="tags_jQuery" name= "tags_jQuery" value="jQuery" />
			<input type="image" src="/static/img/jQuery.png" ></input>
				<figcaption>jQuery</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/JSP">
			<figure>
			<input type="hidden" id="tags_JSP" name= "tags_JSP" value="JSP" />
			<input type="image" src="/static/img/jsp.png" ></input>
				<figcaption>JSP</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/Bootstrap">
			<figure>
			<input type="hidden" id="tags_Bootstrap" name= "tags_Bootstrap" value="Bootstrap" />
			<input type="image" src="/static/img/bootstrap.png" ></input>
				<figcaption>Bootstrap</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/Python">
			<figure>
			<input type="hidden" id="tags_Python" name= "tags_Python" value="Python" />
			<input type="image" src="/static/img/python.png" ></input>
				<figcaption>Python</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/Django">
			<figure>
			<input type="hidden" id="tags_Django" name= "tags_Django" value="Django" />
			<input type="image" src="/static/img/django.png" ></input>
				<figcaption>Django</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/Flask">
			<figure>
			<input type="hidden" id="tags_Flask" name= "tags_Flask" value="Flask" />
			<input type="image" src="/static/img/Flask.png" ></input>
				<figcaption>Flask</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/게임-개발">
			<figure>
			<input type="hidden" id="tags_게임-개발" name= "tags_게임-개발" value="게임 개발" />
			<input type="image" src="/static/img/gamedevelop.png" ></input>
				<figcaption>게임 개발</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/Unity">
			<figure>
			<input type="hidden" id="tags_Unity" name= "tags_Unity" value="Unity" />
			<input type="image" src="/static/img/Unity.png" ></input>
				<figcaption>Unity</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/Android">
			<figure>
			<input type="hidden" id="tags_Android" name= "tags_Android" value="Android" />
			<input type="image" src="/static/img/Android.png" ></input>
				<figcaption>Android</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/iOS">
			<figure>
			<input type="hidden" id="tags_iOS" name= "tags_iOS" value="iOS" />
			<input type="image" src="/static/img/ios.png" ></input>
				<figcaption>iOS</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/Swift">
			<figure>
			<input type="hidden" id="tags_Swift" name= "tags_Swift" value="Swift" />
			<input type="image" src="/static/img/swift.png" ></input>
				<figcaption>Swift</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/Nodejs">
			<figure>
			<input type="hidden" id="tags_Node-js" name= "tags_Node-js" value="Node.js" />
			<input type="image" src="/static/img/nodejs.png" ></input>
				<figcaption>Node.js</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/알고리즘">
			<figure>
			<input type="hidden" id="tags_알고리즘" name= "tags_알고리즘" value="알고리즘" />
			<input type="image" src="/static/img/Algorithmus.png" ></input>
				<figcaption>알고리즘</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/React">
			<figure>
			<input type="hidden" id="tags_React" name= "tags_React" value="React" />
			<input type="image" src="/static/img/react.png" ></input>
				<figcaption>React</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/클라우드">
			<figure>
			<input type="hidden" id="tags_클라우드" name= "tags_클라우드" value="클라우드" />
			<input type="image" src="/static/img/cloud.png" ></input>
				<figcaption>클라우드</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/Linux">
			<figure>
			<input type="hidden" id="tags_Linux" name= "tags_Linux" value="Linux" />
			<input type="image" src="/static/img/Linux.png" ></input>
				<figcaption>Linux</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/Git">
			<figure>
			<input type="hidden" id="tags_Git" name= "tags_Git" value="Git" />
			<input type="image" src="/static/img/Git.png" ></input>
				<figcaption>Git</figcaption>
			</figure>
			</form>

			</div>

		</div>
		<!-- 여백 -->
		<div class="container" style="padding: 7px; margin-top: 10px;"></div>
		<!-- 여백 -->
		<h3>IT 보안 / 네트워크</h3>
		<br>
		<div id="columns">
		
			<form method="post" action="${path}/tags/정보보안">
			<figure>
			<input type="hidden" id="tags_정보보안" name= "tags_정보보안" value="정보보안" />
			<input type="image" src="/static/img/info_security.png" ></input>
				<figcaption>정보보안</figcaption>
			</figure>
			</form>
		
			<form method="post" action="${path}/tags/블록체인">
			<figure>
			<input type="hidden" id="tags_블록체인" name= "tags_블록체인" value="블록체인" />
			<input type="image" src="/static/img/blockchain.png" ></input>
				<figcaption>블록체인</figcaption>
			</figure>
			</form>
		
			<form method="post" action="${path}/tags/DevOps">
			<figure>
			<input type="hidden" id="tags_DevOps" name= "tags_DevOps" value="DevOps" />
			<input type="image" src="/static/img/DevOps.png" ></input>
				<figcaption>DevOps</figcaption>
			</figure>
			</form>
		
			<form method="post" action="${path}/tags/hacking">
			<figure>
			<input type="hidden" id="tags_hacking" name= "tags_hacking" value="hacking" />
			<input type="image" src="/static/img/hacking.png" ></input>
				<figcaption>해킹</figcaption>
			</figure>
			</form>
		</div>
		<!-- 여백 -->
		<div class="container" style="padding: 7px; margin-top: 10px;"></div>
		<!-- 여백 -->
		<h3>데이터사이언스</h3>
		<br>
		<div id="columns">
		
			<form method="post" action="${path}/tags/데이터베이스">
			<figure>
			<input type="hidden" id="tags_데이터베이스" name= "tags_데이터베이스" value="데이터베이스" />
			<input type="image" src="/static/img/database.png" ></input>
				<figcaption>데이터베이스</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/인공지능">
			<figure>
			<input type="hidden" id="tags_인공지능" name= "tags_인공지능" value="인공지능" />
			<input type="image" src="/static/img/AI.png" ></input>
				<figcaption>인공지능</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/SQL">
			<figure>
			<input type="hidden" id="tags_SQL" name= "tags_SQL" value="SQL" />
			<input type="image" src="/static/img/sql.png" ></input>
				<figcaption>SQL</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/머신러닝">
			<figure>
			<input type="hidden" id="tags_머신러닝" name= "tags_머신러닝" value="머신러닝" />
			<input type="image" src="/static/img/m_learning.png" ></input>
				<figcaption>머신러닝</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/R">
			<figure>
			<input type="hidden" id="tags_R" name= "tags_R" value="R" />
			<input type="image" src="/static/img/R.png" ></input>
				<figcaption>R</figcaption>
			</figure>
			</form>
		</div>
		<!-- 여백 -->
		<div class="container" style="padding: 7px; margin-top: 10px;"></div>
		<!-- 여백 -->
		<h3>디자인</h3>
		<br>
		<div id="columns">

			<form method="post" action="${path}/tags/UIUX">
			<figure>
			<input type="hidden" id="tags_UIUX" name= "tags_UIUX" value="UI/UX" />
			<input type="image" src="/static/img/uiux.png" ></input>
				<figcaption>UI/UX</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/3D모델링">
			<figure>
			<input type="hidden" id="tags_3D모델링" name= "tags_3D모델링" value="3D 모델링" />
			<input type="image" src="/static/img/3D.png" ></input>
				<figcaption>3D 모델링</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/After-Effects">
			<figure>
			<input type="hidden" id="tags_After-Effects" name= "tags_After-Effects" value="After Effects" />
			<input type="image" src="/static/img/AE.png" ></input>
				<figcaption>After Effects</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/Premiere-Pro">
			<figure>
			<input type="hidden" id="tags_Premiere-Pro" name= "tags_Premiere-Pro" value="Premiere Pro" />
			<input type="image" src="/static/img/Pr.png" ></input>
				<figcaption>Premiere Pro</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/tags/Photoshop">
			<figure>
			<input type="hidden" id="tags_Photoshop" name= "tags_Photoshop" value="Photoshop" />
			<input type="image" src="/static/img/Ps.png" ></input>
				<figcaption>Photoshop</figcaption>
			</figure>
			</form>
		</div>
		<button class="accordion">+ 더보기</button>
		<div class="panel">
			<br>
			<div id="columns">
			
			<form method="post" action="${path}/tags/Illustrator">
			<figure>
			<input type="hidden" id="tags_Illustrator" name= "tags_Illustrator" value="Illustrator" />
			<input type="image" src="/static/img/il.png" ></input>
				<figcaption>Illustrator</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/편집-디자인">
			<figure>
			<input type="hidden" id="tags_편집-디자인" name= "tags_편집-디자인" value="편집 디자인" />
			<input type="image" src="/static/img/edit-design.png" ></input>
				<figcaption>편집 디자인</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/tags/InDesign">
			<figure>
			<input type="hidden" id="tags_InDesign" name= "tags_InDesign" value="InDesign" />
			<input type="image" src="/static/img/InDesign.png" ></input>
				<figcaption>InDesign</figcaption>
			</figure>
			</form>

			</div>
		</div>
	</div>
	<!-- 태그 목록 끝 -->
	
	<!-- BackToTop -->
	<div class="container">
		<div class="BackToTop">
         <a href="#"><img title="BacktoTop"
				src="https://cdn.dribbble.com/assets/icon-backtotop-d9d209c36a169637612a8fe4a1f15ab9e5763a20dbe5b7706df4e23aadf6052e.png"
				alt="Icon backtotop" style="height: 50px; width: 50px;"></a>
      </div>
	</div>
	<!-- BackToTop -->
	

	<!-- Footer -->
	<footer class="page-footer font-small blue pt-4">
		<hr class="clearfix w-100 d-md-none pb-3">
		<!-- Footer Links -->
		<div class="container-fluid text-center text-md-left">
			<!-- Grid row -->
			<div class="row">
				<div class="col-md-2 mt-md-0 mt-0" style="text-align: left;">
				</div>
				<!-- Grid column -->
				<div class="col-md-4 mt-md-0 mt-3" style="text-align: left;">
					<!-- Content -->
					<h4 class="text-uppercase">[ 클래스터디 ]</h4>
					<p>it계열 학생들을 위한 클래스중심의 스터디 플랫폼</p>
					<p>스프링부트, 자바, JSP, MYSQL, LOMBOK, JSTL, Thymeleaf ...</p>
					<p>2020년 더조은아카데미 강남점</p>
					<p>이애리사, 백광현, 김정빈, 황상필, 원지연, 김도영, 이우석</p>
				</div>
				<!-- Grid column -->
				<!-- Grid column -->
				<div class="col-md-3 mb-md-0 mb-3">
					<!-- Links -->
					<h5 class="text-uppercase">Links</h5>
					<ul class="list-unstyled">
						<li><a href="https://github.com/purings2/classtudy">Git-Hub</a></li>
						<li><a
							href="https://www.notion.so/teamtop/d3818d5570784957b2f3cba64fb068bc">Notion</a></li>
						<li><a href="#!">Link 3</a></li>
						<li><a href="#!">Link 4</a></li>
					</ul>
				</div>
				<!-- Grid column -->
				<!-- Grid column -->
				<div class="col-md-3 mb-md-0 mb-3"></div>
				<!-- Grid column -->
			</div>
			<!-- Grid row -->
		</div>
		<!-- Footer Links -->
		<hr class="clearfix w-100 d-md-none">
		<!-- Copyright -->
		<div class="footer-copyright text-center py-3" id="footer">
			© 2020 Copyright: <a href="https://github.com/purings2/classtudy">
				classtudy.com</a>
		</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->



	<%@ include file="include/footer.jsp"%>
</body>
<script>
	var acc = document.getElementsByClassName("accordion");
	var i;

	for (i = 0; i < acc.length; i++) {
		acc[i].addEventListener("click", function() {
			this.classList.toggle("active");
			var panel = this.nextElementSibling;
			if (panel.style.display === "block") {
				panel.style.display = "none";

			} else {
				panel.style.display = "block";

			}
		});
	}
</script>
</html>