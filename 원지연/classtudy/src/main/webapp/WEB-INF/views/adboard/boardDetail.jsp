<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>관리자 :: 게시글 상세정보</title>
	<%@ include file="../include/admin_header.jsp"%>
</head>
<body>
	<%@ include file="../include/admin_menu.jsp"%>

<div class="content">
	<div class="container-fluid">
		<header>
			<h2>게시글 상세정보</h2><br>
		</header>
		<form class="form-horizontal">
			<div>
				<!-- 숨겨서 넘길 정보들 -->
				<input type="hidden" id="comment" name="comment" value="${comment}"/>
				<input type="hidden" id="boardNo" name="boardNo" value="${detail.boardNo}"/>
				<input type="hidden" id="views" name="views" value="${detail.views}"/>
				<input type="hidden" id="likes" name="likes" value="${detail.likes}"/>
				<input type="hidden" id="writer" name="writer" value="${detail.writer}" maxlength=16/>
				<input type="hidden" id="tableName" name="tableName" value="${detail.tableName}"/>
			</div>
			<div class="form-group">
				<!-- 말머리 : 클래스, 자유게시판만 해당 -->
				<c:if test="${detail.tableName == 'classboard' || detail.tableName == 'freeboard'}">
					<label class="control-label col-sm-2">말머리</label>
					<div class="col-sm-3">
						<input type="text" id="specialInfo" name="specialInfo" class="form-control" value="${detail.specialInfo}" readonly/>
					</div>
				</c:if>
				<!-- 그룹이름 : 그룹게시판만 해당 -->
				<c:if test="${detail.tableName == 'groupboard'}">
					<label class="control-label col-sm-2">그룹이름</label>
					<div class="col-sm-5">
						<input type="text" id="specialInfo" name="specialInfo" class="form-control" value="${detail.specialInfo}" readonly/>
					</div>
				</c:if>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">작성자</label>
				<div class="col-sm-3">
					<input type="text" id="writerName" name="writerName" class="form-control" value="${detail.writerName} (${detail.writer})" maxlength=16 readonly/>
				</div>
				<label class="control-label col-sm-2">작성일</label>
				<div class="col-sm-3">
					<input type="text" id="writeDate" name="writeDate" class="form-control" value="<fmt:formatDate value="${detail.writeDate}" pattern="yyyy-MM-dd hh:mm:ss"/>" readonly/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">제&nbsp;&nbsp;&nbsp;&nbsp;목</label>
				<div class="col-sm-8">
					<input type="text" id="title" name="title" class="form-control" value="${detail.title}" maxlength=50 readonly/>
				</div>
			</div>
			<!-- 태그 : 자유, 그룹게시판만 해당 -->
			<c:if test="${detail.tableName == 'groupboard' || detail.tableName == 'freeboard'}">
				<div class="form-group form-inline">
					<label class="control-label col-sm-2">태&nbsp;&nbsp;&nbsp;&nbsp;그</label>
					<div class="col-sm-8" align="left">
						<input type="hidden" id="isDetail" name="isDetail" value="yes"/>
						<input type="text" id="tags" name="tags" class="form-control" data-role="tagsinput" value="${detail.tags}" disabled/>
					</div>
				</div>
			</c:if>
			<div class="form-group">
				<div id="test-markdown-view" style="display: block; width: 85%; margin: 0px auto; padding: 20px;">
					<textarea style="display:none;" id="content" name="content">${detail.content}</textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12" style="text-align: center; padding-bottom: 10px;">
					<a class="btn btn-danger" href="#" onclick="${detail.tableName}Delete(${detail.boardNo});">삭제</a>&nbsp;
					<a class="btn btn-primary" href="#" onclick="location.href='/adboard/all'">목록</a>
				</div>
			</div>
		</form>
		<!-- 댓글 영역 -->
		<div class="container col-sm-12" style="padding-bottom: 50px;">
			<div class="panel panel-default" style="width: 90%; margin: 0px auto;">
				<!-- 저장된 댓글 보여줄 영역 -->
				<div class="panel-body" id="commentList"></div>
			</div>
		</div>
	</div>
</div>

	<%@ include file="../include/admin_footer.jsp"%>
	<script>
	$(document).ready(function() {
		
		// Markdown View
		var testView = editormd.markdownToHTML("test-markdown-view", {
			//markdown : "[TOC]\n### Hello world!\n## Heading 2", // Also, you can dynamic set Markdown text
			//htmlDecode : true,  // Enable / disable HTML tag encode.
			//htmlDecode : "style,script,iframe"  // Note: If enabled, you should filter some dangerous HTML tags for website security.
		});
		
		// 게시글에 댓글이 있으면 댓글을 보여준다.
		if (document.getElementById("tableName").value == "classboard") {
			commentList();
		} else if (document.getElementById("tableName").value == "freeboard") {
			fbcommentList();
		} else if (document.getElementById("tableName").value == "groupboard") {
			gbcommentList();
		}
		// 댓글 뱃지를 누르고 들어왔으면 댓글 위치로 이동
		if (document.getElementById("comment").value == "yes") {
			//document.getElementById("commentList").scrollIntoView(true);
			var divPosition = $("#commentList").offset();
			$("html, body").animate({scrollTop: divPosition.top});
		}
		
	});
	</script>
</body>
</html>