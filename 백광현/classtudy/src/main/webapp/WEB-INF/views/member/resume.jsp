<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.member.domain.MemberDTO" %>
<%@ page import="com.edu.member.domain.ResumeDTO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>이력서</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %>
<div class="container" style="padding-bottom: 30px">
	<form class="form-horizontal" action="/member/resume" method="post">
		<header>
			<h1>이력서 작성</h1><br>
		</header>
		<!-- 숨겨서 보낼 정보 -->
		<input type="hidden" id="writer" name="writer" value="${member.memberId}" maxlength=16/>

		<div class="form-group">
			<div class="col-sm-2" align="right">
				[ 인적사항 ]
			</div>
			<hr align="left" width="82%">
		</div>
		<div class="form-group">		
			<label class="control-label col-sm-2">이름</label>
			<div class="col-sm-2">
				<input type="text" id="writerName" name="writerName" class="form-control" value="${member.name}" maxlength=16 readonly/>
			</div>
			<label class="control-label col-sm-2">생년월일</label>
			<div class="col-sm-2">
				<input type="date" id="dateOfBirth" name="dateOfBirth" class="form-control" value="${member.dateOfBirth}" readonly/>
			</div>
			<label class="control-label col-sm-2">전화번호</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" name="tel" id="tel" value="${member.tel}" readonly>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">주소</label>
			<div class="col-sm-6">
					<input type="text" class="form-control" value="${member.address}&nbsp;${member.addressDetail}" name="address" id="address" readonly/>
			</div>
			<label class="control-label col-sm-2">우편번호</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" name="zipcode" id="zipcode" value="${member.zipcode}" readonly/>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-2" align="right">
				[ 학&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;력 ]
			</div>
			<hr align="left" width="82%">
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">학교명</label>
			<div class="col-sm-3">
				<input type="text" id="schoolName" name="schoolName" class="form-control" placeholder="학교명을 입력해주세요."/>
			</div>
			<label class="control-label col-sm-1">학력구분</label>
				<div class="col-sm-3">
					<input type="text" id="schoolLevel" name="schoolLevel" class="form-control" placeholder="(2,3년제)(4년)(고등학교)중 입력해주세요."/>
				</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">전공명</label>
			<div class="col-sm-3">
				<input type="text" id="univMajor" name="univMajor" class="form-control" placeholder="전공학과를 입력해주세요."/>
			</div>
			<label class="control-label col-sm-1">학점</label>
				<div class="col-sm-3">
					<input type="text" id="schoolGrade" name="schoolGrade" class="form-control" placeholder="학점을 입력해주세요."/>
				</div>
		</div>
		<div class="form-group">
			<div class="col-sm-2" align="right">
				[ 경&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;력 ]
			</div>
			<hr align="left" width="82%">
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">회사명</label>
			<div class="col-sm-3">
				<input type="text" id="companyName" name="companyName" class="form-control" placeholder="회사명을 입력해주세요."/>
			</div>
			<label class="control-label col-sm-1">부서명</label>
				<div class="col-sm-3">
					<input type="text" id="companyPart" name="companyPart" class="form-control" placeholder="부서명을 입력해주세요."/>
				</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">직급</label>
			<div class="col-sm-3">
				<input type="text" id="position" name="position" class="form-control" placeholder="직급을 입력해주세요."/>
			</div>
			<label class="control-label col-sm-1">근무기간</label>
				<div class="col-sm-3">
					<input type="number" id="workPeriod" name="workPeriod" class="form-control" placeholder="근무기간을 년단위로 입력해주세요."/>
				</div>
			<label class="control-label col-sm-1">연봉</label>
			<div class="col-sm-2">
				<input type="number" id="salary" name="salary" class="form-control" placeholder="연봉을 입력해주세요."/>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-2" align="right">
				[ 자&nbsp;격&nbsp;증 ]
			</div>
			<hr align="left" width="82%">
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">자격증명</label>
			<div class="col-sm-3">
				<input type="text" id="license" name="license" class="form-control" placeholder="자격증명을 입력해주세요."/>
			</div>
			<label class="control-label col-sm-1">발행기관</label>
				<div class="col-sm-3">
					<input type="text" id="certificateAgency" name="certificateAgency" class="form-control" placeholder="발행기관을 입력해주세요."/>
				</div>
			<label class="control-label col-sm-1">취득일</label>
			<div class="col-sm-2">
				<input type="date" id="certificateDay" name="certificateDay" class="form-control" value=""
				min="1990-01-01" max="" value="2000-01-01" maxlength="10" placeholder="취득일 입력해주세요."/>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-2" align="right">
				[ 자기소개서 ]
			</div>
			<hr align="left" width="82%">
		</div>
		<div class="form-group">
			<div class="form-group">
				<label class="control-label col-sm-6 col-sm-offset-1">지원분야/회사에 지원하는 지원동기는?</label>
			</div>
			<div class="col-sm-5 col-sm-offset-2" align="center">
				<textarea id="content1" name="content1" rows="10" cols="85"></textarea>
			</div>
		</div>
		<div class="form-group">
			<div class="form-group">
				<label class="control-label col-sm-6 col-sm-offset-2">입사 후 포부를 제시하고, 그에 따른 노력을 구체적으로 작성하시오.</label>
			</div>
			<div class="col-sm-5 col-sm-offset-2" align="center">
				<textarea id="content2" name="content2" rows="10" cols="85"></textarea>
			</div>
		</div>
		<div class="form-group">
			<div class="form-group">
				<label class="control-label col-sm-6 col-sm-offset-2">성격의 장/단점을 보여줄 만한 구체적인 사례를 작성하시오.</label>
			</div>
			<div class="col-sm-5 col-sm-offset-2" align="center">
				<textarea id="content3" name="content3" rows="10" cols="85"></textarea>
			</div>
		</div>
		<footer>
			<div class="col-sm-12" align="center">
				<button type="submit" class="btn btn-success" id="resumeBtn" >등록</button>&nbsp;
				<button type="button" class="btn btn-warning cancel">취소</button>	
			</div>
		</footer>
	</form>
</div>
<%@ include file="../include/footer.jsp" %>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	$(document).ready(function() {
		
		// 취소 버튼이 눌렸을 경우
		$(".cancel").on("click", function() {
			if(confirm("정말 취소하시겠습니까?") == false){
				return false;
			} else {
				location.href ="/member/resume";
			}
		});
		$("#resumeBtn").on("click", function() {
			if(confirm("다 입력하셨습니까?") == false){
				return false;
			} else {
				location.href ="/member/resumeView/${resume.boardNo}";
			}
		});
	});
	</script>
</body>
</html>