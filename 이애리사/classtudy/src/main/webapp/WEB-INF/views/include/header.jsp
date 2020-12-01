<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- 자바 변수, 문법을 담당하는 core tag -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!-- Markdown Editor & View -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/static/css/style.css" />
<link rel="stylesheet" href="/static/css/editormd.css" />
<link rel="stylesheet" href="/static/css/editormd.preview.css" />
<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- Fonts -->
<!-- 
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
 -->
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
.container {
	font-family: 'IBMPlexSansKR-Regular', sans-serif;
	font-size: 15px;
	<%--
	font-family: 'Nanum Gothic', sans-serif;
	font-family: 'Noto Sans KR', sans-serif;
	font-family: 'Noto Serif KR', serif;
	--%>
}
#commentList {	
	font-family: 'IBMPlexSansKR-Regular', sans-serif;
	font-size: 14px;
}
.navbar-brand {
	font-family: 'MaplestoryOTFBold', sans-serif;
	font-size: 28px;
	padding-top: 6px;
}
.navbar-nav {
	font-family: 'IBMPlexSansKR-Regular', sans-serif;
	font-size: 16px;
}
.dropdown-submenu {
	position: relative;
}
.dropdown-submenu .dropdown-menu {
	top: 	0px;
	left: 	100%;
}
</style>