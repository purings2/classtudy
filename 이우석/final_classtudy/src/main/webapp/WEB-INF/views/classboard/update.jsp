<%@page import="java.util.Date"%>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.member.domain.MemberDTO" %>
<%@ page import="com.edu.classboard.domain.ClassboardDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>클래스룸 :: 게시글 수정</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>

<div class="container" style="padding-bottom: 30px">
	<header>
		<h1>게시글 수정</h1><br>
	</header>
	<form class="form-horizontal" action="/class/classboard/update" method="post">
		<!-- 숨겨서 넘길 정보들 -->
		<input type="hidden" id="boardNo" name="boardNo" value="${detail.boardNo}"/>
		<input type="hidden" id="views" name="views" value="${detail.views}"/>
		<input type="hidden" id="likes" name="likes" value="${detail.likes}"/>
		<input type="hidden" id="lectureNo" name="lectureNo" value="${detail.lectureNo}"/>
		<!-- 보여줄 내용들 -->
		<div class="form-group">
			<label class="control-label col-sm-2">말머리</label>
			<div class="col-sm-3">
				<!-- <input type="text" id="category" name="category" class="form-control" value="${detail.category}" readonly/> -->
				<c:if test="${detail.category == 'TIL'}">
					<select id="category" name="category" class="form-control">
						<option value="TIL" selected>TIL</option>
						<option value="클래스">클래스</option>
						<option value="질문">질문</option>
					</select>
				</c:if>
				<c:if test="${detail.category == '클래스'}">
					<select id="category" name="category" class="form-control">
						<option value="TIL">TIL</option>
						<option value="클래스" selected>클래스</option>
						<option value="질문">질문</option>
					</select>
				</c:if>
				<c:if test="${detail.category == '질문'}">
					<select id="category" name="category" class="form-control">
						<option value="TIL">TIL</option>
						<option value="클래스">클래스</option>
						<option value="질문" selected>질문</option>
					</select>
				</c:if>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">작성자</label>
			<div class="col-sm-3">
				<input type="text" id="writerName" name="writerName" class="form-control" value="${detail.writerName}" readonly="readonly" maxlength=16/>
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
			<div id="test-editormd">
				<textarea style="display:none;" id="content" name="content">${detail.content}</textarea>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-12" style="text-align: center;">
				<button type="button" class="btn btn-success" onclick="checkUpdateClassboardForm(this.form)">수정</button>&nbsp;
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
				location.href="/class/classboard/detail/${detail.boardNo}";
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