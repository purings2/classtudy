<%@page import="java.util.Date"%>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.domain.MemberDTO" %>
<%@ page import="com.edu.domain.ClassboardDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>TIL 작성</title>
	<%@ include file="../include/header.jsp" %>	
	<link rel="stylesheet" type="text/css" href="/static/css/bootstrap-tagsinput.css"/>
	
	
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>

<div class="container" style="padding-bottom: 30px">
	<form class="form-horizontal" action="/class/writeTIL" method="post">
		<header>
			<h1>TIL 작성</h1><br>
		</header>
		<div class="form-group">
			<label class="control-label col-sm-2">작성자</label>
			<div class="col-sm-3">
				<input type="text" id="name" name="name" class="form-control" value="${member.name}" readonly="readonly" maxlength=16/>
			</div>
			<label class="control-label col-sm-2">말머리</label>
			<div class="col-sm-3">
				<input type="text" id="category" name="category" class="form-control" value="TIL" readonly/>				
			</div>	
			<label class="control-label col-sm-2">태그</label>
			<div class="col-sm-3">						
				<select multiple id="tagsinput" data-role="tagsinput"></select>
					<div id="tagNavbar">
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown">
								<a class="dropdown" data-toggle="dropdown" href="#"> 태그 선택<span class="caret"></span></a>
									<ul class="dropdown-menu dropdown-menu-left dropdown-tag">
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
								      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="nodejsTag" name="nodejsTag">Nods.js</button>
								      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="algorythmTag" name="algorythmTag">알고리즘</button>
								      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="reactTag" name="reactTag">React</button>
								      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="cloudTag" name="cloudTag">클라우드</button>
								      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="linuxTag" name="linuxTag">Linux</button>
								      		<button type="button" class="btn btn-sm btn-primary programmingTagBtn" id="gitTag" name="gitTag">Git</button><hr>											
										</li>
										<li>
											<button type="button" class="btn btn-sm btn-success guardTag" id="infoguardTag" name="infoguardTag">정보보안</button>
								      		<button type="button" class="btn btn-sm btn-success guardTag" id="blockchainTag" name="blockchainTag">블록체인</button>
								      		<button type="button" class="btn btn-sm btn-success guardTag" id="devopsTag" name="devopsTag">DevOps</button>
								      		<button type="button" class="btn btn-sm btn-success guardTag" id="hackingTag" name="hackingTag">해킹</button><hr>
										</li>
										<li>
											<button type="button" class="btn btn-sm btn-warning dataTag" id="databaseTag" name="databaseTag">데이터베이스</button>
								      		<button type="button" class="btn btn-sm btn-warning dataTag" id="aiTag" name="aiTag">인공지능</button>
								      		<button type="button" class="btn btn-sm btn-warning dataTag" id="sqlTag" name="sqlTag">SQL</button>
								      		<button type="button" class="btn btn-sm btn-warning dataTag" id="machinerunningTag" name="machinerunningTag">머신러닝</button>
								      		<button type="button" class="btn btn-sm btn-warning dataTag" id="rTag" name="rTag">R</button><hr>
										</li>
										<li>
											<button type="button" class="btn btn-sm btn-danger designTag" id="uiuxTag" name="uiuxTag">UI/UX</button>
								      		<button type="button" class="btn btn-sm btn-danger designTag" id="3dmodelingTag" name="3dmodelingTag">3D 모델링</button>
								      		<button type="button" class="btn btn-sm btn-danger designTag" id="aftereffectsTag" name="aftereffectsTag">After Effects</button>
								      		<button type="button" class="btn btn-sm btn-danger designTag" id="premiereproTag" name="premiereproTag">Premiere Pro</button>
								      		<button type="button" class="btn btn-sm btn-danger designTag" id="photoshopTag" name="photoshopTag">Photoshop</button>
								      		<button type="button" class="btn btn-sm btn-danger designTag" id="illustratorTag" name="illustratorTag">Illustrator</button>
								      		<button type="button" class="btn btn-sm btn-danger designTag" id="designeditorTag" name="designeditorTag">편집 디자인</button>
								      		<button type="button" class="btn btn-sm btn-danger designTag" id="indesignTag" name="indesignTag">InDesign</button>
										</li>
									</ul>																
							
						</ul>
					</div>
				
				 
				


				  
															
			</div>			
			<!-- 숨겨서 넘길 정보들 -->
			<input type="hidden" id="writer" name="writer" class="form-control" value="${member.memberId}" maxlength=16/>
			<input type="hidden" id="lectureNo" name="lectureNo" class="form-control" value="${member.lectureNo}"/>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">제  목</label>
			<div class="col-sm-8">
				<input type="text" id="title" name="title" class="form-control" maxlength=50/>
			</div>
		</div>
		<div class="form-group">
			<div id="test-editormd">
				<textarea style="display:none;" id="content" name="content"></textarea>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-12" style="text-align: center;">
				<button type="button" class="btn btn-success" onclick="tilCheckForm(this.form)">등록</button>&nbsp;
				<button type="button" class="btn btn-warning cancel">취소</button>
			</div>
		</div>
	</form>
