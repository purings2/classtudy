<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 탈퇴</title>	
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>
	<div class="container">
		<form class="form-horizontal" action="/member/memberDelete" method="post">
			<div class="form-group">
				<div class="col-sm-2"></div>
				<div class="col-sm-6">
					<h2 align="left">회원탈퇴</h2>
					<h5><span class="label label-warning">회원 탈퇴 진행을 위해 비밀번호와 비밀번호확인을 다시 한 번 입력해주세요.</span></h5>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input type="text" id="userid" name="userid" class="form-control" value="${member.userid}" readonly="readonly" maxlength=16 placeholder="아이디를 입력하세요."/>
					<div class="text-center small mt-2" id="checkMsg" style="color: red"></div>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input type="password" id="passwd" name="passwd" class="form-control" placeholder="비밀번호를 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">비밀번호확인</label>
				<div class="col-sm-3">
					<input type="password" id="passwdCheck" name="passwdCheck" class="form-control" placeholder="비밀번호를 한 번 더 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">이  름</label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control" value="${member.name}" readonly="readonly" maxlength=16 placeholder="이름을 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">생년월일</label>
				<div class="col-sm-3">
					<input type="text" id="dateOfBirth" name="dateOfBirth" class="form-control" value="${member.dateOfBirth}" readonly="readonly" maxlength=16 placeholder="이름을 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
		   		<label class="control-label col-sm-2">성  별</label>
					<c:if test="${member.gender == 'M'}">
				   		<div class="control-form col-sm-3">		   				
						   <label for="gender-M"><input type="radio" id="gender" name="gender" value="M" checked/>남성</label>
						   <label for="gender-F"><input type="radio" id="gender" name="gender" value="F"/>여성</label>
						</div>
					</c:if>
					<c:if test="${member.gender == 'F'}">
						<div class="control-form col-sm-3">
						   <label for="gender-M"><input type="radio" id="gender" name="gender" value="M"/>남성</label>
						   <label for="gender-F"><input type="radio" id="gender" name="gender" value="F" checked/>여성</label>
						</div>
					</c:if>					   
			</div>			
			<div class="form-group">
				<label class="control-label col-sm-2">전화번호</label>
				<div class="col-sm-3">
					<input type="text" id="tel" name="tel" class="form-control" value="${member.tel}" readonly="readonly" maxlength=16 placeholder="전화번호를 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">우편번호</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="zipcode" id="zipcode" value="${member.zipcode}" readonly/>
					<input type="button" class="form-control" onclick="daumZipCode()" value="우편번호검색"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">주  소</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" value="${member.address}" readonly="readonly" name="address" id="address"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">상세 주소</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" value="${member.addressDetail}" readonly="readonly" name="addressDetail" id="addressDetail"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">이메일</label>
				<div class="col-sm-3">
					<input type="text" id="email" name="email" class="form-control" value="${member.email}" readonly="readonly" placeholder="이메일을 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-4">
					<button type="submit" class="btn btn-danger" id="memberDelete">회원탈퇴</button>
					<button type="button" class="btn btn-info cancel">취소</button>
				</div>
			</div>
			<!-- 회원탈퇴 버튼을 눌렀는데 비밀번호가 맞지 않으면 메시지를 보여준다. -->
			<c:if test="${msg == false}">
				<div class="form-group">
					<div class="col-sm-8">
						<h3><span class="label label-danger">회원탈퇴를 실패하였습니다. 비밀번호와 비밀번호확인을 확인하신 후에 다시 시도해 주세요.</span></h3>
					</div>
				</div>
			</c:if>
		</form>		
	</div>	
	<%@ include file="../include/footer.jsp" %>
	
	<script>

		$(document).ready(function() {			
			// 취소 버튼이 눌렸을 경우
			$(".cancel").on("click", function() {
				location.href ="/member/login";
			});			
		});	
	
		//회원탈퇴 버튼을 눌렀을 경우 => 비밀번호가 비어있는지 검사한다.
		$("#submit").on("click", function() {			
			if($("#passwd").val() == "") {
				alert("비밀번호를 입력하십시오.");
				$("#passwd").focus();
				return false;
			}
			if($("#passwdCheck").val() == "") {
				alert("비밀번호확인을 입력하십시오.");
				$("#passwd").focus();
				return false;
			}

		// 회원정보탈퇴 버튼을 눌렀을 경우
		$("#memberDelete").on("click", function() {
			location.href="/member/memberDelete";
		});
		
	</script>
</body>
</html>












