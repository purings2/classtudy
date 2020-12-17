<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.member.domain.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>관리자 :: 회원 상세정보</title>
	<%@ include file="../include/admin_header.jsp"%>
</head>
<body>
	<%@ include file="../include/admin_menu.jsp"%>
	
<div class="content">
	<div class="container-fluid">
		<form class="form-horizontal" action="/admin/memberUpdate" method="post">
			<div class="form-group">
				<div class="col-sm-12">
					<h2 align="center">회원 상세정보</h2>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">아이디</label>
				<div class="col-sm-3">
					<input type="text" id="memberId" name="memberId" class="form-control" value="${member.memberId}" maxlength=16 readonly/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">이&nbsp;&nbsp;&nbsp;&nbsp;름</label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control" value="${member.name}" maxlength=16 readonly/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">생년월일</label>
				<div class="col-sm-3">
					<input type="date" id="dateOfBirth" name="dateOfBirth" class="form-control" value="${member.dateOfBirth}" 
						min="1900-01-01" max="" value="1990-01-01" maxlength=10 readonly/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">성&nbsp;&nbsp;&nbsp;&nbsp;별</label>
					<div class="control-form col-sm-2">
						<c:if test="${member.gender == 'M'}">
							<input type="text" class="form-control" name="tel" id="tel" value="남성" readonly/>
						</c:if>
						<c:if test="${member.gender == 'F'}">
							<input type="text" class="form-control" name="tel" id="tel" value="여성" readonly/>
						</c:if>
					</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4 col-xs-12">전화번호</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="tel" id="tel" value="${member.tel}" maxlength="4" readonly/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4 col-xs-12">우편번호</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="zipcode" id="zipcode" value="${member.zipcode}" readonly/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">주&nbsp;&nbsp;&nbsp;&nbsp;소</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" value="${member.address}" name="address" id="address" readonly/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">상세 주소</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" value="${member.addressDetail}" name="addressDetail" id="addressDetail" readonly/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">이메일</label>
				<div class="col-sm-4">
					<input type="text" id="email" name="email" class="form-control" value="${member.email}" readonly/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">강의이름</label>
				<div class="col-sm-4">
					<!-- 강의번호가 NULL일 때(int형이라 0으로 비교) -->
					<c:if test="${member.lectureNo == '0'}">
						<input type="hidden" id="lectureNo" name="lectureNo" class="form-control" value="${member.lectureNo}" readonly/>
						<input type="text" id="lectureNoState" name="lectureNoState" class="form-control" placeholder="종료된 강의" readonly/>
					</c:if>
					<!-- 강의번호가 있을 때 -->
					<c:if test="${member.lectureNo != '0'}">
						<input type="hidden" id="lectureNo" name="lectureNo" value="${member.lectureNo}" readonly/>
						<input type="text" id="lectureName" name="lectureName" class="form-control" value="${member.lectureName}" readonly/>
					</c:if>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12" style="text-align: center;">
					<button type="button" class="btn btn-primary" onclick="location.href='${path}/admin/member'">목록으로</button>
				</div>
			</div>
		</form>
	</div>
</div>
	
	<%@ include file="../include/admin_footer.jsp" %>
	<script>
	$(document).ready(function() {
		
		
	});	
	</script>
</body>
</html>