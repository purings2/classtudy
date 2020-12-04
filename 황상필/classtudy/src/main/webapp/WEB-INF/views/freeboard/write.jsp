<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="com.edu.member.domain.MemberDTO" %>
<%@ page import="com.edu.freeboard.domain.FreeboardDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>자유게시판</title>
<%@ include file="../include/header.jsp" %>	
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>

<div class="container" style="padding-bottom: 30px">
	<form class="form-horizontal" action="/community/write" method="post">
		<header>
			<h1>게시글 작성</h1><br>
		</header> 
		<div class="form-group">
			<label class="control-label col-sm-2">작성자</label>
			<div class="col-sm-3">
				<input type="text" id="name" name="name" class="form-control" value="${member.name}" readonly="readonly" maxlength=16/>
			</div>
			<label class="control-label col-sm-2">말머리</label>
			<div class="col-sm-3">
				<select id="category" name="category" class="form-control">							
					<option value="이야기">이야기</option>
					<option value="질문">질문</option>
					<option value="정보">정보</option>					
					<option value="그룹홍보">그룹홍보</option>
				</select>
			</div>
			<!-- 숨겨서 넘길 정보들 -->
			<input type="hidden" id="writer" name="writer" class="form-control" value="${member.memberId}" maxlength=16/>			
		</div>	
		<div class="form-group">		
			<label class="control-label col-sm-2">태&nbsp;&nbsp;&nbsp;그</label>
			<div class="col-sm-8">
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
		</div>	
		<div class="form-group">		
			<label class="control-label col-sm-2">제&nbsp;&nbsp;&nbsp;목</label>
			<div class="col-sm-8">
				<input class="form-control" type="text" id="title" name="title" placeholder="제목을 작성하세요." maxlength=50/>
			</div>
		</div>
		<div class="form-group">
			<div id="test-editormd" style="display: block; width: 85%; margin: 0px auto">
				<textarea style="display:none;" id="content" name="content"></textarea>
			</div>
		</div>		
		<!-- 
		<div class="form-group">		
			<label class="control-label col-sm-2">태  그</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" id="tags" name="tags" onkeydown="nextFocus(content)" placeholder="태그"/>
				<input type="text" class="form-control" id="tags" name="tags" value="${board.tags}" readonly="readonly" onkeydown="nextFocus(category)">
			</div>
		</div>
		-->
		<footer>
			<div class="form-group">
				<div class="col-sm-12" style="text-align: center;">
				<!-- <div class="col-sm-9" align="right">-->
					<button type="button" class="btn btn-success" onclick="fbCheckForm(this.form)">등록</button>&nbsp;
					<button type="button" class="btn btn-warning cancel">취소</button>	
				</div>	
			</div>
		</footer>	
	</form>
</div>


<%@ include file="../include/footer.jsp" %>
	
	<script>
	$(document).ready(function() {
		
		// 취소 버튼이 눌렸을 경우 => OK하면 메인으로 이동
		$(".cancel").on("click", function() {
			if(confirm("정말 취소하시겠습니까?") == false){
				return false;
			} else {
				location.href ="/community/freeboard/all";
			}
		});
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
		
	});
	</script>
</body>


</html>