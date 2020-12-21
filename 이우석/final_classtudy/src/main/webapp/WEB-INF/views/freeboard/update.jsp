<%@page import="java.util.Date"%>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.member.domain.MemberDTO" %>
<%@ page import="com.edu.freeboard.domain.FreeboardDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>자유게시판 :: 게시글 수정</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>

<div class="container" style="padding-bottom: 30px">
	<header>
		<h1>게시글 수정</h1><br>
	</header>
	<form class="form-horizontal" action="/community/freeboard/update/${detail.boardNo}" method="post">
		<div>
			<!-- 숨겨서 넘길 정보들 -->
			<input type="hidden" id="boardNo" name="boardNo" value="${detail.boardNo}"/>
			<input type="hidden" id="views" name="views" value="${detail.views}"/>
			<input type="hidden" id="likes" name="likes" value="${detail.likes}"/>
			<input type="hidden" id="memberId" name="memberId" value="${member.memberId}" maxlength="16"/>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">말머리</label>
			<div class="col-sm-3">
				<c:if test="${detail.category == '이야기'}">
					<select id="category" name="category" class="form-control" >
						<option value="이야기" selected>이야기</option>
						<option value="질문">질문</option>
						<option value="정보">정보</option>
						<option value="그룹홍보">그룹홍보</option>	
					</select>
				</c:if>
				<c:if test="${detail.category == '공지사항'}">
					<select id="category" name="category" class="form-control" disabled>
						<option value="이야기">이야기</option>
						<option value="공지사항" selected>공지사항</option>
						<option value="질문">질문</option>
						<option value="정보">정보</option>
						<option value="그룹홍보">그룹홍보</option>
					</select>
				</c:if>
				<c:if test="${detail.category == '질문'}">
					<select id="category" name="category" class="form-control">
						<option value="이야기">이야기</option>
						<option value="질문" selected>질문</option>
						<option value="정보">정보</option>
						<option value="그룹홍보">그룹홍보</option>
					</select>
				</c:if>
				<c:if test="${detail.category == '정보'}">
					<select id="category" name="category" class="form-control">
						<option value="이야기">이야기</option>
						<option value="질문">질문</option>
						<option value="정보" selected>정보</option>
						<option value="그룹홍보">그룹홍보</option>
					</select>
				</c:if>
				<c:if test="${detail.category == '그룹홍보'}">
					<select id="category" name="category" class="form-control">
						<option value="이야기">이야기</option>
						<option value="질문">질문</option>
						<option value="정보">정보</option>
						<option value="그룹홍보" selected>그룹홍보</option>
					</select>
				</c:if>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">작성자</label>
			<div class="col-sm-3">
				<input type="text" id="writerName" name="writerName" class="form-control" value="${detail.writerName} (${detail.writer})" readonly="readonly" maxlength=16/>
			</div>
			<label class="control-label col-sm-2">작성일</label>
			<div class="col-sm-3">
				<input type="text" id="writeDateView" name="writeDateView" class="form-control" value="<fmt:formatDate value="${detail.writeDate}" pattern="yyyy-MM-dd hh:mm:ss"/>" readonly/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">제&nbsp;&nbsp;&nbsp;&nbsp;목</label>
			<div class="col-sm-8">
				<input type="text" id="title" name="title" class="form-control" maxlength=50 value="${detail.title}"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">태&nbsp;&nbsp;&nbsp;&nbsp;그</label>
			<div class="col-sm-7" align="left">
				<input type="hidden" id="isDetail" name="isDetail" value="no"/>
				<input type="text" id="tags" name="tags" class="form-control" data-role="tagsinput" value="${detail.tags}"/>
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
			<div id="test-editormd">
				<textarea style="display:none;" id="content" name="content">${detail.content}</textarea>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-12" style="text-align: center;">
				<button type="button" class="btn btn-success" onclick="freeboardCheckForm(this.form)">수정</button>&nbsp;
				<button type="button" class="btn btn-warning cancel">취소</button>
			</div>
		</div>
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
				location.href ="/community/freeboard/detail/${detail.boardNo}";
			}
		});

		// Markdown Editor
		var testEditor;
		$(function() {
			testEditor = editormd("test-editormd", {
				width 		: "90%",
				height 		: 640,
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