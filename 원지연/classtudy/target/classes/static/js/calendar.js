// 출처 - https://medium.com/@wooder2050
// 프로젝트에 맞게 내용 수정 및 추가
// 현재 path 경로 저장
var path = document.getElementById("nowPath").value;
var currentTitle = document.getElementById('current-year-month');
var calendarBody = document.getElementById('calendar-body');
var mainTodayDate = document.getElementById('main-date');
var mainTodayStatus = document.getElementById('main-status');
var realToday = new Date();
var today = new Date();
var first = new Date(today.getFullYear(), today.getMonth(),1);
//var dayList = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
var dayList = ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'];
//var monthList = ['January','February','March','April','May','June','July','August','September','October','November','December'];
var monthList = ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'];
var leapYear = [31,29,31,30,31,30,31,31,30,31,30,31];
var notLeapYear = [31,28,31,30,31,30,31,31,30,31,30,31];
var pageFirst = first;
var pageYear;
if(first.getFullYear() % 4 === 0){
    pageYear = leapYear;
}else{
    pageYear = notLeapYear;
}
// 새로운 달력 출력
function showCalendar(){
    let monthCnt = 100;
    let cnt = 1;
    for(var i = 0; i < 6; i++){
        var $tr = document.createElement('tr');
        $tr.setAttribute('id', monthCnt);
        for(var j = 0; j < 7; j++){
            if((i === 0 && j < first.getDay()) || cnt > pageYear[first.getMonth()]){
                var $td = document.createElement('td');
                $tr.appendChild($td);
            }else{
                var $td = document.createElement('td');
                $td.textContent = cnt;
                $td.setAttribute('id', cnt);
                // 존재하는 날짜임을 표시
                $td.setAttribute('class', 'existDate');
                // 해당 날짜에 출석이 되었는지 확인
                var thisDate = new Date(today.getFullYear(), today.getMonth(), cnt);
                if (checkTodayStatus(thisDate) === true) { $td.setAttribute('class', 'existDate yesDate'); }
                $tr.appendChild($td);
                cnt++;
            }
        }
        monthCnt++;
        calendarBody.appendChild($tr);
    }
    currentTitle.innerHTML = first.getFullYear() + '년&nbsp;&nbsp;&nbsp;'+ monthList[first.getMonth()];
}
showCalendar();

// 화면에 있는 달력 없애기
function removeCalendar(){
    let catchTr = 100;
    for(var i = 100; i< 106; i++){
        var $tr = document.getElementById(catchTr);
        $tr.remove();
        catchTr++;
    }
}

// 활동내역칸의 날짜를 업데이트
function showMain(){
    mainTodayDate.innerHTML = (today.getMonth()+1) + '월&nbsp;&nbsp;' + today.getDate() + '일&nbsp;&nbsp;' + dayList[today.getDay()];
    // 해당 날짜에 출석을 했는지 확인
    //checkTodayStatus(today);
    if (checkTodayStatus(today) === true) { mainTodayStatus.innerHTML = '출석을 완료했습니다.'; }
    else { mainTodayStatus.innerHTML = '출석을 하지 않았습니다.'; }
}
var clickedDate1 = document.getElementById(today.getDate());
clickedDate1.classList.add('active');
var prevBtn = document.getElementById('prev');
var nextBtn = document.getElementById('next');
prevBtn.addEventListener('click',prev);
nextBtn.addEventListener('click',next);
var tdGroup = [];
showMain();

// 선택된 날짜에 출석을 했는지 확인
function checkTodayStatus(thisToday){
	// 로그인한 회원 아이디와 이름을 저장
	var loginId = document.getElementById("loginId").value;
	var todayStr = thisToday.getFullYear() + '-' + (thisToday.getMonth()+1) + '-' + thisToday.getDate();
	var result = false;
	$.ajax({
		url:	"/member/checkTodayStatus/",
		type:	"get",
		data:	{"memberId": loginId, "today": todayStr},
		async:	false,
		success: function(data) {
			// 출석을 했으면 true를 보낸다.
			if (data > 0) { result = true; }
			//if (data > 0) { mainTodayStatus.innerHTML = '출석을 완료했습니다.'; }
			//else { mainTodayStatus.innerHTML = '출석을 하지 않았습니다.'; }
		}
	});
	return result;
}

