<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>테스트</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>
	<div class="layout">
	
		<header>
			<h1>Today I learned</h1><br>
		</header>
	
		<div id="test-editormd" class="editormd-onlyread">
			<textarea style="display:none;" hidden="hidden">## 테스트트트트ㅡ트
- 사과
- 바나나</textarea>
		</div>

	</div>	
	
	<%@ include file="../include/footer.jsp" %>
	
	<script src="/static/js/csfunction.js"></script>
	
	<!-- Markdown Editor -->
	<script src="/static/js/editormd.js"></script> 
	<script type="text/javascript">
	var testEditor;
	$(function() {
		testEditor = editormd("test-editormd", {
			width 		: "90%",
			height 		: 640,
			syncScrolling : "single",
			path 		: '/static/lib/'
		});
	});
	</script>
</body>
</html>