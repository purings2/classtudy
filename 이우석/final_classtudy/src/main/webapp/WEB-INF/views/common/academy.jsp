<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>클래스터디 :: 학원 찾기</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
	<%@ include file="../include/topmenu.jsp" %>
	
	<div class="container-fluid">
		<header>
			<h2>학원 찾기</h2><br>
		</header>
		<div>
			<iframe src="https://m.hrd.go.kr/hrdm/ti/mtiao/MTIAO0100L.do" 
				style="display:block; width:100%; height: 75vh; border: 0; padding: 0 30px;"></iframe>
		</div>
		<!-- 
		<div id="layer"
			style="Z-INDEX: 1; TOP: -150px; LEFT: 0px; OVERFLOW: hidden; width: 100%; height: 100%; POSITION: absolute;">
			<iframe width="100%" height="100%" src="https://m.hrd.go.kr/hrdm/ti/mtiao/MTIAO0100L.do"
				name="list" style="position: relative;"></iframe>
		</div>
			 -->
	</div>
	
	<%@ include file="../include/footer.jsp" %>
</body>
</html>