// 달력에 날짜별로 EventListener 추가
function clickStart(){
    for(let i = 1; i <= pageYear[first.getMonth()]; i++){
        tdGroup[i] = document.getElementById(i);
        tdGroup[i].addEventListener('click',changeToday);
    }
}
clickStart();

// 클릭하면 선택된 날짜 변경
function changeToday(e){
    for(let i = 1; i <= pageYear[first.getMonth()]; i++){
        if(tdGroup[i].classList.contains('active')){
            tdGroup[i].classList.remove('active');
        }
    }
    clickedDate1 = e.currentTarget;
    clickedDate1.classList.add('active');
    today = new Date(today.getFullYear(), today.getMonth(), clickedDate1.id);
    showMain();
    keyValue = today.getFullYear() + '' + today.getMonth()+ '' + today.getDate();
    reshowingHistory();
}

// 이전 달로 이동
function prev(){
    if(pageFirst.getMonth() === 1){
        pageFirst = new Date(first.getFullYear()-1, 12, 1);
        first = pageFirst;
        if(first.getFullYear() % 4 === 0){
            pageYear = leapYear;
        }else{
            pageYear = notLeapYear;
        }
    }else{
        pageFirst = new Date(first.getFullYear(), first.getMonth()-1, 1);
        first = pageFirst;
    }
    today = new Date(today.getFullYear(), today.getMonth()-1, today.getDate());
    //currentTitle.innerHTML = first.getFullYear() + '년&nbsp;&nbsp;&nbsp;'+ monthList[first.getMonth()];
    removeCalendar();
    showCalendar();
    showMain();
    clickedDate1 = document.getElementById(today.getDate());
    clickedDate1.classList.add('active');
    clickStart();
    reshowingHistory();
}

// 다음 달로 이동
function next(){
	// 현재 이후로 갈 수 없도록 한다.
	if (today.getFullYear() == realToday.getFullYear() && today.getMonth() == realToday.getMonth()) {
		alert("현재 이후로 갈 수 없습니다.");
	} else {
	    if(pageFirst.getMonth() === 12){
	        pageFirst = new Date(first.getFullYear()+1, 1, 1);
	        first = pageFirst;
	        if(first.getFullYear() % 4 === 0){
	            pageYear = leapYear;
	        }else{
	            pageYear = notLeapYear;
	        }
	    }else{
	        pageFirst = new Date(first.getFullYear(), first.getMonth()+1, 1);
	        first = pageFirst;
	    }
	    today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
	    //currentTitle.innerHTML = first.getFullYear() + '년&nbsp;&nbsp;&nbsp;'+ monthList[first.getMonth()];
	    removeCalendar();
	    showCalendar(); 
	    showMain();
	    clickedDate1 = document.getElementById(today.getDate());
	    clickedDate1.classList.add('active');  
	    clickStart();
	    reshowingHistory();
	}
}

