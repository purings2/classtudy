<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>TIL게시판</title>
	<%@ include file="../include/header.jsp" %>
	<script src="https://cdn.ckeditor.com/ckeditor5/23.1.0/classic/ckeditor.js"></script>	
	<!-- 제이쿼리 ui css -->
 	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 
 	<!-- 제이쿼리 style css -->
 	<link rel="stylesheet" href="/resources/demos/style.css">
 
 	<!-- 제이쿼리 js -->
 	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 
 	<!-- 제이쿼리 ui js -->
 	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>

<body>
<%@ include file="../include/topmenu.jsp" %>
<div class="container">
  	
  	<h1>TIL(Today I Learned)</h1>	
  	<!-- 달력을 연동해서 캘린더에서 내가쓴글을 확인가능하고, 리스트로도 보여주는 방식 찾아서 적용하기 -->
	<p>오늘 공부한 내용을 자유롭게 정리하고 클래스원들과 공유하세요. 그동안 작성한 목록은 <a href="#">여기</a>에서 볼 수 있습니다.</p>
	<!-- ?모양의 아이콘을 넣고, 누르면 말풍선처럼 나오며 MarkDown관련된 설명을 보여주도록! -->
	<p align="right">아이콘</p><hr>
	<form class="form-horizontal" action="/classboard/TIL" method="post">
		<div class="createForm">
			<label>제  목</label>
			<input type="text" name="title" class="createForm" placeholder="TIL제목을 입력하세요."/>		
		</div>
		<!-- <div class="createForm">
			<label>날  짜</label>
			<input type="text" name="date" id="datepickerKR" class="createForm" placeholder="날짜를 선택해주세요."/>
		</div> -->
		<div class="createForm">
			<label>내  용</label>
			<textarea rows="100" cols="100%" id="content" name="content" class="createForm" placeholder="내용을 입력하세요."></textarea>
		</div>
		<div class="createForm">
			<label>작성자</label>
			<input type="text" name="writer" class="createForm" placeholder="작성자" value="${member.name}" readonly="readonly"/>
		</div>
		<div class="Formfooter">
			<button type="submit" class="btn btn-info">등록</button>			
		</div>
	</form>
</div>	

<script src="${pageContext.request.contextPath}/static/js/ckeditor.js"></script>
<script>
    $.datepicker.setDefaults({
        dateFormat: 'yy-mm-dd',
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
        yearSuffix: '년'
    });

    $(function() {
        $("#datepickerKR").datepicker();
    });

</script>


</body>


</html>












