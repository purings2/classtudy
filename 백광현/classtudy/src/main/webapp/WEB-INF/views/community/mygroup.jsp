<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<%@ include file="../include/header.jsp" %> 
	<link rel="stylesheet" href="/static/css/main.css" />
	
	<!-- jquery datepicker -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>
<!-- header -->
	<header class="banner">
		<div class="banner__inner">
			<h1>이곳은 마이 그룹입니다.</h1><br>
			<div class="More">
				<i class="fas fa-angle-double-down">
					<a href="#main" class="more">Learn More</a>
				</i>
			</div>
		</div>
	</header>

<!-- Nav -->
<ul class="nav" id="navList">
  <li class="nav-item">
    <a class="nav-item__link " href="/community/group">StudyGroup</a>
  </li>
  <li class="nav-item">
    <a class="nav-item__link " href="/community/mygroup" >MyGroup</a>
  </li>
  <li class="nav-item">
    <a class="nav-item__link " href="#">MyStorage</a>
  </li>
</ul>




<%@ include file="../include/footer.jsp" %>

<!-- fontawesome 아이콘 -->
<script src="https://kit.fontawesome.com/b811f09f8a.js" crossorigin="anonymous"></script>
</body>	
</html>