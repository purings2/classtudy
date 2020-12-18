
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
	Date now = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy년MM월dd일 E요일 a hh:mm:ss");

String today = sf.format(now);
%>

<%-- <%@ taglib prefix="layoutTag" tagdir="WEB-INF/tags" %>
<layoutTag:layout> --%>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>

<%@ include file="../adinclude/admin_header.jsp"%>
</head>
<body>

	<div class="content">
		<div class="container-fluid">

			<!-- Control the column width, and how they should appear on different devices -->
			<div class="row">
				<div class="container">
					<br>
					<div class="row">

						<div class="container">
							<div class="row">
								<form method="post" action="/adboard/insertProc">
									<table class="table"
										style="text-align: center; border: 1px solid #ddd">
										<thead>
											<tr>
												<th colspan="2"
													style="background-color: #eeeeee; text-align: center;">
													글쓰기</th>
											</tr>
										</thead>
										<tbody id="menuList">
											<tr>
												<td><input type="text" class="form-control"
													placeholder="이름을 입력하세요" name="writer" maxlength="50"/></td>
											</tr>
											<tr>
												<td><input type="text" class="form-control"
													placeholder=<%=today%> name="writeDate" maxlength="50"
													readonly /></td>
											</tr>
											<tr>
												<td><select id="category" name="category"
													class="form-control">
														<option value="공지사항">공지사항</option>
														<option value="Q&A">Q&A</option>
														<option value="정보">정보</option>
														<option value="이야기">이야기</option>
														<option value="그룹홍보">그룹홍보</option>
												</select></td>
											</tr>
											<tr>
												<td><input type="text" class="form-control" id="title"
													placeholder="글 제목" name="title" maxlength="50"> <!-- 패널 타이틀(optional) -->
												</td>
											</tr>
											<tr>
												<td><input type="text" class="form-control" id="tags"
													placeholder="태그" name="tags" maxlength="50" /></td>
											</tr>
											<tr>
												<td><textarea class="form-control" placeholder="글 내용"
														id="content" name="content" maxlength="2048"
														style="height: 350px"></textarea></td>
											</tr>

										</tbody>
									</table>
									<div class="pull-right">
										<input type="submit" class="btn btn-default pull-center"
											value="등록" /> <a href="freeboardList"
											class="btn btn-default pull-center" role="button">취소</a>
									</div>
								</form>
							</div>
						</div>

					</div>
				</div>
			</div>
			<br>


		</div>
	</div>
</body>


<%@ include file="../adinclude/admin_footer.jsp"%>


</html>
<%-- </layoutTag:layout>  --%>













