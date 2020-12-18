<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- 자바 변수, 문법을 담당하는 core tag -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="path" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>



<style>

/* 사이드바 */
    .
    /* 본문 */
    .page {
     margin-top:50px;
     margin-left: 250px;
    }


.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

/* Sidebar links */
.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  font-size: 15px;
  text-decoration: none;
}

/* Active/current link */
.sidebar a.active {
  background-color: #5DADE2;
  color: white;
  font-size: 19px;
}

/* Links on mouse-over */
.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

/* Page content. The value of the margin-left property should match the value of the sidebar's width property */
div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

/* On screens that are less than 700px wide, make the sidebar into a topbar */
@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
  .main {
  	width: 100%;
    height: auto;
    position: relative;
  }
}

/* On screens that are less than 400px, display the bar vertically, instead of horizontally */
@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>
<div class="sidebar" id="sidebar" >
  <a class="brand active" href="${path}/admin/test">클래스터디</a>
  <a class="" href="${path}/admin/test">통계</a>
  <a href="${path}/adboard/board">게시글 관리</a>
  <a href="${path}/adboard/memberList">회원 관리</a>

</div>
<%-- 
<div class="sidebar" id="sidebar">
<ul class="menu">
  <li><button class="brand" onclick="/${path}/main">클래스터디</button></li>
  <li><button class="btn active" onclick="${path}/admin/test">종합</button></li>
  <li><button class="btn" onclick="${path}/admin/test">방문자</button></li>
  <li><button class="btn" onclick="${path}/admin/test">멤버</button></li>
  <li><button class="btn" onclick="${path}/admin/board">게시글</button></li>
  <li onclick="return confirm('로그아웃 하시겠습니까?');">
  <button class="btn" onclick="/admin/logout">로그아웃</button>
  </li>
</ul>
</div> --%>



