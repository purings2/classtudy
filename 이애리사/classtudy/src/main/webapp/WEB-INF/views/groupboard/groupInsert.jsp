<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<%@ include file="../include/header.jsp" %>
	<title>Insert title here</title>
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>

<div class="insert">
	<div class="insert-banner">	
		<div class="banner__top">내 주변에서 같이 활동할 스터디 그룹을 만들어보세요</div>
	</div>
	<div class="container bodyblock">
		<form class="form-horizontal" method="post" action="/community/groupsearch/groupInsert">
			
			<div class="form-group tagForm">
			<label class="control-label labelTag">태&nbsp;&nbsp;&nbsp;그</label>
			
				<input type="text" id="tags" name="tags" data-role="tagsinput" class="form-control"/>
					<ul class="nav navbar-right">
						<li class="dropdown">
							<a class="dropdown" data-toggle="dropdown" href="#"> 태그 선택<span class="caret"></span></a>
								<ul class="dropdown-menu dropdown-menu-right dropdown-tag">
									<li>
										<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="javaTag" name="javaTag">Java</button> 
										<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="springTag" name="springTag">Spring</button> 
										<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="springbootTag" name="springbootTag">Spring Boot</button>
										<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="jdbcTag" name="jdbcTag">JDBC</button>
										<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="jstlTag" name="jstlTag">JSTL</button>
										<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="frontendTag" name="frontendTag">Front-End</button>
										<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="backendTag" name="backendTag">Back-End</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="webdevTag" name="webdevTag">웹 개발</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="appdevTag" name="appdevTag">앱 개발</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="htmlcssTag" name="htmlcssTag">HTML/CSS</button>					      		
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="javascriptTag" name="javascriptTag">Javascript</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="jqueryTag" name="jqueryTag">jQuery</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="jspTag" name="jspTag">JSP</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="bootstrapTag" name="bootstrapTag">Bootstrap</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="pythonTag" name="pythonTag">Python</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="djangoTag" name="djangoTag">Django</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="flaskTag" name="flaskTag">Flask</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="gamedevTag" name="gamedevTag">게임 개발</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="unityTag" name="unityTag">Unity</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="androidTag" name="androidTag">Android</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="iosTag" name="iosTag">iOS</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="swiftTag" name="swiftTag">Swift</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="nodejsTag" name="nodejsTag">Node.js</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="algorythmTag" name="algorythmTag">알고리즘</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="reactTag" name="reactTag">React</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="cloudTag" name="cloudTag">클라우드</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="linuxTag" name="linuxTag">Linux</button>
							      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="gitTag" name="gitTag">Git</button><hr>											
									</li>
									<li>
										<button type="button" class="btn btn-sm btn-success guardTagBtn" id="infoguardTag" name="infoguardTag">정보보안</button>
							      		<button type="button" class="btn btn-sm btn-success guardTagBtn" id="blockchainTag" name="blockchainTag">블록체인</button>
							      		<button type="button" class="btn btn-sm btn-success guardTagBtn" id="devopsTag" name="devopsTag">DevOps</button>
							      		<button type="button" class="btn btn-sm btn-success guardTagBtn" id="hackingTag" name="hackingTag">해킹</button><hr>
									</li>
									<li>
										<button type="button" class="btn btn-sm btn-warning dataTagBtn" id="databaseTag" name="databaseTag">데이터베이스</button>
							      		<button type="button" class="btn btn-sm btn-warning dataTagBtn" id="aiTag" name="aiTag">인공지능</button>
							      		<button type="button" class="btn btn-sm btn-warning dataTagBtn" id="sqlTag" name="sqlTag">SQL</button>
							      		<button type="button" class="btn btn-sm btn-warning dataTagBtn" id="machinerunningTag" name="machinerunningTag">머신러닝</button>
							      		<button type="button" class="btn btn-sm btn-warning dataTagBtn" id="rTag" name="rTag">R</button><hr>
									</li>
									<li>
										<button type="button" class="btn btn-sm btn-danger designTagBtn" id="uiuxTag" name="uiuxTag">UI/UX</button>
							      		<button type="button" class="btn btn-sm btn-danger designTagBtn" id="3dmodelingTag" name="3dmodelingTag">3D 모델링</button>
							      		<button type="button" class="btn btn-sm btn-danger designTagBtn" id="aftereffectsTag" name="aftereffectsTag">After Effects</button>
							      		<button type="button" class="btn btn-sm btn-danger designTagBtn" id="premiereproTag" name="premiereproTag">Premiere Pro</button>
							      		<button type="button" class="btn btn-sm btn-danger designTagBtn" id="photoshopTag" name="photoshopTag">Photoshop</button>
							      		<button type="button" class="btn btn-sm btn-danger designTagBtn" id="illustratorTag" name="illustratorTag">Illustrator</button>
							      		<button type="button" class="btn btn-sm btn-danger designTagBtn" id="designeditorTag" name="designeditorTag">편집 디자인</button>
							      		<button type="button" class="btn btn-sm btn-danger designTagBtn" id="indesignTag" name="indesignTag">InDesign</button>
									</li>
								</ul>					
						</ul>			
				
			</div>
			
			
			<div class="form-group">
				<label for="title">제목</label>
				<input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요.">
			</div>
			
			<div class="form-group">
				<label for="title">그룹명</label>
				<input type="text" class="form-control" id="groupName" name="groupName" placeholder="그룹명을 입력하세요.">
			</div>
			
			<div class="flex">
				<div class="form-group">
					<i class="far fa-calendar-alt"></i>
					<label>시작 날짜</label>
					<input type="date" class="startStudy" id="startStudy" name="startStudy" size="12" placeholder="날짜 지정">
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


<script type="text/javascript">

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
	function groupInsertCheck(InsertForm){
	var fff = InsertForm.startStudy.value;
		if(InsertForm.startStudy.value == "") {
			alert("날짜를 선택해주세요");
			$("#startStudy").focus();
			return false;
		} else {
			InsertForm.submit();
		}
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