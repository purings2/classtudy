<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- 자바 변수, 문법을 담당하는 core tag -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- Markdown Editor & View -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/static/css/editormd.css" />
<link rel="stylesheet" href="/static/css/editormd.preview.css" />
<!-- Bootstrap Tags Input -->
<link rel="stylesheet" type="text/css" href="/static/css/bootstrap-tagsinput.css"/>
<!-- Chart -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<!-- Font Awesome -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body .container, body .container-fluid {
	text-align: center;
	padding: 	30px 40px;
}
.table > tbody > tr > td, .table > thead > tr > td, .table > tr > td {
	vertical-align: middle;
}
/* 본문 */
.page {
 margin-top:50px;
 margin-left: 250px;
}

/* 사이드바 */
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
.submenu {
  background-color: #FFFFFF;
}

/* Page content. The value of the margin-left property should match the value of the sidebar's width property */
div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 600px;
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