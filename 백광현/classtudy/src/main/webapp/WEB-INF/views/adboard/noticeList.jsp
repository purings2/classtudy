<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>관리자 :: 공지사항 목록</title>
	<%@ include file="../include/admin_header.jsp"%>
</head>
<body>
	<%@ include file="../include/admin_menu.jsp"%>
	<%
	// 현재 페이지의 번호를 저장하는 변수
	// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
	int pageNumber = (int)request.getAttribute("pageNumber");
	//화면에 보여줄 전체 게시글 건
	int totalCount = (int)request.getAttribute("totalCount");
	// 한 페이지에서 보여줄 게시글의 개수
	int numOfPage = (int)request.getAttribute("numOfPage");
	// pageCount : 보여져야하는 페이지의 수
	// 말머리에 따른 전체 게시글 수를 나누어 나머지가 생기면 1페이지를 추가한다.
	int pageCount = totalCount / numOfPage + (totalCount % numOfPage == 0 ? 0 : 1);
	// 화면 하단에 보여지는 페이지의 개수
	int pageBlock = 3;
	// 선택한 페이지번호가 pageBlock 내에 있으면 startPage를 하단에 보여줄 번호의 맨 앞 번호로 한다.
	// 현재 페이지가 5, pageBlock이 3이라면 하단에는 [4][5][6]을 보여준다.
	int startPage = (int)((pageNumber-1)/pageBlock) * pageBlock + 1;
	int endPage = startPage + pageBlock - 1;
	//계산한 endPage가 실제 가지고 있는 페이지 수보다 많으면 가장 마지막 페이지의 값을 endPage로 한다.
	if (endPage > pageCount) endPage = pageCount;
	// 검색 여부에 따라 페이지 이동 버튼의 경로 다르게 설정
	String paging = "adboard/notice";
	if (request.getAttribute("nowKeyword") != null) {
		paging  = "adboard/notice/search/" + (int)request.getAttribute("searchCode") + "/";
		paging += (String)request.getAttribute("nowKeyword");
	}
	%>
<div class="content">
	<div class="container-fluid">
		<header>
			<h2>공지사항 목록</h2><br>
		</header>
		<!-- 상단 부분 테이블 형태로 구성 -->
		<table style="width: 100%;">
			<tr>
				<td align=right style="padding-bottom: 15px; padding-right: 20px;">
					<button class="btn btn-success" onclick="location.href='${path}/adboard/writefreeboardNotice'">작성</button>
				</td>
			</tr>
		</table>
		<table class="table table-hover table-bordered table-condensed">
			<thead>
				<tr>
					<th style="text-align: center; width: 70px;" >번호</th>
					<th style="text-align: center; width: 400px;">제목</th>
					<th style="text-align: center; width: 100px;">작성일</th>
					<th style="text-align: center; width: 60px;" >조회</th>
					<th style="text-align: center; width: 60px;" ><span class="glyphicon glyphicon-thumbs-up"></span></th>
					<th style="text-align: center; width: 60px;" >수정</th>
					<th style="text-align: center; width: 60px;" >삭제</th>
				</tr>
			</thead>
			<!-- 게시글 목록 -->
			<tbody>
				<c:if test="${empty list}">
					<tr style="background-color: #FFFFFF;">
						<td colspan="7">공지사항이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="board" items="${list}">
					<tr>
						<td>${board.boardNo}</td>
						<td>
							<a href="${path}/adboard/detail/${board.tableName}/${board.boardNo}">${board.title}</a>&nbsp;
							<a href="${path}/adboard/detail/${board.tableName}/${board.boardNo}/comment"><span class="badge">${board.commentNum}</span></a>
						</td>
						<td><fmt:formatDate value="${board.writeDate}" pattern="yyyy-MM-dd"/></td>
						<td>${board.views}</td>
						<td>${board.likes}</td>
						<td>
							<a href="#" onclick="location.href='/adboard/updatefreeboardNotice/${board.boardNo}';" class="btn btn-sm btn-primary">수정</a>
						</td>
						<td>
							<a href="#" onclick="freeboardDelete(${board.boardNo});" class="btn btn-sm btn-danger">삭제</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!-- 페이지 이동 -->
		<footer>
			<div class="btn-group" role="group">
			<%
			//이전 페이지로 갈 수 있도록 한다.
			//startPage가 pageBlock보다 큰 경우에만 << 버튼을 보여준다.
			if(startPage > pageBlock) {
				%>
				<button type="button" class="btn btn-default" onclick="location.href='${path}/<%=paging%>/<%=startPage - 1%>'">&lt;&lt;</button>
				<%
			}
			//pageNumber가 1보다 큰 경우에만 < 버튼을 보여준다.
			if(pageNumber > 1) {
				%>
				<button type="button" class="btn btn-default" onclick="location.href='${path}/<%=paging%>/<%=pageNumber - 1%>'">&lt;</button>
				<%
			}
			
			//하단에 페이지 번호를 보여준다.
			for(int num = startPage; num <= endPage; num++) {
				if (num == pageNumber) {
				%>
				<button type="button" class="btn btn-success" onclick="location.href='${path}/<%=paging%>/<%=num%>'"><%=num%></button>
				<%
				} else {
				%>
				<button type="button" class="btn btn-default" onclick="location.href='${path}/<%=paging%>/<%=num%>'"><%=num%></button>
				<%
				}
			}
			
			//다음 페이지로 갈 수 있도록 한다.
			//pageNumber가 pageCount보다 작은 경우에만 > 버튼을 보여준다.
			if(pageNumber < pageCount) {
				%>
				<button type="button" class="btn btn-default" onclick="location.href='${path}/<%=paging%>/<%=pageNumber + 1%>'">&gt;</button>
				<%
			}
			//endPage가 pageCount보다 작은 경우에만 >> 버튼을 보여준다.
			if(endPage < pageCount) {
				%>
				<button type="button" class="btn btn-default" onclick="location.href='${path}/<%=paging%>/<%=endPage + 1%>'">&gt;&gt;</button>
				<%
			}
			%>
			</div>
		</footer>
	</div>
</div>

	<%@ include file="../include/admin_footer.jsp"%>
	<script>
	$(document).ready(function() {
		
		// 검색 버튼이 눌렸을 경우
		$("#searchBtn").on("click", function() {
			searchLecture($("#keyword").val(), $("#viewAcademy").val(), $("#searchCode").val());
		});
		// 검색창에서 엔터키를 입력할 경우
		$("#keyword").keyup(function(e) { if(e.keyCode == 13) {
			searchLecture($("#keyword").val(), $("#viewAcademy").val(), $("#searchCode").val());
		}});
		
	});
	</script>
</body>
</html>