<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.member.domain.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 탈퇴</title>	
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>
	<div class="container" style="padding-bottom: 20px;">
		<form class="form-horizontal" action="/member/memberDelete" method="post">
			<div class="form-group">
				<div class="col-sm-12">
					<h2 align="center">회원 탈퇴</h2>
					<b>회원 탈퇴를 하시려면 비밀번호와 비밀번호확인을 입력해주세요.</b>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">아이디</label>
				<div class="col-sm-3">
					<input type="text" id="memberId" name="memberId" class="form-control" value="${member.memberId}" readonly="readonly" maxlength=16/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">비밀번호</label>
				<div class="col-sm-3">
					<input type="password" id="passwd" name="passwd" class="form-control" placeholder="비밀번호를 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">비밀번호확인</label>
				<div class="col-sm-3">
					<input type="password" id="passwdCheck" name="passwdCheck" class="form-control" placeholder="비밀번호를 한 번 더 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">이  름</label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control" value="${member.name}" maxlength=16 readonly/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">생년월일</label>
				<div class="col-sm-3">
					<input type="date" id="dateOfBirth" name="dateOfBirth" class="form-control" value="${member.dateOfBirth}" maxlength=10 readonly/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">성  별</label>
					<c:if test="${member.gender == 'M'}">
						<div class="control-form col-sm-3" style="text-align: left;">
							<label for="gender-M"><input type="radio" id="gender" name="gender" value="M" checked disabled/> 남성</label>&nbsp;
							<label for="gender-F"><input type="radio" id="gender" name="gender" value="F" disabled/> 여성</label>
						</div>
					</c:if>
					<c:if test="${member.gender == 'F'}">
						<div class="control-form col-sm-3" style="text-align: left;">
							<label for="gender-M"><input type="radio" id="gender" name="gender" value="M" disabled/> 남성</label>&nbsp;
							<label for="gender-F"><input type="radio" id="gender" name="gender" value="F" checked disabled/> 여성</label>
						</div>
					</c:if>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">전화번호</label>
				<div class="col-sm-3">
					<input type="text" id="tel" name="tel" class="form-control" value="${member.tel}" readonly="readonly" maxlength=16 placeholder="전화번호를 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">우편번호</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="zipcode" id="zipcode" value="${member.zipcode}" readonly/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">주  소</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" value="${member.address}" readonly="readonly" name="address" id="address"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">상세 주소</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" value="${member.addressDetail}" readonly="readonly" name="addressDetail" id="addressDetail"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">이메일</label>
				<div class="col-sm-3">
					<input type="text" id="email" name="email" class="form-control" value="${member.email}" readonly="readonly" placeholder="이메일을 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">강의번호</label>
				<div class="col-sm-3">
					<!-- 강의번호가 DEFAULT 값일 때 -->
					<c:if test="${member.lectureNo == '1'}">
						<input type="text" id="lectureNoState" name="lectureNoState" class="form-control" value="강의번호 확인 중입니다" readonly/>
						<input type="hidden" id="lectureNo" name="lectureNo" class="form-control" value="${member.lectureNo}" readonly/>
					</c:if>
					<!-- 강의번호가 NULL일 때(int형이라 0으로 비교) -->
					<c:if test="${member.lectureNo == '0'}">
						<input type="text" id="lectureNoState" name="lectureNoState" class="form-control" placeholder="강의가 종료되었습니다" readonly/>
						<input type="hidden" id="lectureNo" name="lectureNo" class="form-control" value="${member.lectureNo}" readonly/>
					</c:if>
					<!-- 강의번호가 있을 때 -->
					<c:if test="${member.lectureNo != '1' && member.lectureNo != '0'}">
						<input type="text" id="lectureNo" name="lectureNo" class="form-control" value="${member.lectureNo}" readonly/>
					</c:if>
				</div>
			</div>
			<!-- 탈퇴 버튼을 눌렀는데 비밀번호가 맞지 않으면 메시지를 보여준다. -->
			<c:if test="${msgDelete == 'fail'}">
				<div class="form-group">
					<h3><span class="label label-danger">회원 탈퇴에 실패했습니다. 비밀번호를 확인하신 후 다시 시도해주세요.</span></h3>
				</div>
			</c:if>
			<div class="form-group">
				<div class="col-sm-12" style="text-align: center;">
					<button type="button" class="btn btn-danger" onclick="deleteCheckForm(this.form)">탈퇴하기</button>&nbsp;
					<button type="button" class="btn btn-default cancel">취소</button>
				</div>
			</div>
		</form>
	</div>
	<%@ include file="../include/footer.jsp" %>
	
	<script>
	$(document).ready(function() {
		
		// 취소 버튼이 눌렸을 경우 => OK하면 메인으로 이동
		$(".cancel").on("click", function() {
			if(confirm("정말 취소하시겠습니까?") == false){
				return false;
			} else {
				location.href ="/";
			}
		});
		
	});
	</script>
</body>
</html>