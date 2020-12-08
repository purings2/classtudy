<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>강의번호 검색</title>
</head>
<body>
	<h3>강의번호 검색</h3>
	<input type="text" id="selectLectureNo">
	<input type="button" value="창닫기" onclick="window.close()">
	<script>
	function setLectureNo() {
		// 팝업창에서 검색한 결과 중 항목을 클릭하였을 경우 실행할 코드
		var selectLectureNo = document.getElementById("selectLecture").value;
		// 강의번호를 입력 필드에 나타낸다.
		opener.document.getElementById("lectureNo").value = selectLectureNo;
	}
	</script>
</body>
</html>