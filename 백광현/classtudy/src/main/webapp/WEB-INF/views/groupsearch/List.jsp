<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<!--List.jsp jquery datepicker-->  
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>
<!-- header -->
	<header class="banner">
		<div class="banner__inner">
			<h1>Study 그룹을 통해 성장해보세요</h1>
			<h4>다양한 사람들과 그룹활동을 통하여 공부해보세요</h4>
			<div class="BTN">
			  	<button class="btn btn-primary" onclick="location.href='${path}/community/groupsearch/groupInsert'" type="button">그룹 만들기</button>
			</div>
			<br>
			<div class="More">
				<i class="fas fa-angle-double-down">
					<a href="#main" class="more">그룹 찹여하기</a>
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
		<!-- item이란 controller에서 보내주는 정보의 이름과 같이야 한다. 현재는 model.addAttribute에서 "List"로 지정했기에 이름을 동일하게 작성한다. -->
		<c:forEach var="groupsearch" items="${List}" varStatus="vs">	
		<div class="box"><!-- box -->
			
			<div class="box-inner">
		
				<div class="inner-top">
					<div><div class="title">${groupsearch.title}	(그룹명 :${groupsearch.groupName}, 그룹넘버 :${groupsearch.groupNo} )</div></div>
					<div>
						<div class="writeDate"><fmt:formatDate value="${groupsearch.writeDate}" pattern="yy-MM-dd"/></div>
						<div class="writer">${groupsearch.writer}</div>
					</div>
				</div>
					
				<div class="inner-body"> 
					
					<div class="startStudyDate">
						<div class="startStudyDate__day">
							<div class="MMdd">
								<i class="far fa-calendar-alt fa-lg" ></i>	
								<fmt:formatDate value="${groupsearch.startStudy}" pattern="MM-dd"/>
							</div>
							<div>
								<div class="Ebody">
									<div class="E"><fmt:formatDate value="${groupsearch.startStudy}" pattern="E"/></div>
									<span>요일</span>
								</div>					
							</div>
						</div>
						
						<div class="form-group form-inline">
							<label class="control-label col-sm-2">태&nbsp;&nbsp;&nbsp;&nbsp;그</label>
							<div class="col-sm-8" align="left">
								<input type="hidden" id="isDetail" name="isDetail" value="yes"/>
								<input type="text" id="tags" name="tags" class="form-control" data-role="tagsinput" value="${groupsearch.tags}" disabled/>
							</div>
						</div>
						
					</div>
					
					<!-- Button trigger modal -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal${vs.index}" id="viewBtn" onclick="viewBtn(${vs.index},${groupsearch.groupNo});">
						  View
					</button>
				</div>
				
				<!-- Modal 영역 start-->
				<div class="modal fade modalView" id="myModal${vs.index}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog modal-dialog-scrollable" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
					    <div class="inner-top">
					    	
							<div><div class="title">${groupsearch.title} (그룹명 :${groupsearch.groupName}, 그룹넘버 :${groupsearch.groupNo} ) </div></div>
							<div>
								<div class="writeDate"><fmt:formatDate value="${groupsearch.writeDate}" pattern="yy-MM-dd"/></div>
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
												<fmt:formatDate value="${groupsearch.startStudy}" pattern="MM-dd"/>
											</div>
											<div>
												<div class="Ebody">
													<div class="E"><fmt:formatDate value="${groupsearch.startStudy}" pattern="E"/></div>
													<span>요일</span>
												</div>
											</div>
										</div>
									</div>
						
									<div class="form-group form-inline">
										<label class="control-label col-sm-2">태&nbsp;&nbsp;&nbsp;&nbsp;그</label>
										<div class="col-sm-8" align="left">
											<input type="hidden" id="isDetail" name="isDetail" value="yes"/>
											<input type="text" id="tags" name="tags" class="form-control" data-role="tagsinput" value="${groupsearch.tags}" disabled/>
										</div>
									</div>
						
								</div>
						    	<!-- groupsearch.groupNo : ${groupsearch.groupNo}<br>
						        groupsearch.content : ${groupsearch.content}<br>
						        groupsearch.boardNo : ${groupsearch.boardNo}<br> 
						        vs.index : ${vs.index}<br>
						        ${member.name}; -->
						        ${groupsearch.content}
						        
						</div>
						<div class="modalBtns">
							<c:if test="${member.memberId == groupsearch.writer}">
				      			<button type="button" class="btn btn-info" id="modalDelBtn" onclick="location.href='/community/delete/${groupsearch.boardNo}'">삭제</button>
									<!-- <button type="button" class="btn btn-success" onclick="location.href='/board/update/${detail.bno}'">수정</button> -->
							</c:if>
					        <button type="button" class="btn btn-primary" id="insertJoin" onclick="insertJoin(${groupsearch.groupNo})">join</button>
					        
					        <c:if test="${member.group3 == grouplist.groupNo}">
					        <button type="button" class="btn btn-primary" onclick="insertDrop(${groupsearch.groupNo})">Drop</button>
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
									<input type="hidden" class="replyBno" id="replyBno" name="boardNo" value="${groupsearch.boardNo}"/>
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
<%@ include file="../groupsearch/groupCommentAction.jsp" %>

<script>
	/*function insertBtn(){
		location.href="/groupsearch/groupInsert";
	}*/



</script>

</body>	
</html>