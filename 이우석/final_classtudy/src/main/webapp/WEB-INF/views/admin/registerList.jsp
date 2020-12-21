<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>관리자 :: 회원가입 승인</title>
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
	// 페이지 이동 버튼의 경로 설정
	String paging = "admin/register/" + (String)request.getAttribute("viewStatus");
	%>
<div class="content">
	<div class="container-fluid">
		<header>
			<h2>회원가입 승인</h2><br>
		</header>
		<!-- 상단 부분 테이블 형태로 구성 -->
		<table style="width: 100%;">
			<tr>
				<td align=left style="padding-bottom: 15px; padding-left: 20px;">
					<div class="btn-group">
						<!-- 보여줄 범위 선택 -->
						<select class="form-control" id="viewStatus" name="viewStatus" onchange="location.href='${path}/admin/register/' + this.value">
							<c:if test="${viewStatus == 'all'}">
								<option value="all" selected>전체</option>
								<option value="false">미확인</option>
								<option value="true">확인</option>
							</c:if>
							<c:if test="${viewStatus == 'false'}">
								<option value="all">전체</option>
								<option value="false" selected>미확인</option>
								<option value="true">확인</option>
							</c:if>
							<c:if test="${viewStatus == 'true'}">
								<option value="all">전체</option>
								<option value="false">미확인</option>
								<option value="true" selected>확인</option>
							</c:if>
						</select>
					</div>
				</td>
				<td align=right style="padding-bottom: 15px; padding-right: 20px;">
					<button class="btn btn-warning" onclick="registerCheckAll();">모두 승인</button>
				</td>
			</tr>
		</table>
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th style="text-align: center; width: 50px;" >번호</th>
					<th style="text-align: center; width: 80px;" >아이디</th>
					<th style="text-align: center; width: 200px;">강의이름</th>
					<th style="text-align: center; width: 70px;" >확인</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty registerList}">
					<tr style="background-color: #FFFFFF;">
						<td colspan="4">신청 내역이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${registerList}">
					<tr>
						<td>${list.listNo}</td>
						<td>${list.member}</td>
						<td>${list.lectureName}</td>
						<c:if test="${list.checked == true}">
							<td><i class="glyphicon glyphicon-ok"></i></td>
						</c:if>
						<c:if test="${list.checked == false}">
							<td id="confirmBtn${list.listNo}">
								<a href="#" onclick="registerCheck(${list.listNo});" class="btn btn-sm btn-info">승인</a>
							</td>
						</c:if>
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
</body>
</html>