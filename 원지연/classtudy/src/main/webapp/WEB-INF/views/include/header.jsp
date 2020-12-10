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
<%-- Fonts --%>
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
<%-- CSS --%>
body {
	font-family: 'IBMPlexSansKR-Regular', sans-serif;
	font-size: 15px;
	color: #666;
	background: #fff;
	text-align: center;
}
#commentList {
	font-family: 'IBMPlexSansKR-Regular', sans-serif;
	font-size: 14px;
}

<%-- Navigation Bar --%>
.navbar-brand {
	font-family: 'MaplestoryOTFBold', sans-serif;
	font-size: 28px;
	padding-top: 6px;
}
.navbar-nav {
	font-family: 'IBMPlexSansKR-Regular', sans-serif;
	font-size: 16px;
}

<%-- Multi Dropdown Menu --%>
.dropdown-submenu {
	position: relative;
}
.dropdown-submenu .dropdown-menu {
	top: 	0px;
	left: 	100%;
}

<%-- NotiList --%>
@media (min-width: 768px) {
	#notiList {
		width: 		500px;
		right: 			-50px;
		padding-top: 	15px;
		padding-bottom: 15px;
		font-family: 	'IBMPlexSansKR-Regular', sans-serif;
		font-size: 		14px;
	}
}
</style>
