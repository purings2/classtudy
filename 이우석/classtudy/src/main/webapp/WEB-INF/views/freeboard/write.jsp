<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="com.edu.member.domain.MemberDTO" %>
<%@ page import="com.edu.freeboard.domain.FreeboardDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>자유게시판 :: 게시글 작성</title>
	<%@ include file="../include/header.jsp" %>	
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>

<div class="container" style="padding-bottom: 30px">
	<header>
		<h1>게시글 작성</h1><br>
	</header>
	<form class="form-horizontal" action="/community/freeboard/write" method="post">
		<div class="form-group">
			<!-- 숨겨서 넘길 정보들 -->
			<input type="hidden" id="writer" name="writer" class="form-control" value="${member.memberId}" maxlength=16/>
			<!-- 보여줄 내용들 -->
			<label class="control-label col-sm-2">작성자</label>
			<div class="col-sm-3">
				<input type="text" id="writerName" name="writerName" class="form-control" value="${member.name}" readonly="readonly" maxlength=16/>
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
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">제&nbsp;&nbsp;&nbsp;&nbsp;목</label>
			<div class="col-sm-8">
				<input class="form-control" type="text" id="title" name="title" placeholder="제목을 작성하세요." maxlength=50/>
			</div>
		</div>
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
			<div id="test-editormd" style="display: block; width: 85%; margin: 0px auto">
				<textarea style="display:none;" id="content" name="content"></textarea>
			</div>
		</div>
		<footer>
			<div class="col-sm-12" align="center">
				<button type="button" class="btn btn-success" onclick="checkFreeboardForm(this.form)">등록</button>&nbsp;
				<button type="button" class="btn btn-warning cancel">취소</button>	
			</div>
		</footer>
	</form>
</div>
	
	<%@ include file="../include/footer.jsp" %>
	<script>
	$(document).ready(function() {
		
		// 취소 버튼이 눌렸을 경우
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
				readOnly 	: false,
				placeholder : "내용을 입력하세요."
			});
		});
		
	});
	</script>
</body>
</html>