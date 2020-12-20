<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>클래스터디 :: 채용공고</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
	<%@ include file="../include/topmenu.jsp" %>
	
	<div class="container-fluid">
		<header>
			<h2>채용공고</h2><br>
		</header>
		<div>
			<iframe src="http://m.saramin.co.kr/jobs/hot100" 
				style="display:block; width:100%; height: 75vh; border: 0; padding: 0 30px;"></iframe>
		</div>
	</div>
	
	<%@ include file="../include/footer.jsp" %>
</body>
</html>