</div>	
	

	<%@ include file="../include/footer.jsp" %>	
	
	
		
	<script src="/static/js/bootstrap-tagsinput.js"></script>	
		
	<script>
	$(document).ready(function() {
		// 취소 버튼이 눌렸을 경우 => OK하면 메인으로 이동
		$(".cancel").on("click", function() {
			if(confirm("정말 취소하시겠습니까?") == false){
				return false;
			} else {
				location.href ="/";
			}
		});

		$('select').tagsinput({
			  maxTags: 5
		});

		
		
		$('#javaTag').on("click", function () {
			$('select').tagsinput('add', 'Java', $(this).css("background-color", 'blue'));
		});

		$('#springTag').on("click", function () {
			$('select').tagsinput('add', 'Spring');
		});

		$('#springbootTag').on("click", function () {
			$('select').tagsinput('add', 'Spring Boot');
		});

		$('#jdbcTag').on("click", function () {
			$('select').tagsinput('add', 'JDBC');
		});

		$('#jstlTag').on("click", function () {
			$('select').tagsinput('add', 'JSTL');
		});

		$('#frontendTag').on("click", function () {
			$('select').tagsinput('add', 'Front-End');
		});

		$('#backendTag').on("click", function () {
			$('select').tagsinput('add', 'Back-End');
		});

		$('#webdevTag').on("click", function () {
			$('select').tagsinput('add', '웹 개발');
		});

		$('#appdevTag').on("click", function () {
			$('select').tagsinput('add', '앱 개발');
		});

		$('#htmlcssTag').on("click", function () {
			$('select').tagsinput('add', 'HTML/CSS');
		});

		$('#javascriptTag').on("click", function () {
			$('select').tagsinput('add', 'Javascript');
		});

		$('#jqueryTag').on("click", function () {
			$('select').tagsinput('add', 'jQuery');
		});

		$('#jspTag').on("click", function () {
			$('select').tagsinput('add', 'JSP');
		});

		$('#bootstrapTag').on("click", function () {
			$('select').tagsinput('add', 'Bootstrap');
		});

		$('#pythonTag').on("click", function () {
			$('select').tagsinput('add', 'Python');
		});

		$('#djangoTag').on("click", function () {
			$('select').tagsinput('add', 'Django');
		});

		$('#flaskTag').on("click", function () {
			$('select').tagsinput('add', 'Flask');
		});

		$('#gamedevTag').on("click", function () {
			$('select').tagsinput('add', '게임 개발');
		});

		$('#unityTag').on("click", function () {
			$('select').tagsinput('add', 'Unity');
		});

		$('#androidTag').on("click", function () {
			$('select').tagsinput('add', 'Android');
		});

		$('#iosTag').on("click", function () {
			$('select').tagsinput('add', 'iOS');
		});

		$('#swiftTag').on("click", function () {
			$('select').tagsinput('add', 'Swift');
		});

		$('#nodejsTag').on("click", function () {
			$('select').tagsinput('add', 'Node.js');
		});

		$('#algorythmTag').on("click", function () {
			$('select').tagsinput('add', '알고리즘');
		});

		$('#reactTag').on("click", function () {
			$('select').tagsinput('add', 'React');
		});

		$('#cloudTag').on("click", function () {
			$('select').tagsinput('add', '클라우드');
		});

		$('#linuxTag').on("click", function () {
			$('select').tagsinput('add', 'Linux');
		});

		$('#gitTag').on("click", function () {
			$('select').tagsinput('add', 'Git');
		});

		$('#infoguardTag').on("click", function () {
			$('select').tagsinput('add', '정보보안');
		});

		$('#blockchainTag').on("click", function () {
			$('select').tagsinput('add', '블록체인');
		});

		$('#devopsTag').on("click", function () {
			$('select').tagsinput('add', 'DevOps');
		});

		$('#hackingTag').on("click", function () {
			$('select').tagsinput('add', '해킹');
		});

		$('#databaseTag').on("click", function () {
			$('select').tagsinput('add', '데이터베이스');
		});

		$('#aiTag').on("click", function () {
			$('select').tagsinput('add', '인공지능');
		});

		$('#sqlTag').on("click", function () {
			$('select').tagsinput('add', 'SQL');
		});

		$('#machinerunningTag').on("click", function () {
			$('select').tagsinput('add', '머신러닝');
		});

		$('#rTag').on("click", function () {
			$('select').tagsinput('add', 'R');
		});

		$('#uiuxTag').on("click", function () {
			$('select').tagsinput('add', 'UI/UX');
		});

		$('#3dmodelingTag').on("click", function () {
			$('select').tagsinput('add', '3D 모델링');
		});

		$('#aftereffectsTag').on("click", function () {
			$('select').tagsinput('add', 'After Effects');
		});

		$('#premiereproTag').on("click", function () {
			$('select').tagsinput('add', 'Premiere Pro');
		});

		$('#phothshopTag').on("click", function () {
			$('select').tagsinput('add', 'Photoshop');
		});

		$('#illustratorTag').on("click", function () {
			$('select').tagsinput('add', 'Illustrator');
		});

		$('#designeditorTag').on("click", function () {
			$('select').tagsinput('add', '편집 디자인');
		});

		$('#indesignTag').on("click", function () {
			$('select').tagsinput('add', 'InDesign');
		});
		
		// Markdown Editor
		var testEditor;
		$(function() {
			testEditor = editormd("test-editormd", {
				width 		: "90%",
				height 		: 640,
				syncScrolling : "single",
				path 		: "/static/js/lib/",
				readOnly 	: false
			});
		});		
	});
	
	</script>
		
</body>
</html>