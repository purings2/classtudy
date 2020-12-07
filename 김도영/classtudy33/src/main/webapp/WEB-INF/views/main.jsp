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
	display: inline-block;
	border: 1px solid rgba(0, 0, 0, 0.2);
	margin: 0;
	margin-bottom: 40px;
	margin-right: 11px;
	padding: 17px;
	box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);;
	width: 200px;
}

#columns :hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

#columns figure img {
	width: 100%;
}

#columns figure figcaption {
	border-top: 1px solid rgba(0, 0, 0, 0.2);
	padding: 14px;
	margin-top: 11px;
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

 
</style>



</head>
<body>
	<%@ include file="include/topmenu.jsp"%>
	<div class="container">
		<div class="container-fluid" style="text-align: center;">
			<img src="/static/img/logo.png" alt="logo"
				style="width: 150px; height: 150px;">
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
		</div>
		<div class="col-md-12">
			<div class="col-md-3">
				<!-- <div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button"
						data-toggle="dropdown">
						 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#">전체글보기</a></li>
						<li><a href="#">자유게시판</a></li>
						<li><a href="#">Q&A</a></li>
						<li><a href="#">그룹</a></li>
					</ul>
				</div> -->
				<div class="form-group">
					<select class="form-control" id="sel1">
						<option>인기순</option>
						<option>최신순</option>
					</select>
				</div>
			</div>
			<!-- <div class="col-md-8">
				<ul class="nav nav-pills" id="nav">
					<li><a href="#">웹</a></li>
					<li><a href="#">모바일 앱</a></li>
					<li><a href="#">게임</a></li>
					<li><a href="#">데이터베이스</a></li>
					<li><a href="#">알고리즘</a></li>
					<li><a href="#">개발도구</a></li>
					<li><a href="#">개발도구</a></li>
					<li><a href="#">개발도구</a></li>
					<li><a href="#">개발도구</a></li>
				</ul>
				<br>
			</div> -->
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

			<div class="col-md-3"></div>
		</div>
		<br>
		<div class="container-fluid">
			<h4>백엔드</h4>
			<br>
			<div id="columns">
				<%-- 	<div id="columns">
			<c:forEach var="b" items="${board}">
				<figure>
					<figcaption>${b.title} / ${b.writer}
					</figcaption>
				</figure>
			</c:forEach> --%>
				<figure>
					<img src="/static/img/java.png" alt="java" onclick="location.href='/mainlist'">
					<figcaption>Java</figcaption>
				</figure>

				<figure>
					<img src="/static/img/python.png" alt="python">
					<figcaption>Python</figcaption>
				</figure>

				<figure>
					<img src="/static/img/backend.png" alt="backend">
					<figcaption>Back-End</figcaption>
				</figure>

				<figure>
					<img src="/static/img/jdbc.png" alt="jdbc">
					<figcaption>JDBC</figcaption>
				</figure>
				<figure>
					<img src="/static/img/database.png" alt="database">
					<figcaption>데이터베이스</figcaption>
				</figure>
			</div>
			<h4>프론트엔드</h4>
			<br>
			<div id="columns">
				<figure>
					<img src="/static/img/jsp.png" alt="jsp">
					<figcaption>JSP</figcaption>
				</figure>

				<figure>
					<img src="/static/img/htmlcss.png" alt="htmlcss">
					<figcaption>HTML/CSS</figcaption>
				</figure>
				<figure>
					<img src="/static/img/react.png" alt="react">
					<figcaption>React</figcaption>
				</figure>

				<figure>
					<img src="/static/img/uiux.png" alt="uiux">
					<figcaption>UI/UX</figcaption>
				</figure>
				<figure>
					<img src="/static/img/bootstrap.png" alt="bootstrap">
					<figcaption>Bootstrap</figcaption>
				</figure>
			</div>
			<h4>IDE / 프레임워크</h4>
			<br>
			<div id="columns">
				<figure>
					<img src="/static/img/spring.png" alt="spring">
					<figcaption>Spring</figcaption>
				</figure>

				<figure>
					<img src="/static/img/django.png" alt="django">
					<figcaption>Django</figcaption>
				</figure>

				<figure>
					<img src="/static/img/android.png" alt="android">
					<figcaption>Android</figcaption>
				</figure>

				<figure>
					<img src="/static/img/nodejs.png" alt="nodejs">
					<figcaption>Node.js</figcaption>
				</figure>
				<figure>
					<img src="/static/img/swift.png" alt="swift">
					<figcaption>Swift</figcaption>
				</figure>
			</div>

		</div>
	</div>
<body>

	<%@ include file="include/footer.jsp"%>

</body>
</html>

