<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- 자바 변수, 문법을 담당하는 core tag -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- Markdown Editor를 위한 Style -->
<link rel="stylesheet" href="/static/css/style.css" />
<link rel="stylesheet" href="/static/css/editormd.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Noto+Serif+KR&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>
div {
	<%--
	font-family: 'Noto Sans KR', sans-serif;
	font-family: 'Noto Serif KR', serif;
	--%>
	font-family: 'Nanum Gothic', sans-serif;
}

.dropdown-submenu {
	position: relative;
}
.dropdown-submenu .dropdown-menu {
	top: 	0px;
	left: 	100%;
}
</style>
