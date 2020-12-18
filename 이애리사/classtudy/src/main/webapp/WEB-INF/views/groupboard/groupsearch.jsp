<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<%@ include file="../include/header.jsp" %> 
	<!-- Groupsearch CSS-->
	<link rel="stylesheet" href="/static/css/groupsearch.css"/>
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>
<!-- header -->
	<header class="banner">
		<div class="banner__inner">
			<h1>Study 그룹을 통해 성장해보세요</h1>
			<h4>다양한 사람들과 그룹활동을 통하여 공부해보세요</h4>
			<div class="BTN">
				<button class="btn btn-primary" onclick="insertBtn()" type="button">그룹 만들기</button>
			</div>
			<br>
			<div class="More">
				<i class="fas fa-angle-double-down">
					<a href="#main" class="more">그룹 참여하기</a>
				</i>
			</div>
		</div>
	</header>

<!-- Nav 
<ul class="nav" id="navList">
  <li class="nav-item">
    <a class="nav-item__link " href="/community/group">StudyGroup</a>
  </li>
  <li class="nav-item">
    <a class="nav-item__link " href="/community/mygroup" id="myGroup">MyGroup</a>
  </li>
</ul>
-->
<div id="main"><!--  Main -->
	<div class="boxArea"><!-- boxArea -->
		
		<c:forEach var="board" items="${groupList}" varStatus="vs">	
		<div class="box"><!-- box -->
			
			<div class="box-inner">
		
				<div class="inner-top">
					<div><div class="title">${board.title}	(그룹명 :${board.groupName}, 그룹넘버 :${board.groupNo} )</div></div>
					<div>
						<div class="writeDate"><fmt:formatDate value="${board.writeDate}" pattern="yy-MM-dd"/></div>
						<div class="writer">${board.writer}</div>
					</div>
				</div>
					
				<div class="inner-body"> 
					
					<div class="startStudyDate">
						<div class="startStudyDate__day">
							<div class="MMdd">
								<i class="far fa-calendar-alt fa-lg" ></i>	
								<fmt:formatDate value="${board.startStudy}" pattern="MM-dd"/>
							</div>
							<div>
								<div class="Ebody">
									<div class="E"><fmt:formatDate value="${board.startStudy}" pattern="E"/></div>
									<span>요일</span>
								</div>					
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12" id="tagForm">
								<input class="tags" type="text" id="tags" name="tags" class="form-control" data-role="tagsinput" value="${board.tags}" disabled="disabled"/>
							</div>
						</div>
					</div>
		
					
					
					<!-- Button trigger modal -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal${vs.index}" id="viewBtn" onclick="viewBtn(${vs.index},${board.groupNo});">
						  View
					</button>
				</div>
				
				<!-- Modal 영역 start-->
				<div class="modal fade modalView" id="myModal${vs.index}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog modal-dialog-scrollable" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
					    <div class="inner-top">
					    	
							<div><div class="title">${board.title} (그룹명 :${board.groupName}, 그룹넘버 :${board.groupNo} ) </div></div>
							<div>
								<div class="writeDate"><fmt:formatDate value="${board.writeDate}" pattern="yy-MM-dd"/></div>
								<div class="writer" id="writer">${member.name}</div>
								
							</div>
						</div>
					   
				      	</div>
						    <div class="modal-body">
							    <div class="inner-body1"> 
									<div class="startStudyDate">
										<div class="startStudyDate__day">
											<div class="MMdd">
												<i class="far fa-calendar-alt fa-lg" ></i>	
												<fmt:formatDate value="${board.startStudy}" pattern="MM-dd"/>
											</div>
											<div>
												<div class="Ebody">
													<div class="E"><fmt:formatDate value="${board.startStudy}" pattern="E"/></div>
													<span>요일</span>
												</div>
											</div>
										</div>
									</div>
						
									<div class="form-group">
										
										<div class="col-sm-8">
											<input class="tags" type="text" id="tags" name="tags" class="form-control" data-role="tagsinput" value="${board.tags}" disabled="disabled"/>
										</div>	
									</div>
								</div>
						    	<!-- board.groupNo : ${board.groupNo}<br>
						        board.content : ${board.content}<br>
						        board.boardNo : ${board.boardNo}<br> 
						        vs.index : ${vs.index}<br>
						        ${member.name}; -->
						        ${board.content}
						        
						</div>
						<div class="modalBtns">
							<c:if test="${member.memberId == board.writer}">
				      			<button type="button" class="btn btn-info" id="modalDelBtn" onclick="location.href='/community/delete/${board.boardNo}'">삭제</button>
									<!-- <button type="button" class="btn btn-success" onclick="location.href='/board/update/${detail.bno}'">수정</button> -->
							</c:if>
					        <button type="button" class="btn btn-primary" id="insertJoin" onclick="insertJoin(${board.groupNo})">join</button>
					        
					        <c:if test="${member.group3 == grouplist.groupNo}">
					        <button type="button" class="btn btn-primary" onclick="insertDrop(${board.groupNo})">Drop</button>
					       </c:if> 
					    </div>    
				    	<div class="joinMember"></div>  
				      <div class="modal-footer">
				      	
							

					<c:if test="${member != null}">
					
					
				      		<!-- 댓글을 입력하는 영역 -->
						<div class="commentBody">
							<label for="comment">댓글</label><br>
							
							<form name="commentInsertForm">
								<div class="input-group">
									<!-- <input type="hidden" name="bno" value="${board.boardNo}"/> -->
									<input type="text" class="form-control" id="content" name="content" placeholder="내용을 입력하세요"/>
									<input type="hidden" class="replyBno" id="replyBno" name="boardNo" value="${board.boardNo}"/>
									<input type="hidden" class="replyWriter" id="replyWriter" name="writer" value="${member.memberId}" readonly/>

									<span class="input-group-btn">
										<button class="btn btn-warning" type="button" onclick="replyInsertBtn(${vs.index});">등록</button>
									</span>

								</div>
							</form>
						</div>
					</c:if>
				      		<!-- 저장된 댓글을 보여주는 영역 -->
						<div class="commentContainer">
						<label>댓글목록</label>
							<div class="commentList"></div><br>
						</div>
				     
				      </div>
				    </div>
				  </div>
				</div>
				<!-- Modal 영역 End -->
			</div><!-- box-inner End -->
					
		</div><!-- box -->
		</c:forEach>
					
	</div> <!-- boxAreaEnd -->
</div><!-- main End -->	


<%@ include file="../include/footer.jsp" %>

<!-- 댓글창 -->
<%@ include file="./groupCommentAction.jsp" %>

<script>
	function insertBtn(){
		location.href="/community/groupsearch/groupInsert";
	}
</script>

</body>	
</html>