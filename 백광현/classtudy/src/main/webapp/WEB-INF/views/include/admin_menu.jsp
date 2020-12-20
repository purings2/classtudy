<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<input type="hidden" id="nowPath" name="nowPath" class="form-control" value="${path}"/>
<div class="sidebar" id="sidebar">
	<a class="brand active" href="${path}/admin/">클래스터디</a>
	<a data-toggle="collapse" data-target="#member_submenu">
		회원 관리 <span class="caret"></span>
	</a>
	<div class="collapse" id="member_submenu">
		<a class="submenu" href="${path}/admin/member">회원 목록</a>
		<a class="submenu" href="${path}/admin/register/all">회원가입 승인</a>
	</div>
	<a data-toggle="collapse" data-target="#lecture_submenu">
		강의 관리 <span class="caret"></span>
	</a>
	<div class="collapse" id="lecture_submenu">
		<a class="submenu" href="${path}/admin/lecture/all">강의 목록</a>
		<a class="submenu" href="${path}/admin/academy">학원 목록</a>
	</div>
	<a data-toggle="collapse" data-target="#board_submenu">
		게시판 관리 <span class="caret"></span>
	</a>
	<div class="collapse" id="board_submenu">
		<a class="submenu" href="${path}/adboard/board">게시글 관리</a>
		<a class="submenu" href="${path}/adboard/comment">댓글 관리</a>
	</div>
	<a href="${path}/admin/statistics">통계</a>
</div>