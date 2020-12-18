<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Java" />
			<input type="image" src="/static/img/java.png" ></input>
				<figcaption>Java</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Spring" />
			<input type="image" src="/static/img/Spring.png" ></input>
				<figcaption>Spring</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Spring Boot" />
			<input type="image" src="/static/img/SpringBoot.png" ></input>
				<figcaption>Spring Boot</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="JDBC" />
			<input type="image" src="/static/img/JDBC.png" ></input>
				<figcaption>JDBC</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="JSTL" />
			<input type="image" src="/static/img/JSTL.png" ></input>
				<figcaption>JSTL</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Front-End" />
			<input type="image" src="/static/img/frontend.png" ></input>
				<figcaption>Front-End</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Back-End" />
			<input type="image" src="/static/img/backend.png" ></input>
				<figcaption>Back-End</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="웹 개발" />
			<input type="image" src="/static/img/webdevelop.png" ></input>
				<figcaption>웹 개발</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="앱 개발" />
			<input type="image" src="/static/img/appdevelop.png" ></input>
				<figcaption>앱 개발</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="HTML/CSS" />
			<input type="image" src="/static/img/htmlcss.png" ></input>
				<figcaption>HTML/CSS</figcaption>
			</figure>
			</form>

		</div>

		<button class="accordion">+ 더보기</button>

		<div class="panel">
			<br>
			<div id="columns">
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="JavaScript" />
			<input type="image" src="/static/img/JavaScript.png" ></input>
				<figcaption>JavaScript</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="jQuery" />
			<input type="image" src="/static/img/jQuery.png" ></input>
				<figcaption>jQuery</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="JSP" />
			<input type="image" src="/static/img/jsp.png" ></input>
				<figcaption>JSP</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Bootstrap" />
			<input type="image" src="/static/img/bootstrap.png" ></input>
				<figcaption>Bootstrap</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Python" />
			<input type="image" src="/static/img/python.png" ></input>
				<figcaption>Python</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Django" />
			<input type="image" src="/static/img/django.png" ></input>
				<figcaption>Django</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Flask" />
			<input type="image" src="/static/img/Flask.png" ></input>
				<figcaption>Flask</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="게임 개발" />
			<input type="image" src="/static/img/gamedevelop.png" ></input>
				<figcaption>게임 개발</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Unity" />
			<input type="image" src="/static/img/Unity.png" ></input>
				<figcaption>Unity</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Android" />
			<input type="image" src="/static/img/Android.png" ></input>
				<figcaption>Android</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="iOS" />
			<input type="image" src="/static/img/ios.png" ></input>
				<figcaption>iOS</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Swift" />
			<input type="image" src="/static/img/swift.png" ></input>
				<figcaption>Swift</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Node.js" />
			<input type="image" src="/static/img/nodejs.png" ></input>
				<figcaption>Node.js</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="알고리즘" />
			<input type="image" src="/static/img/Algorithmus.png" ></input>
				<figcaption>알고리즘</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="React" />
			<input type="image" src="/static/img/react.png" ></input>
				<figcaption>React</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="클라우드" />
			<input type="image" src="/static/img/cloud.png" ></input>
				<figcaption>클라우드</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Linux" />
			<input type="image" src="/static/img/Linux.png" ></input>
				<figcaption>Linux</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Git" />
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
		
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="정보보안" />
			<input type="image" src="/static/img/info_security.png" ></input>
				<figcaption>정보보안</figcaption>
			</figure>
			</form>
		
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="블록체인" />
			<input type="image" src="/static/img/blockchain.png" ></input>
				<figcaption>블록체인</figcaption>
			</figure>
			</form>
		
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="DevOps" />
			<input type="image" src="/static/img/DevOps.png" ></input>
				<figcaption>DevOps</figcaption>
			</figure>
			</form>
		
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="hacking" />
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
		
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="데이터베이스" />
			<input type="image" src="/static/img/database.png" ></input>
				<figcaption>데이터베이스</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="인공지능" />
			<input type="image" src="/static/img/AI.png" ></input>
				<figcaption>인공지능</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="SQL" />
			<input type="image" src="/static/img/sql.png" ></input>
				<figcaption>SQL</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="머신러닝" />
			<input type="image" src="/static/img/m_learning.png" ></input>
				<figcaption>머신러닝</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="R" />
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

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="UI/UX" />
			<input type="image" src="/static/img/uiux.png" ></input>
				<figcaption>UI/UX</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="3D 모델링" />
			<input type="image" src="/static/img/3D.png" ></input>
				<figcaption>3D 모델링</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="After Effects" />
			<input type="image" src="/static/img/AE.png" ></input>
				<figcaption>After Effects</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Premiere Pro" />
			<input type="image" src="/static/img/Pr.png" ></input>
				<figcaption>Premiere Pro</figcaption>
			</figure>
			</form>

			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Photoshop" />
			<input type="image" src="/static/img/Ps.png" ></input>
				<figcaption>Photoshop</figcaption>
			</figure>
			</form>
		</div>
		<button class="accordion">+ 더보기</button>
		<div class="panel">
			<br>
			<div id="columns">
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="Illustrator" />
			<input type="image" src="/static/img/il.png" ></input>
				<figcaption>Illustrator</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="편집 디자인" />
			<input type="image" src="/static/img/edit-design.png" ></input>
				<figcaption>편집 디자인</figcaption>
			</figure>
			</form>
			
			<form method="post" action="${path}/list">
			<figure>
			<input type="hidden" id="tags" name= "tags" value="InDesign" />
			<input type="image" src="/static/img/InDesign.png" ></input>
				<figcaption>InDesign</figcaption>
			</figure>
			</form>

			</div>
		</div>
	</div>
	<!-- 태그 목록 끝 -->

	<div class="container">

		<div class="back-to-top pull-right">
			<a href="#"><img title="Back to Top"
				src="https://cdn.dribbble.com/assets/icon-backtotop-d9d209c36a169637612a8fe4a1f15ab9e5763a20dbe5b7706df4e23aadf6052e.png"
				alt="Icon backtotop" style="height: 50px; width: 50px;"></a>

		</div>
	</div>

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

