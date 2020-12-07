
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

<%@ include file="../include/admin_header.jsp"%>
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
										style="border: 1px solid #ddd">
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
													placeholder="${detail.writer}" name="writer" maxlength="50" readonly /></td>
											</tr>
											<tr>
												<td><input type="text" class="form-control"
													placeholder=<%=today%> name="writeDate" maxlength="50"
													readonly /></td>
											</tr>
											<tr>
												<td><select id="category" name="category"
													class="form-control">
														<option value="MON"
															<c:if test="${category=='공지사항'}"> selected </c:if>>공지사항</option>
														<option value="TUE"
															<c:if test="${category=='Q&A'}"> selected </c:if>>Q&A</option>
														<option value="WED"
															<c:if test="${category=='정보'}"> selected </c:if>>정보</option>
														<option value="THU"
															<c:if test="${category=='이야기'}"> selected </c:if>>이야기</option>
														<option value="FRI"
															<c:if test="${category=='그룹홍보'}"> selected </c:if>>그룹홍보</option>
												</select></td>
											</tr>
											<tr>
												<td><input type="text" class="form-control" id="title"
													placeholder="${detail.title}" name="title" maxlength="50" readonly> <!-- 패널 타이틀(optional) -->
													
												</td>
											</tr>
											<tr>
												<td><input type="text" class="form-control" id="tags"
													placeholder="태그" name="tags" maxlength="50" readonly/></td>
											</tr>
											<tr>
												<td><textarea class="form-control" placeholder="${detail.content}"
														id="content" name="content" maxlength="2048"
														style="height: 350px" readonly></textarea></td>
											</tr>

										</tbody>
									</table>
									<!-- <div class="pull-right">
										<input type="submit" class="btn btn-default pull-center"
											value="등록" /> <a href="freeboardList"
											class="btn btn-default pull-center" role="button">취소</a>
									</div> -->
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


<%@ include file="../include/admin_footer.jsp"%>


</html>
<%-- </layoutTag:layout>  --%>













