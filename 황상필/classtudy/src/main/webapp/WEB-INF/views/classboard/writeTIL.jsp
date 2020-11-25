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
	<link rel="stylesheet" type="text/css" href="/static/css/jquery.tagsinput.css"/>
	
	
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
			<div class="col-sm-3">
			<label class="control-label col-sm-2">태그</label>
				<input name="tags" id="tags" value=""/>
				<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#tagModal">Open Tag</button>			
				<!-- Modal -->
				<div id="tagModal" class="modal fade" role="dialog">
					<div class="modal-dialog">
				
					    <!-- Modal content-->
					    <div class="modal-content">
					    	<div class="modal-header">
					        	<button type="button" class="close" data-dismiss="modal">&times;</button>
					        	<h4 class="modal-title">태그를 선택하세요</h4>
					    	</div>
					    	<div class="modal-body">
					    		<p>선택한 태그</p><input type="text" style="display: none;" class="tags" name="tagInModal" id="tagInModal" value=""/><hr>
					      		<button type="button" class="btn btn-primary btn-sm" id="javaTag" name="javaTag" >Java</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="springTag" name="springTag">Spring</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="springbootTag" name="springbootTag">Spring Boot</button>					      		
					      		<button type="button" class="btn btn-primary btn-sm" id="jdbcTag" name="jdbcTag">JDBC</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="jstlTag" name="jstlTag">JSTL</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="frontendTag" name="frontendTag">Front-End</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="backendTag" name="backendTag">Back-End</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="webdevTag" name="webdevTag">웹 개발</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="appdevTag" name="appdevTag">앱 개발</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="htmlcssTag" name="htmlcssTag">HTML/CSS</button>					      		
					      		<button type="button" class="tag btn btn-primary btn-sm" id="javascriptTag" name="javascriptTag">Javascript</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="jqueryTag" name="jqueryTag">jQuery</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="jspTag" name="jspTag">JSP</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="bootstrapTag" name="bootstrapTag">Bootstrap</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="pythonTag" name="pythonTag">Python</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="djangoTag" name="djangoTag">Django</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="flaskTag" name="flaskTag">Flask</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="gamedevTag" name="gamedevTag">게임 개발</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="unityTag" name="unityTag">Unity</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="androidTag" name="androidTag">Android</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="iosTag" name="iosTag">iOS</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="swiftTag" name="swiftTag">Swift</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="nodejsTag" name="nodejsTag">Nods.js</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="algorythmTag" name="algorythmTag">알고리즘</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="reactTag" name="reactTag">React</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="cloudTag" name="cloudTag">클라우드</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="linuxTag" name="linuxTag">Linux</button>
					      		<button type="button" class="btn btn-primary btn-sm" id="gitTag" name="gitTag">Git</button><hr>
					      		
					      		<button type="button" class="btn btn-success btn-sm" id="infoguardTag" name="infoguardTag">정보보안</button>
					      		<button type="button" class="btn btn-success btn-sm" id="blockchainTag" name="blockchainTag">블록체인</button>
					      		<button type="button" class="btn btn-success btn-sm" id="devopsTag" name="devopsTag">DevOps</button>
					      		<button type="button" class="btn btn-success btn-sm" id="hackingTag" name="hackingTag">해킹</button><hr>
					      		
					      		<button type="button" class="btn btn-warning btn-sm" id="databaseTag" name="databaseTag">데이터베이스</button>
					      		<button type="button" class="btn btn-warning btn-sm" id="aiTag" name="aiTag">인공지능</button>
					      		<button type="button" class="btn btn-warning btn-sm" id="sqlTag" name="sqlTag">SQL</button>
					      		<button type="button" class="btn btn-warning btn-sm" id="machinerunningTag" name="machinerunningTag">머신러닝</button>
					      		<button type="button" class="btn btn-warning btn-sm" id="rTag" name="rTag">R</button><hr>
					      		
					      		<button type="button" class="btn btn-danger btn-sm" id="uiuxTag" name="uiuxTag">UI/UX</button>
					      		<button type="button" class="btn btn-danger btn-sm" id="3dmodelingTag" name="3dmodelingTag">3D 모델링</button>
					      		<button type="button" class="btn btn-danger btn-sm" id="aftereffectsTag" name="aftereffectsTag">After Effects</button>
					      		<button type="button" class="btn btn-danger btn-sm" id="premiereproTag" name="premiereproTag">Premiere Pro</button>
					      		<button type="button" class="btn btn-danger btn-sm" id="photoshopTag" name="photoshopTag">Photoshop</button>
					      		<button type="button" class="btn btn-danger btn-sm" id="illustratorTag" name="illustratorTag">Illustrator</button>
					      		<button type="button" class="btn btn-danger btn-sm" id="designeditorTag" name="designeditorTag">편집 디자인</button>
					      		<button type="button" class="btn btn-danger btn-sm" id="indesignTag" name="indesignTag">InDesign</button>
					    	</div>
					    	<div class="modal-footer">
					    		<button type="button" class="btn btn-success" name="okBtnModal" id="okBtnModal" data-dismiss="modal">선택 완료</button>
					        	<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					    	</div>
					    </div>				
					</div>
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
	<script src="/static/js/jquery.tagsinput.js"></script>	
	
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

		$('#tags').tagsInput({
			'defaultText' : ' '
		});

		$('#tagInModal').tagsInput({
			'defaultText' : ' ',
			'height':'60px',
			'width':'565px',	

			//태그 선택 시 배경색을 원 태그와 같이 맞춰주는 메서드(미구현)
			onChange: function (elem, elem_tags) {
                    var languages = ['php', 'ruby', 'Javascript'];
                    $('.tags', elem_tags).each(function () {
                        if ($(this).text().search(new RegExp('\\b(' + languages.join('|') + ')\\b')) >= 0)
                            $(this).css('background-color', 'lightyellow');
                    });
	        }
	          

			
		});

		$('#javaTag').on("click", function() {
			$('#tagInModal').addTag('Java')
		});

		$('#springTag').on("click", function() {
			$('#tagInModal').addTag('Spring')
		});

		$('#springbootTag').on("click", function() {
			$('#tagInModal').addTag('Spring Boot')
		});

		$('#djangoTag').on("click", function() {
			$('#tagInModal').addTag('Django')
		});

		$('#flaskTag').on("click", function() {
			$('#tagInModal').addTag('Flask')
		});

		$('#jdbcTag').on("click", function() {
			$('#tagInModal').addTag('JDBC')
		});

		$('#jstlTag').on("click", function() {
			$('#tagInModal').addTag('JSTL')
		});

		$('#htmlcssTag').on("click", function() {
			$('#tagInModal').addTag('HTML/CSS')
		});
		
		$('#javascriptTag').on("click", function() {
			$('#tagInModal').addTag('Javascript')
		});

		$('#jqueryTag').on("click", function() {
			$('#tagInModal').addTag('jQuery')
		});

		$('#jspTag').on("click", function() {
			$('#tagInModal').addTag('JSP')
		});

		$('#backendTag').on("click", function() {
			$('#tagInModal').addTag('Back-End')
		});

		$('#frontendTag').on("click", function() {
			$('#tagInModal').addTag('Front-End')
		});

		$('#bootstrapTag').on("click", function() {
			$('#tagInModal').addTag('Bootstrap')
		});

		$('#webdevTag').on("click", function() {
			$('#tagInModal').addTag('웹 개발')
		});

		$('#appdevTag').on("click", function() {
			$('#tagInModal').addTag('앱 개발')
		});

		$('#pythonTag').on("click", function() {
			$('#tagInModal').addTag('Python')
		});

		$('#databaseTag').on("click", function() {
			$('#tagInModal').addTag('데이터베이스')
		});

		$('#gamedevTag').on("click", function() {
			$('#tagInModal').addTag('게임 개발')
		});

		$('#unityTag').on("click", function() {
			$('#tagInModal').addTag('Unity')
		});

		$('#androidTag').on("click", function() {
			$('#tagInModal').addTag('Android')
		});

		$('#iosTag').on("click", function() {
			$('#tagInModal').addTag('iOS')
		});

		$('#swiftTag').on("click", function() {
			$('#tagInModal').addTag('Swift')
		});

		$('#nodejsTag').on("click", function() {
			$('#tagInModal').addTag('Node.js')
		});

		$('#algorythmTag').on("click", function() {
			$('#tagInModal').addTag('알고리즘')
		});

		$('#reactTag').on("click", function() {
			$('#tagInModal').addTag('React')
		});

		$('#machinerunningTag').on("click", function() {
			$('#tagInModal').addTag('머신러닝')
		});

		$('#sqlTag').on("click", function() {
			$('#tagInModal').addTag('SQL')
		});

		$('#aiTag').on("click", function() {
			$('#tagInModal').addTag('인공지능')
		});

		$('#infoguardTag').on("click", function() {
			$('#tagInModal').addTag('정보보안')
		});

		$('#blockchainTag').on("click", function() {
			$('#tagInModal').addTag('블록체인')
		});

		$('#devopsTag').on("click", function() {
			$('#tagInModal').addTag('DevOps')
		});

		$('#cloudTag').on("click", function() {
			$('#tagInModal').addTag('클라우드')
		});

		$('#linuxTag').on("click", function() {
			$('#tagInModal').addTag('Linux')
		});

		$('#gitTag').on("click", function() {
			$('#tagInModal').addTag('Git')
		});

		$('#uiuxTag').on("click", function() {
			$('#tagInModal').addTag('UI/UX')
		});

		$('#3dmodelingTag').on("click", function() {
			$('#tagInModal').addTag('3D 모델링')
		});

		$('#aftereffectsTag').on("click", function() {
			$('#tagInModal').addTag('After Effects')
		});

		$('#premiereproTag').on("click", function() {
			$('#tagInModal').addTag('Premiere Pro')
		});

		$('#photoshopTag').on("click", function() {
			$('#tagInModal').addTag('Photoshop')
		});

		$('#illustratorTag').on("click", function() {
			$('#tagInModal').addTag('Illustrator')
		});

		$('#rTag').on("click", function() {
			$('#tagInModal').addTag('R')
		});

		$('#designeditorTag').on("click", function() {
			$('#tagInModal').addTag('편집 디자인')
		});

		$('#hackingTag').on("click", function() {
			$('#tagInModal').addTag('해킹')
		});

		$('#indesignTag').on("click", function() {
			$('#tagInModal').addTag('InDesign')
		});

		//모달창에서 선택 완료 버튼을 눌렀을 때
		$('#okBtnModal').on("click", function() {
			var tag = $('#tagInModal').val()
			var tagArray = tag.split(',')
			
			//모달 -> 페이지로 태그옮길 시 중복값 제거메서드(미구현)
			/* var check = true;
			
			for(var i = 0; i < tagArray.length; i++) {
				check = true;

				for(value in $('#tags').val()) {
					if($('#tags').val()[value] == tagArray[i]) {
						check = false;
					}
				}
				if(check) {
					$('#tags').addTag(tagArray[i]);
				}				
			}		 */					
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