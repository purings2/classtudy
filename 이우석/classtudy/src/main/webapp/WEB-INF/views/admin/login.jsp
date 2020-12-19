<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>관리자 로그인</title>
	<%@ include file="../include/admin_header.jsp" %>
</head>
<body>
	<div class="container" style="padding-top: 100px;">
		<form class="form-horizontal" action="/admin/login" method="post">
			<!-- 로그인을 하지 않고 들어온 경우 : 로그인할 자료를 입력 할 수 있게 한다. -->
			<c:if test="${admin == null}">
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-4">
						<h2 align="center">로그인</h2>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-offset-2 col-sm-3">아이디</label>
					<div class="col-sm-3">
						<input type="text" id="adminId" name="adminId" class="form-control" maxlength=16 placeholder="아이디를 입력하세요."/>					
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-offset-2 col-sm-3">비밀번호</label>
					<div class="col-sm-3">
						<input type="password" id="passwd" name="passwd" class="form-control" placeholder="비밀번호를 입력하세요."/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-4" style="text-align: center;">
						<button class="btn btn-success" type="submit" id="submit">로그인</button>
						<button class="cancel btn btn-danger" type="reset">취소</button>
					</div>
				</div>
			</c:if>
			<!-- 세션을 체크하기 위해서는 상단에 page session을 true로 설정해야 한다. -->
			<!-- 정상적으로 로그인을 하여 세션값을 받아온 경우 -->
			<c:if test="${admin != null}">
				<div align="center">
					<h4>로그인이 완료되었습니다.</h4><br>
					<button id="mainBtn" type="button" class="btn btn-primary btn-lg"
						onclick="location.href='${path}/admin/'">메인으로</button>
				</div>
			</c:if>
			<c:if test="${msg == false}">
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-6 col-xs-offset-2 col-xs-8" align="center">
						<div class="alert alert-danger"
							><b>로그인에 실패했습니다.<br>아이디와 비밀번호를 확인하신 후<br>다시 시도해주세요.</b
						></div>
					</div>
				</div>
			</c:if>
			<c:if test="${msgLogin == false}">
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-6 col-xs-offset-2 col-xs-8" align="center">
						<div class="alert alert-warning"
							><b>관리자만 이용할 수 있습니다.<br>먼저 로그인을 해주세요.</b
						></div>
					</div>
				</div>
			</c:if>
		</form>
	</div>
	<%@ include file="../include/admin_footer.jsp" %>
	
	<script>
	$(document).ready(function () {
		// 로그인 버튼을 눌렀을 경우
		$("#submit").on("click", function() {
			if($("#adminId").val() == "") {
				alert("아이디를 입력하십시오.");
				$("#adminId").focus();
				return false;
			}
			if($("#passwd").val() == "") {
				alert("비밀번호를 입력하십시오.");
				$("#passwd").focus();
				return false;
			}
		});
	});
	</script>
</body>
</html>