<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>관리자 로그인 메인</title>
	<%@ include file="../adinclude/admin_header.jsp" %>
</head>
<body>
	<div class="container">
		<form class="form-horizontal" action="/admin/login" method="post">
			<!-- 로그인을 하지 않고 들어온 경우 : 로그인할 자료를 입력 할 수 있게 한다. -->
			<c:if test="${admin == null}">
			<div class="form-group">
				<div class="col-sm-2"></div>
				<div class="col-sm-6">
					<h2 align="left">로그인</h2>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-4">
					<h5>아직 회원이 아니신가요?</h5>
					<p><a href="/admin/register"><span class="register">회원가입</span></a>을 진행해주세요!</p>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input type="text" id="adminId" name="adminId" class="form-control" maxlength=16 placeholder="아이디를 입력하세요."/>					
				</div>				
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input type="password" id="passwd" name="passwd" class="form-control" placeholder="비밀번호를 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-4">
					<button class="btn btn-success" type="submit" id="submit">로그인</button>
					<button class="cancel btn btn-danger" type="reset">취소</button>				
				</div>
			</div>
			</c:if>
			<!-- 세션을 체크하기 위해서는 상단에 page session을 true로 설정해야 한다. -->
			<!-- 정상적으로 로그인을 하여 세션값을 받아온 경우 -->
			<c:if test="${admin != null}">
				<div >
					<p><h2>${admin.adminId}님 환영합니다.</h2><p>
					<button id="adminUpdateBtn" type="button">회원정보수정</button>
					<button id="adminDeleteBtn" type="button">회원탈퇴</button>
					<button id="logoutBtn" type="button">로그아웃</button>
				</div>
			</c:if>
			<c:if test="${msg == false}">
				<div class="form-group">
					<div class="col-sm-8">
						<h3><span class="label label-danger">로그인을 실패하였습니다. 아이디와 비밀번호를 확인하신 후에 다시 하십시오.</span></h3>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-8">
						<div style="background-color:#CCFF00; color:red;">
							<h3>로그인을 실패하였습니다. 아이디와 비밀번호를 확인하신 후에 다시 하십시오.</h3>
						</div>
					</div>
				</div>
			</c:if>
		</form>
	</div>	
	<%@ include file="../adinclude/admin_footer.jsp" %>
	
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

			// 회원가입 버튼을 눌렀을 경우
			$(".register").on("click", function() {
				location.href="/admin/register"
			});

			// 로그아웃 버튼을 눌렀을 경우
			$("#logoutBtn").on("click", function() {
				location.href="/admin/logout";
			});

			// 회원정보수정 버튼을 눌렀을 경우
			$("#adminUpdateBtn").on("click", function() {
				location.href="/admin/adminUpdate";
			});

			// 회원탈퇴 버튼을 눌렀을 경우
			$("#adminDeleteBtn").on("click", function() {
				location.href="/admin/adminDelete";
			});
		});
		
		
	</script>
</body>
</html>












