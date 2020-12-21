<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>강의번호 검색</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<div class="container">
		<header>
			<h2>강의번호 검색</h2>
		</header>
		<input type="hidden" id="nowPath" name="nowPath" class="form-control"/>
		<div class="input-group" style="padding: 15px 20px;">
			<input type="text" id="keyword" name="keyword" class="form-control" placeholder="검색어를 입력하세요." maxlength=50/>
			<span class="input-group-btn">
				<button class="btn btn-info" id="searchBtn"><span class="glyphicon glyphicon-search"></span></button>
			</span>
		</div>
		<!-- 강의 목록 출력 -->
		<div id="lectureList">
			<h5>강의이름 또는 학원이름으로 강의번호를 찾을 수 있습니다.</h5>
			<h6>정확한 결과를 원하시면 검색어를 정확히 입력해주세요.</h6>
		</div>
	</div>
	<%@ include file="../include/footer.jsp" %>
	<script>
	$(document).ready(function() {
		// 부모창에서 현재 path 가져오기
		$("#nowPath").value = opener.document.getElementById("nowPath").value;
		
		// 검색 버튼이 눌렸을 경우
		$("#searchBtn").on("click", function() {
			searchLectureNo($("#keyword").val());
		});
		// 검색창에서 엔터키를 입력할 경우
		$("#keyword").keyup(function(e) { if(e.keyCode == 13) {
			searchLectureNo($("#keyword").val());
		}});
	});
	// 팝업창에서 검색한 결과 항목을 클릭하면 실행
	function setLectureNo(lectureNo, lectureName) {
		// 강의번호 및 이름을 회원가입 화면으로 보내고 창을 닫는다.
		opener.document.getElementById("lectureNo").value = lectureNo;
		opener.document.getElementById("lectureName").value = lectureName;
		window.close();
	}
	</script>
</body>
</html>