// 활동내역을 다시 출력
function reshowingHistory(){
	var todayStr = today.getFullYear() + '-' + (today.getMonth()+1) + '-' + today.getDate();
	// 로그인한 회원 아이디와 이름을 저장
	var loginId = document.getElementById("loginId").value;
	// 처음에 보여줄 내역 개수
	var numOfPage = 3;
	// 현재 출력된 내역 개수
	var numOfShowPage = 0;
	// 게시글에 연결될 상세보기 링크
	var boardName = ['class', 'free', 'group'];
	var boardKoreanName = ['클래스', '자유', '그룹'];
	var detailPath = [path + '/class/classboard/detail/', path + '/community/freeboard/detail/', path + '/community/groupboard/detail/'];
	// 작성한 게시글에 보여지는 내용 변경
	var result1 = '';
	var result2 = '';
	for (var i=0; i<boardName.length+0; i++) {
		$.ajax({
			url:	"/member/" + boardName[i] + "boardToday",
			type:	"get",
			data:	{"memberId": loginId, "today": todayStr},
			async:	false,
			success: function(data) {
				var str1 = '';
				var str2 = '';
				$.each(data, function(key, value){
					if (key+numOfShowPage < numOfPage+0) {
						str1 += '<tr><td>' + boardKoreanName[i] + '</td>';
						str1 += '<td><a href="' + detailPath[i] + value.boardNo + '">'+ value.title + '</a>&nbsp;';
						str1 += '<a href="' + detailPath[i] + value.boardNo + '/comment">';
						str1 += '<span class="badge">' + value.commentNum + '</span></a></td></tr>';
					} else {
						str2 += '<tr><td>' + boardKoreanName[i] + '</td>';
						str2 += '<td><a href="' + detailPath[i] + value.boardNo + '">'+ value.title + '</a>&nbsp;';
						str2 += '<a href="' + detailPath[i] + value.boardNo + '/comment">';
						str2 += '<span class="badge">' + value.commentNum + '</span></a></td></tr>';
					}
					if (key == numOfPage+0) {
						str1 += '<tr><td colspan="2">';
						str1 += '<div class="accordion-heading" style="height: 10px; position: relative; top: -3px;">';
						str1 += '<a class="accordion-toggle" data-toggle="collapse" href="#myTodayBoardSecond"';
						str1 += ' onclick="viewSecondList(\'#myTodayBoardSecond\', \'#viewTodayBoardBtn\');"';
						str1 += 'style="color: #444444"><span id="viewTodayBoardBtn" class="glyphicon glyphicon-chevron-down"></span></a>';
						str1 += '</div></td></tr>';
					}
				});
				numOfShowPage += data.length+0;
				result1 += str1;
				result2 += str2;
			}
		});
	} //End - for
	if (numOfShowPage+0 < 1) { //게시글이 없을 때
		result1 += '<tr style="background-color: #FFFFFF;">';
		result1 += '<td colspan="2">게시글이 없습니다.</td></tr>';
	}
	$("#myTodayBoardFirst").html(result1);
	$("#myTodayBoardSecond").html(result2);
	$("#myTodayBoardSecond").hide();
	// 작성한 댓글에 보여지는 내용 변경
	result1 = '';
	result2 = '';
	numOfShowPage = 0;
	for (var i=0; i<boardName.length+0; i++) {
		$.ajax({
			url:	"/member/" + boardName[i] + "boardCommentToday",
			type:	"get",
			data:	{"memberId": loginId, "today": todayStr},
			async:	false,
			success: function(data) {
				var str1 = '';
				var str2 = '';
				$.each(data, function(key, value){
					var showContent = value.content;
					if (value.content.length+0 > 50) {
						showContent = value.content.substring(0, 50) + '&hellip; &hellip;';
					}
					if (key+numOfShowPage < numOfPage+0) {
						str1 += '<tr><td>' + boardKoreanName[i] + '</td>';
						str1 += '<td><a href="' + detailPath[i] + value.boardNo + '/comment">' + showContent + '</a></td></tr>';
					} else {
						str2 += '<tr><td>' + boardKoreanName[i] + '</td>';
						str2 += '<td><a href="' + detailPath[i] + value.boardNo + '/comment">' + showContent + '</a></td></tr>';
					}
					if (key == numOfPage+0) {
						str1 += '<tr><td colspan="2">';
						str1 += '<div class="accordion-heading" style="height: 10px; position: relative; top: -3px;">';
						str1 += '<a class="accordion-toggle" data-toggle="collapse" href="#myTodayCommentSecond"';
						str1 += ' onclick="viewSecondList(\'#myTodayCommentSecond\', \'#viewTodayCommentBtn\');"';
						str1 += 'style="color: #444444"><span id="viewTodayCommentBtn" class="glyphicon glyphicon-chevron-down"></span></a>';
						str1 += '</div></td></tr>';
					}
				});
				numOfShowPage += data.length+0;
				result1 += str1;
				result2 += str2;
			}
		});
	} //End - for
	if (numOfShowPage+0 < 1) { //댓글이 없을 때
		result1 += '<tr style="background-color: #FFFFFF;">';
		result1 += '<td colspan="2">댓글이 없습니다.</td></tr>';
	}
	$("#myTodayCommentFirst").html(result1);
	$("#myTodayCommentSecond").html(result2);
	$("#myTodayCommentSecond").hide();
}
reshowingHistory();