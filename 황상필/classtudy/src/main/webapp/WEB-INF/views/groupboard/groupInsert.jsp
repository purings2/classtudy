<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../include/header.jsp" %>
<link rel="stylesheet" href="/static/css/main.css" />
<title>Insert title here</title>

	<!-- jquery datepicker -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>

<div class="insert">
	<div class="insert-banner">	
		<div class="banner__top">내 주변에서 같이 활동할 스터디 그룹을 만들어보세요</div>
	</div>
	<div class="container">
		<form class="form-horizontal" method="post" action="/group/groupInsert">			
			<div class="form-group">
				<label for="title">제목</label>
				<input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요.">
			</div>
			<div class="form-group">
				<label for="groupName">그룹명</label>
				<input type="text" class="form-control" id="groupName" name="groupName" placeholder="그룹명을 입력하세요.">
			</div>
			
			<div class="tags">
				<div>Tags</div>
				<div class="tagList">
					<ul>
						<li>Java</li>
						<li>HTML</li>
						<li>Spring</li>
					</ul>
				</div>
			</div>
			<div class="flex">
				<div class="form-group">
					<i class="far fa-calendar-alt"></i>
					<input type="text" class="startStudy" id="startStudy" name="startStudy" size="12" placeholder="날짜 지정" readonly >
				</div>
			</div>
			<div class="form-group">
				<label for="content">내용</label>
				<textarea class="form-control" name="content" rows="5" cols="50" placeholder="내용을 입력해 주세요."></textarea>
			</div>
			<div class="form-group flex-writer">
				<div class="flex-writer">
					<label for="writer">작성자 :</label>
				</div>
				<div class="divWriter">
					<input class="writer" name="writer" type="text" value="${member.memberId}" readonly/>
				</div>
			</div>
			<button type="submit" class="btn btn-primary" onclick="groupInsertCheck(this.form)">작성</button>
		</form>
	</div>
</div>



<%@ include file="../include/footer.jsp" %>

	<!-- jquery datepicker -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

	<!-- fontawesome -->
   <script src="https://kit.fontawesome.com/b811f09f8a.js" crossorigin="anonymous"></script>

<script type="text/javascript">
$(document).ready(function () {
	var startStudy = $("[name=startStudy]").val();
	
	if(startStudy.value == "") {
		alert("날짜를 선택해주세요");
		$("#startStudy").focus();
		return false;
	}

	alert("날짜를 선택해주세요");
    $("#startStudy").datepicker({
      buttonText: "Select date",
      showAnim: "slideDown",
    	changeMonth: true,
        nextText: '다음 달',
        prevText: '이전 달', 
        dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
        monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']	        
        /*dateFormat: "mm-dd-DD"*/
    }); 
    
});

/*	
	function groupInsertCheck(insertForm) {
		if(insertForm.startStudy.value == "") {
			alert("날짜를 지정하세요");
			insertForm.startStudy.focus();
			return false;
			}
		insertForm.submit();
    }
*/
</script>
</body>
</html>