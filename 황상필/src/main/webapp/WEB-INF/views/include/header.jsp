<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- 자바 변수, 문법을 담당하는 core tag -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!-- Markdown Editor & View -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/static/css/editormd.css" />
<link rel="stylesheet" href="/static/css/editormd.preview.css" />
<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- Bootstrap Tags Input -->
<link rel="stylesheet" type="text/css" href="/static/css/bootstrap-tagsinput.css"/>
<style>
@font-face {
	font-family: 'MaplestoryOTFBold';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/MaplestoryOTFBold.woff') format('woff');
	font-weight: normal;
	font-style: normal;
}
@font-face {
	font-family: 'IBMPlexSansKR-Regular';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff') format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	font-family: 	'IBMPlexSansKR-Regular', sans-serif;
	font-size: 		15px;
	color: 			#666666;
	background: 	#FFFFFF;
	text-align: 	center;
}
.table > tbody > tr > td {
	vertical-align: middle;
}
.glyphicon {
	top: 2px;
}
.navbar-brand {
	font-family: 	'MaplestoryOTFBold', sans-serif;
	font-size: 		28px;
	padding-top: 	6px;
}
.navbar-nav {
	font-family: 	'IBMPlexSansKR-Regular', sans-serif;
	font-size: 		16px;
}
.dropdown-submenu {
	position: relative;
}
.dropdown-submenu .dropdown-menu {
	top: 		-5px;
	left: 		100%;
	width: 		100%;
}
.dropdown-menu, .dropdown-menu > li {
	text-align: center;
	min-width: 	0px;
}
@media (min-width: 768px) {
	#notiList {
		width: 			500px;
		right: 			-50px;
		padding-top: 	15px;
		padding-bottom: 15px;
		font-size: 		14px;
	}
}
@media (max-width: 992px) {
	.myPageMenu, .myPageContent {
		width: 	100%;
	}
}
#commentList {
	font-size: 14px;
}
</style>