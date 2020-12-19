<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.member.domain.MemberDTO" %>
<%@ page import="com.edu.member.domain.ResumeDTO" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<form class="form-horizontal "action="/member/resumeView/${resume.resumeNo}">
		<div class="form-group">
			<header>
				<h1><b>이&nbsp;&nbsp;력&nbsp;&nbsp;서</b></h1>
			</header>
		</div>
		<!-- 숨겨서 넘길 정보들 -->
		<input type="hidden" id="writer" name="writer" value="${member.memberId}" maxlength=16/>

		<div class="form-group">
			<div class="col-sm-2" align="right">
				[ 인적사항 ]				
			</div>
			<hr align="left" width="82%">
				<table style="width: 100%;">
					<tr>
						<td rowspan="6"style="text-align: center; width: 7%;">(사진)</td>
					</tr>
					<tr>
						<th style="text-align: center; width: 2%; font-size: 20px; ">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</th>
						<td style="text-align: left; width: 5%; font-size: 18px;">${member.name}</td>
					</tr>
					<tr>
						<th style="text-align: center; width: 2%; font-size: 20px;">생년월일</th>
						<td style="text-align: left; width: 10%; font-size: 18px;">${member.dateOfBirth}</td>
					</tr>
					<tr>
						<th style="text-align: center; width: 2%; font-size: 20px;">전화번호</th>
						<td style="text-align: left; width: 10%; font-size: 18px;">${member.tel}</td>
					</tr>
					<tr>
						<th style="text-align: center; width: 2%; font-size: 20px;">우편번호</th>
						<td style="text-align: left; width: 10%; font-size: 18px;">${member.zipcode}</td>
					</tr>
					<tr>
						<th style="text-align: center; width: 2%; font-size: 20px;">주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소</th>
						<td style="text-align: left; width: 10%; font-size: 18px;">${member.address}&nbsp;${member.addressDetail}</td>
					</tr>
				</table>
		</div>
		<div class="form-group">
			<div class="col-sm-2" align="right">
				[ 학&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;력 ]
			</div>
			<hr align="left" width="82%">
		</div>
		<div class="form-group">
			<table style="width: 100%;">
				<tr>
					<th style="text-align: center; width: 12%; font-size: 20px;">학&nbsp;교&nbsp;명</th>
					<th style="text-align: center; width: 12%; font-size: 20px;">학력구분</th>
					<th style="text-align: center; width: 12%; font-size: 20px;">전&nbsp;공&nbsp;명</th>
					<th style="text-align: center; width: 12%; font-size: 20px;">학&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;점</th>
				</tr>
			</table>
		</div>
		<div class="form-group">
			<table style="width: 100%;">
				<tr>
					<td style="text-align: center; width: 12%; font-size: 18px;">${resume.schoolName}</td>
					<td style="text-align: center; width: 12%; font-size: 18px;">${resume.schoolLevel}</td>
					<td style="text-align: center; width: 12%; font-size: 18px;">${resume.univMajor}</td>
					<td style="text-align: center; width: 12%; font-size: 18px;">${resume.schoolGrade}&nbsp;점</td>
				</tr>
			</table>
		</div>
		<div class="form-group">
			<div class="col-sm-2" align="right">
				[ 경&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;력 ]
			</div>
			<hr align="left" width="82%">
		</div>
		<div class="form-group">
			<table style="width: 100%;">
				<tr>
					<th style="text-align: center; width: 9%; font-size: 20px;">회사명</th>
					<th style="text-align: center; width: 7%; font-size: 20px;">부서명</th>
					<th style="text-align: center; width: 7%; font-size: 20px;">직&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;급</th>
					<th style="text-align: center; width: 7%; font-size: 20px;">근무기간</th>
					<th style="text-align: center; width: 7%; font-size: 20px;">연봉</th>
				</tr>
			</table>
		</div>
		<div class="form-group">
			<table style="width: 100%;">
				<tr>
					<td style="text-align: center; width: 9%; font-size: 18px;">${resume.companyName}</td>
					<td style="text-align: center; width: 7%; font-size: 18px;">${resume.companyPart}</td>
					<td style="text-align: center; width: 7%; font-size: 18px;">${resume.position}</td>
					<td style="text-align: center; width: 7%; font-size: 18px;">${resume.workPeriod}년</td>
					<td style="text-align: center; width: 7%; font-size: 18px;">
						<fmt:formatNumber value="${resume.salary}" pattern="#,###"/>&nbsp;만원
					</td>
				</tr>
			</table>
		</div>
		<div class="form-group">
			<div class="col-sm-2" align="right">
				[ 자&nbsp;격&nbsp;증 ]
			</div>
			<hr align="left" width="82%">
		</div>
		<div class="form-group">
			<table style="width: 100%;">
				<tr>
					<th style="text-align: center; width: 9%; font-size: 20px;">자격증명</th>
					<th style="text-align: center; width: 7%; font-size: 20px;">발행기관</th>
					<th style="text-align: center; width: 7%; font-size: 20px;">취득일</th>
				</tr>
			</table>
		</div>
		<div class="form-group">
			<table style="width: 100%;">
				<tr>
					<td style="text-align: center; width: 9%; font-size: 18px;">${resume.license}</td>
					<td style="text-align: center; width: 7%; font-size: 18px;">${resume.certificateAgency}</td>
					<td style="text-align: center; width: 7%; font-size: 18px;">${resume.certificateDay}</td>
				</tr>
			</table>
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
				<textarea id="content1" name="content1" rows="10" cols="85" style="border: 0px">${resume.content1}</textarea>
			</div>
		</div>
		<div class="form-group">
			<div class="form-group">
				<label class="control-label col-sm-6 col-sm-offset-2">입사 후 포부를 제시하고, 그에 따른 노력을 구체적으로 작성하시오.</label>
			</div>
			<div class="col-sm-5 col-sm-offset-2" align="center">
				<textarea id="content2" name="content2" rows="10" cols="85" style="border: 0px">${resume.content2}</textarea>
			</div>
		</div>
		<div class="form-group">
			<div class="form-group">
				<label class="control-label col-sm-6 col-sm-offset-2">성격의 장/단점을 보여줄 만한 구체적인 사례를 작성하시오.</label>
			</div>
			<div class="col-sm-5 col-sm-offset-2" align="center">
				<textarea id="content3" name="content3" rows="10" cols="85" style="border: 0px">${resume.content3}</textarea>
			</div>
		</div>
	</form>
</div>

<%@ include file="../include/footer.jsp" %>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>