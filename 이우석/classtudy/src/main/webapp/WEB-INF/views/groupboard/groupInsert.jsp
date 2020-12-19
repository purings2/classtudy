<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>그룹 찾기 게시글 작성</title>
	<%@ include file="../include/header.jsp" %>
 	<link rel="stylesheet" href="/static/css/groupsearch.css"/>
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>

<div class="insert">
	<div class="insert-banner">	
		<div class="banner__top">내 주변에서 같이 활동할 스터디 그룹을 만들어보세요</div>
	</div>
	<div class="container bodyblock">
		<form class="form-horizontal" method="post" action="${path}/community/groupsearch/groupInsert">			
			
			<div class="form-group">
				<label class="control-label col-sm-2">태&nbsp;&nbsp;&nbsp;&nbsp;그</label>
				<div class="col-sm-7" align="left">
					<input type="hidden" id="isDetail" name="isDetail" value="no"/>
					<input type="text" id="tags" name="tags" data-role="tagsinput" class="form-control"/>
				</div>
				<div class="col-sm-1" align="left">
					<div class="accordion-heading">
						<a class="accordion-toggle btn btn-default" style="background-color: #dddddd" data-toggle="collapse" href="#accordion_example_tagclass">선택</a>
					</div>
				</div>
			</div>
		<div class="form-group">
			<div class="accordion col-sm-offset-2 col-sm-8">
				<div class="accordion-group">
					<div id="accordion_example_tagclass" class="accordion-body collapse">
						<div class="accordion-inner" align="justify">
						<% // 사용하는 태그 목록
							String[] programmingTags = 
									{"Java", "Spring", "Spring Boot", "JDBC", "JSTL", "Front-End", "Back-End", "웹 개발", "앱 개발", 
									"HTML/CSS","JavaScript", "jQuery", "JSP", "Bootstrap", "Python", "Django", "Flask", "게임 개발", "Unity", 
									"Android", "iOS", "Swift", "Node.js", "알고리즘", "React", "클라우드", "Linux",  "Git"};
							String[] guardTags = {"정보보안", "블록체인", "DevOps", "해킹"};
							String[] dataTags = {"데이터베이스", "인공지능", "SQL", "머신러닝", "R"};
							String[] designTags = {"UI/UX", "3D 모델링", "After Effects", "Premiere Pro", "Photoshop", "Illustrator", "편집 디자인", "InDesign"};
							for (int i = 0; i < programmingTags.length; i++) { %>
								<a href="#" class="btn btn-sm btn-primary programmingTagBtn" style="margin-bottom: 5px;" onclick="addTag('<%=programmingTags[i]%>')"><%=programmingTags[i]%></a>
							<% } 
							for (int i = 0; i < guardTags.length; i++) { %>
								<a href="#" class="btn btn-sm btn-success guardTagBtn" style="margin-bottom: 5px;" onclick="addTag('<%=guardTags[i]%>')"><%=guardTags[i]%></a>
							<% } 
							for (int i = 0; i < dataTags.length; i++) { %>
								<a href="#" class="btn btn-sm btn-warning dataTagBtn" style="margin-bottom: 5px;" onclick="addTag('<%=dataTags[i]%>')"><%=dataTags[i]%></a>
							<% } 
							for (int i = 0; i < designTags.length; i++) { %>
								<a href="#" class="btn btn-sm btn-danger designTagBtn" style="margin-bottom: 5px;" onclick="addTag('<%=designTags[i]%>')"><%=designTags[i]%></a>
							<% } %>
						</div>
					</div>
				</div>
			</div>
		</div>
			
			
			<div class="form-group">
				<label for="title">제목</label>
				<input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요.">
			</div>
			
			<div class="form-group">
				<label for="title">그룹명</label>
				<input type="text" class="form-control" id="groupName" name="groupName" placeholder="그룹명을 입력하세요.">
			</div>
			
			<!-- <div class="flex">
				<div class="form-group">
					<i class="far fa-calendar-alt"></i>
					<label>시작 날짜</label>
					<input type="text" class="startStudy" id="startStudy" name="startStudy" size="12" placeholder="날짜 지정" readonly >
				</div>
			</div> -->
			<div class="form-group">
				<label class="control-label col-sm-4">시작 날짜</label>
				<div class="col-sm-5">
					<input type="text" id="startStudy" name="startStudy" class="form-control" 
						min="1900-01-01" max="" value="2020-12-25" maxlength="10" size="12" placeholder="날짜 지정"/>
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
			<button type="button" class="btn btn-primary" onclick="groupInsertCheck(this.form)">작성</button>
		</form>
	</div> 
</div>



<%@ include file="../include/footer.jsp" %>
<!--Groupsearch jquery datepicker -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- fontawesome -->
<script src="https://kit.fontawesome.com/b811f09f8a.js" crossorigin="anonymous"></script>
<script type="text/javascript">
<!-- datepicker function-->
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
  }); 
  
	function groupInsertCheck(InsertForm){
		var fff = InsertForm.startStudy.value;
		if(InsertForm.startStudy.value == "") {
			alert("날짜를 선택해주세요");
			$("#startStudy").focus();
			return false;
		}
		InsertForm.submit();
	}
	
	// Markdown Editor
	var testEditor;
	$(function() {
		testEditor = editormd("test-editormd", {
			width 		: "90%",
			height 		: "600px",
			syncScrolling : "single",
			path 		: "/static/js/lib/",
			readOnly 	: false
		});
	});

</script>

</body>
</html>