<%@ page import="java.util.Date"%>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.domain.MemberDTO" %>
<%@ page import="com.edu.domain.FreeboardDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>자유게시판</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>

<div class="container">
	<header>
		<h1>게시글 상세 정보</h1><br>
	</header>
	<form class="form-horizontal" action="/community/update/{boardNo}" method="post">
		<div>
			<!-- 숨겨서 넘길 정보들 -->
			<input type="hidden" id="comment" name="comment" class="form-control" value="${comment}"/>
			<input type="hidden" id="boardNo" name="boardNo" class="form-control" value="${detail.boardNo}" maxlength=16/>
			<input type="hidden" id="views" name="views" class="form-control" value="${detail.views}"/>
			<input type="hidden" id="likes" name="likes" class="form-control" value="${detail.likes}"/>
			<input type="hidden" id="writer" name="writer" class="form-control" value="${detail.writer}" maxlength=16/>
			<input type="hidden" id="memberId" name="memberId" class="form-control" value="${member.memberId}" maxlength="16"/>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">말머리</label>
			<div class="col-sm-3">
				<input type="text" id="category" name="category" class="form-control" value="${detail.category}" readonly/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">작성자</label>
			<div class="col-sm-3">
				<!-- <input type="text" id="writerName" name="writerName" class="form-control" value="${detail.writerName}" maxlength=16 readonly/>-->
				<input type="text" id="writerName" name="writerName" class="form-control" value="${detail.writer}(${member.name})" maxlength=16 readonly/>				
			</div>
			<label class="control-label col-sm-2">작성일</label>
			<div class="col-sm-3">
				<input type="text" id="writeDate" name="writeDate" class="form-control" value="<fmt:formatDate value="${detail.writeDate}" pattern="yyyy-MM-dd hh:mm"/>" readonly/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">제  목</label>
			<div class="col-sm-8">
				<input type="text" id="title" name="title" class="form-control" value="${detail.title}" maxlength=50 readonly/>
			</div>
		</div>
		<div class="form-group">
			<div id="test-markdown-view" style="display: block; width: 75%; height: 200px; resize: none; margin: 0px auto; padding: 0px; border: 2px solid #ccc;">
				<textarea style="display:none;" id="content" name="content">${detail.content}</textarea>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-12" style="text-align: center; padding-bottom: 10px;">
				<button type="button" class="btn btn-lg btn-default" id="likeBtn" value="N" onclick="likefBoard(this.form)"
					><span class="glyphicon glyphicon-thumbs-up"></span>&nbsp;좋아요&nbsp;${detail.likes}</button><br><br>
				<button type="button" class="btn btn-success" id="updateBtn">수정</button>&nbsp;
				<button type="button" class="btn btn-danger" id="deleteBtn">삭제</button>&nbsp;
				<button type="button" class="btn btn-primary" onclick="location.href='/community/freeboard/all'">목록</button>
			</div>
		</div>
	</form>
	<!-- 댓글 영역 -->
	<div class="container col-sm-12" style="padding-bottom: 50px;">
		<div class="panel panel-default" style="width: 95%; margin: 0px auto;">
			<!-- 저장된 댓글 보여줄 영역 -->
			<div class="panel-body" id="commentList"></div>
			<!-- 댓글 입력 영역 -->
			<div class="panel-footer">
				<label class="control-label col-sm-2">${member.name} (${member.memberId})</label>
				<div class="input-group col-sm-9">
					<!-- <textarea class="form-control" id="commentContent" name="commentContent" placeholder="댓글을 입력하세요."></textarea> -->
					<input type="text" class="form-control" id="commentContent" name="commentContent" placeholder="댓글을 입력하세요."/>
					<span class="input-group-btn">
						<button class="btn btn-warning" type="button" id="commentInsertBtn">등록</button>
					</span>
				</div>
			</div>
		</div>		
	</div>
</div>
	
	<%@ include file="../include/footer.jsp" %>
	<script src="/static/js/fbcommentAction.js"></script>
	<script>
	$(document).ready(function() {

		// Markdown View
		var testView = editormd.markdownToHTML("test-markdown-view", {
			//markdown : "[TOC]\n### Hello world!\n## Heading 2", // Also, you can dynamic set Markdown text
			//htmlDecode : true,  // Enable / disable HTML tag encode.
			//htmlDecode : "style,script,iframe"  // Note: If enabled, you should filter some dangerous HTML tags for website security.
		});
		
		// 좋아요 누른 게시글인지 확인
		checkfbLikes($("#boardNo").val(), $("#memberId").val());	
			
		// 게시글에 댓글이 있으면 댓글을 보여준다.
		commentList();

		// 댓글 뱃지를 누르고 들어왔으면 댓글 위치로 이동
		if (document.getElementById("comment").value == "yes") {
			//document.getElementById("commentList").scrollIntoView(true);
			var divPosition = $("#commentList").offset();
			$("html, body").animate({scrollTop: divPosition.top});
		}
		// 댓글 등록 버튼이 눌렸을 경우
		$("#commentInsertBtn").on("click", function() {
			//commentInsert($("#writer").val(), $("#content").val(), $("#boardNo").val());
			commentInsert($("#commentContent").val());
		});
		// 댓글창에서 엔터키를 입력할 경우
		$("#commentContent").keyup(function(e) { if(e.keyCode == 13) {
			commentInsert($("#commentContent").val());
		}});		
		// 수정 버튼이 눌렸을 경우
		$("#updateBtn").on("click", function() {
			// 작성자와 로그인한 아이디가 같은지 확인
			if(document.getElementById("writer").value == document.getElementById("memberId").value){
				location.href="/community/update/${detail.boardNo}";
			} else {
				alert("수정할 수 있는 권한이 없습니다.");
				return false;
			}
		});
		// 삭제 버튼이 눌렸을 경우
		$("#deleteBtn").on("click", function() {
			// 작성자와 로그인한 아이디가 같은지 확인
			if(document.getElementById("writer").value == document.getElementById("memberId").value){
				if(confirm("정말 삭제하시겠습니까?") == false){
					return false;
				} else {
					location.href="/community/delete/${detail.boardNo}";
				}
			} else {
				alert("삭제할 수 있는 권한이 없습니다.");
				return false;
			}
		});

		/*
		// 좋아요 버튼이 눌렸을 경우
		$("#likeBtn").on("click", function() {
			// 자신이 작성한 글은 좋아요를 누를 수 없다.
			if($("#writer").val() == $("#memberId").val()) {
				alert("본인의 글은 추천할 수 없습니다.");
				return false;
			}
			// 해당 게시글의 좋아요수를 올린다.
			$.ajax({
				url: "/community/like/${detail.boardNo}",
				type: "post",
				dataType: "json",
				data: {"boardNo" : $("#boardNo").val()},
			});
		});
		*/	
	});
	</script>
</body>
</html>