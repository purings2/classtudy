
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


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
									<table class="table table-striped"
										style="text-align: center; border: 1px solid #ddd">
										<thead>
											<tr>
												<th colspan="2"
													style="background-color: #eeeeee; text-align: center;">
													게시판 동록</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><input type="text" class="form-control"
													placeholder="글 제목" name="subject" maxlength="50"></td>
											</tr>
											<tr>
												<td><input type="text" class="form-control"
													placeholder="작성자" name="writer" maxlength="50"></td>
											</tr>
											<tr>
												<td><textarea class="form-control" placeholder="글 내용"
														name="content" maxlength="2048" style="height: 350px"></textarea></td>
											</tr>
											
										</tbody>
									</table>
									<input type="submit" class="btn btn-default pull-center"
										value="등록"/>
								</form>
							</div>
						</div>

					</div>
				</div>
			</div>
			<br>
	
			<!-- Or let Bootstrap automatically handle the layout -->
			<div class="row">
				<div class="col-sm" style="background-color: lightgray;">25%</div>
				<div class="col-sm" style="background-color: lightblue;">25%</div>
				<div class="col-sm" style="background-color: lightgray;">25%</div>
				<div class="col-sm" style="background-color: lightblue;">25%</div>
			</div>
			<br>

			<div class="row">
				<div class="col" style="background-color: lightgray;">25%</div>
				<div class="col" style="background-color: lightblue;">25%</div>
				<div class="col" style="background-color: lightgray;">25%</div>
				<div class="col" style="background-color: lightblue;">25%</div>
			</div>
		</div>
	</div>
</body>


<%@ include file="../adinclude/admin_footer.jsp"%>


</html>
<%-- </layoutTag:layout>  --%>













