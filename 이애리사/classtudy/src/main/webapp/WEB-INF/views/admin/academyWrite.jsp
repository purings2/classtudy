<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="com.edu.admin.domain.AcademyDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>관리자 :: 학원 등록</title>
	<%@ include file="../include/admin_header.jsp"%>
</head>
<body>
	<%@ include file="../include/admin_menu.jsp"%>
	
<div class="content">
	<div class="container-fluid">
		<header>
			<h1>학원 등록</h1><br>
		</header>
		<form class="form-horizontal" action="/admin/academy/write" method="post">
			<div class="form-group">
				<label class="control-label col-sm-2">학원 이름</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" id="academyName" name="academyName" placeholder="학원 이름을 입력하세요" maxlength=30/>
				</div>
			</div>
			<footer>
				<div class="col-sm-12" align="center">
					<button type="button" class="btn btn-success" onclick="checkAcademyForm(this.form)">등록</button>&nbsp;
					<button type="button" class="btn btn-warning cancel">취소</button>
				</div>
			</footer>
		</form>
	</div>
</div>
	
	<%@ include file="../include/admin_footer.jsp"%>
	<script>
	$(document).ready(function() {
		
		// 취소 버튼이 눌렸을 경우
		$(".cancel").on("click", function() {
			if(confirm("정말 취소하시겠습니까?") == false){
				return false;
			} else {
				location.href = "/admin/academy";
			}
		});
		
	});
	</script>
</body>
</html>