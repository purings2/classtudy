<%@ page import="java.util.Date" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.edu.classboard.domain.ClassboardDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>클래스룸</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>
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
	String paging = "class/classboard/" + (String)request.getAttribute("viewCategory");
	if (request.getAttribute("nowKeyword") != null) {
		paging  = "class/classboard/search/" + (int)request.getAttribute("searchCode") + "/";
		paging += (String)request.getAttribute("nowKeyword") + "/" + (String)request.getAttribute("viewCategory");
	}
	%>
<div class="container" style="padding-bottom: 30px;">
	<header>
		<h1>클래스룸</h1>
	</header>
	<!-- 상단 부분 테이블 형태로 구성 -->
	<table style="width: 100%;">
		<tr>
			<td align=left style="padding-bottom: 15px; padding-left: 20px;">
				<div class="btn-group">
					<!-- 말머리 선택 : 선택된 말머리의 글만 표시 -->
					<c:if test="${empty nowKeyword}">
						<c:set var="changePath" value="'${path}/class/classboard/' + this.value"/>
					</c:if>
					<c:if test="${!empty nowKeyword}">
						<c:set var="changePath" value="'${path}/class/classboard/search/${searchCode}/${nowKeyword}/' + this.value"/>
					</c:if>
					<select class="form-control" id="viewCategory" name="viewCategory" onchange="location.href=${changePath}">
						<c:if test="${viewCategory == 'all'}">
							<option value="all" selected>전체</option>
							<option value="TIL">TIL</option>
							<option value="클래스">클래스</option>
							<option value="질문">질문</option>
						</c:if>
						<c:if test="${viewCategory == 'TIL'}">
							<option value="all">전체</option>
							<option value="TIL" selected>TIL</option>
							<option value="클래스">클래스</option>
							<option value="질문">질문</option>
						</c:if>
						<c:if test="${viewCategory == '클래스'}">
							<option value="all">전체</option>
							<option value="TIL">TIL</option>
							<option value="클래스" selected>클래스</option>
							<option value="질문">질문</option>
						</c:if>
						<c:if test="${viewCategory == '질문'}">
							<option value="all">전체</option>
							<option value="TIL">TIL</option>
							<option value="클래스">클래스</option>
							<option value="질문" selected>질문</option>
						</c:if>
					</select>
				</div>
			</td>
			<td align=right style="padding-bottom: 15px; padding-right: 20px;">
				<button class="btn btn-default" onclick="location.href='${path}/class/classboard/all'">전체보기</button>&nbsp;
				<button class="btn btn-success" onclick="location.href='${path}/class/classboard/write'">작성</button>
			</td>
		</tr>
	</table>
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th style="text-align: center; width: 70px;" >번호</th>
				<th style="text-align: center; width: 70px;" >말머리</th>
				<th style="text-align: center; width: 300px;">제목</th>
				<th style="text-align: center; width: 100px;">작성자</th>
				<th style="text-align: center; width: 100px;">작성일</th>
				<th style="text-align: center; width: 60px;" >조회</th>
				<th style="text-align: center; width: 60px;" ><span class="glyphicon glyphicon-thumbs-up"></span></th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty list}">
				<tr style="background-color: #FFFFFF;">
					<td colspan="7">게시글이 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach var="board" items="${list}">
				<tr>
					<td>${board.boardNo}</td>
					<td>${board.category}</td>
					<td>
						<a href="${path}/class/classboard/detail/${board.boardNo}">${board.title}</a>&nbsp;
						<a href="${path}/class/classboard/detail/${board.boardNo}/comment"><span class="badge">${board.commentNum}</span></a>
					</td>
					<td>${board.writerName}</td>
					<td><fmt:formatDate value="${board.writeDate}" pattern="yyyy-MM-dd"/></td>
					<td>${board.views}</td>
					<td>${board.likes}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- 하단 부분 테이블 형태로 구성 -->
	<table style="width: 100%;">
		<tr>
			<!-- 검색 -->
			<td align=center style="padding-bottom: 15px;">
				<div class="input-group col-sm-5">
					<div class="input-group-btn btn-group">
						<!-- 검색 범위 선택 : 제목+내용, 제목, 내용, 작성자 -->
						<select class="form-control" id="searchCode" name="searchCode" style="width: 110px;">
							<c:if test="${searchCode == '1' || empty searchCode}">
								<option value="1" selected>제목+내용</option>
								<option value="2">제목</option>
								<option value="3">내용</option>
								<option value="4">작성자</option>
							</c:if>
							<c:if test="${searchCode == '2'}">
								<option value="1">제목+내용</option>
								<option value="2" selected>제목</option>
								<option value="3">내용</option>
								<option value="4">작성자</option>
							</c:if>
							<c:if test="${searchCode == '3'}">
								<option value="1">제목+내용</option>
								<option value="2">제목</option>
								<option value="3" selected>내용</option>
								<option value="4">작성자</option>
							</c:if>
							<c:if test="${searchCode == '4'}">
								<option value="1">제목+내용</option>
								<option value="2">제목</option>
								<option value="3">내용</option>
								<option value="4" selected>작성자</option>
							</c:if>
						</select>
						<%-- 
						<!-- 말머리 선택 : 선택된 말머리의 글만 표시 -->
						<select class="form-control" id="searchCategory" name="searchCategory" style="width: 90px;">
							<c:if test="${viewCategory == 'all'}">
								<option value="all" selected>전체</option>
								<option value="TIL">TIL</option>
								<option value="클래스">클래스</option>
								<option value="질문">질문</option>
							</c:if>
							<c:if test="${viewCategory == 'TIL'}">
								<option value="all">전체</option>
								<option value="TIL" selected>TIL</option>
								<option value="클래스">클래스</option>
								<option value="질문">질문</option>
							</c:if>
							<c:if test="${viewCategory == '클래스'}">
								<option value="all">전체</option>
								<option value="TIL">TIL</option>
								<option value="클래스" selected>클래스</option>
								<option value="질문">질문</option>
							</c:if>
							<c:if test="${viewCategory == '질문'}">
								<option value="all">전체</option>
								<option value="TIL">TIL</option>
								<option value="클래스">클래스</option>
								<option value="질문" selected>질문</option>
							</c:if>
						</select>
						--%>
					</div>
					<input type="text" id="keyword" name="keyword" class="form-control" value="${nowKeyword}" placeholder="검색어를 입력하세요." maxlength=50/>
					<span class="input-group-btn">
						<button class="btn btn-info" id="searchBtn"><span class="glyphicon glyphicon-search"></span></button>
					</span>
				</div>
			</td>
		</tr>
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
			<%-- <a href="/class/classroom/${viewCategory}/<%= startPage - 1 %>">&lt;&lt;</a>&nbsp; --%>
			<%
		}
		//pageNumber가 1보다 큰 경우에만 < 버튼을 보여준다.
		if(pageNumber > 1) {
			%>
			<button type="button" class="btn btn-default" onclick="location.href='${path}/<%=paging%>/<%=pageNumber - 1%>'">&lt;</button>
			<%-- <a href="/class/classroom/${viewCategory}/<%= pageNumber - 1 %>">[이전]</a> --%>
			<%
		}
		
		//하단에 페이지 번호를 보여준다.
		for(int num = startPage; num <= endPage; num++) {
			if (num == pageNumber) {
			%>
			<button type="button" class="btn btn-success" onclick="location.href='${path}/<%=paging%>/<%=num%>'"><%=num%></button>
			<%-- <a style="color: #33ee33;" href="/class/classroom/${viewCategory}/<%= num %>">[<%= num %>]</a> --%>
			<%
			} else {
			%>
			<button type="button" class="btn btn-default" onclick="location.href='${path}/<%=paging%>/<%=num%>'"><%=num%></button>
			<%-- <a href="/class/classroom/${viewCategory}/<%= num %>">[<%= num %>]</a> --%>
			<%
			}
		}
		
		//다음 페이지로 갈 수 있도록 한다.
		//pageNumber가 pageCount보다 작은 경우에만 > 버튼을 보여준다.
		if(pageNumber < pageCount) {
			%>
			<button type="button" class="btn btn-default" onclick="location.href='${path}/<%=paging%>/<%=pageNumber + 1%>'">&gt;</button>
			<%-- <a href="/class/classroom/${viewCategory}/<%= pageNumber + 1 %>">[다음]</a>&nbsp; --%>
			<%
		}
		//endPage가 pageCount보다 작은 경우에만 >> 버튼을 보여준다.
		if(endPage < pageCount) {
			%>
			<button type="button" class="btn btn-default" onclick="location.href='${path}/<%=paging%>/<%=endPage + 1%>'">&gt;&gt;</button>
			<%-- <a href="/class/classroom/${viewCategory}/<%= endPage + 1 %>">&gt;&gt;</a> --%>
			<%
		}
		%>
		</div>
	</footer>
</div>
	
	<%@ include file="../include/footer.jsp" %>
	<script>
	$(document).ready(function() {
		
		/*
		// 검색 상태에서 말머리가 바뀌면 말머리 내에서 다시 검색
		// 말머리가 바뀌었을 경우
		$("#viewCategory").on("change", function() {
			if('${nowKeyword}' == ""){ //검색창에 검색어가 없을 때
				location.href="/class/classroom/" + this.value;
			} else { //검색창에 검색어가 있을 때
				location.href="/class/search/" + "${nowKeyword}" + "/" + $("#viewCategory").val();
			}
		});
		*/
		// 검색 버튼이 눌렸을 경우
		$("#searchBtn").on("click", function() {
			searchBoard($("#keyword").val(), $("#searchCode").val(), $("#viewCategory").val());
		});
		// 검색창에서 엔터키를 입력할 경우
		$("#keyword").keyup(function(e) { if(e.keyCode == 13) {
			searchBoard($("#keyword").val(), $("#searchCode").val(), $("#viewCategory").val());
		}});
		
	});
	</script>
</body>
</html>