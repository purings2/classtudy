<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>관리자 :: 통계</title>
	<%@ include file="../include/admin_header.jsp"%>
	<style type="text/css">
	@import url("https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css");
	@import url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css");
	</style>
	<style>
	.card-body {
		backgorund: #ddd;
	}
	.card-body2 {
	        margin: 0 auto; /* Added */
	        float: none; /* Added */
	        margin-bottom: 10px; /* Added */
	        margin-top: 10px; /* Added */
	}
	.card:hover {
		box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
	}
	.card-header {
			height: 35px;
			font-size: 13px;
	}
	</style>
</head>
<body>
	<%@ include file="../include/admin_menu.jsp" %>
	<div class="content">
		<div class="container-fluid" style="padding: 30px 10px;">
			<div class="card" style="background: #F8F9F9; font-size: 13px;">
				<div class="card-body">
					<h3 class="card-title"><span class="glyphicon glyphicon-flash"></span> 통계</h3>
					<p class="card-text">게시글, 회원, 방문자수, 포인트 등의 통계</p>
				</div>
			</div>
			<br>
			<div class="card-deck">
				<div class="card text-black mb-3 bg-default"
					style="width: 300px; /* background: #A2D9CE; */">
					<div class="card-header" style="background: #D1F2EB;">새로운 글</div>
					<div class="card-body">
						<h5 class="card-title"></h5>
						<h1 class="card-text">${totalCount}</h1>
						<p>하루</p>
					</div>
				</div>
				<div class="card text-black mb-3 bg-default">
					<div class="card-header" style="background: #FCF3CF;">조회수</div>
					<div class="card-body">
						<h5 class="card-title"></h5>
						<h1 class="card-text">${getMainhits}</h1>
						<p>하루</p>
					</div>
				</div>
				<div class="card text-black mb-3 bg-default">
					<div class="card-header" style="background: #E8DAEF;">댓글</div>
					<div class="card-body">
						<h5 class="card-title"></h5>
						<h1 class="card-text">${totalcommentCount}</h1>
						<p>하루</p>
					</div>
				</div>
				<div class="card text-black mb-3 bg-default">
					<div class="card-header" style="background: #FADBD8;">신규회원</div>
					<div class="card-body">
						<h5 class="card-title"></h5>
						<h1 class="card-text">${memberCount}</h1>
						<p>하루</p>
					</div>
				</div>
			</div>
			<div class="card-deck">
				<div class="card bg-default">
					<div class="card-header">요일별 방문자수</div>
					<div class="card-body2 text-center">
						<canvas id="myChart" height="400"></canvas>
					</div>
				</div>
				<div class="card bg-default">
					<div class="card-header">회원 구성</div>
					<div class="card-body2 text-center">
						<canvas id="logChart" height="400"></canvas>
					</div>
				</div>
				<div class="card bg-default">
					<div class="card-header">게시판 활동량</div>
					<div class="card-body2 text-center">
						<canvas id="doughnutChart" height="400"></canvas>
					</div>
				</div>
			</div>
			<br>
			<div class="card-deck">
				<div class="card bg-default">
					<div class="card-header">누적 포인트</div>
					<div class="card-body2 text-center">
						<canvas id="myLineChart" height="400"></canvas>
					</div>
				</div>
				<div class="card bg-default">
					<div class="card-header">카드 헤더</div>
					<div class="card-body2 text-center ">
						<canvas id="logChart" height="400"></canvas>
					</div>
				</div>
			</div>
			<br>
		</div>
	</div>
	<%@ include file="../include/admin_footer.jsp"%>
	<script>
		var ctx = document.getElementById("logChart").getContext('2d');
		var myChart = new Chart(ctx, {
			type : 'bar',
			data : {
				labels : [ "남자 회원", "여자 회원" ],
				datasets : [ {
					data : [ '${menCount}', '${womenCount}' ], //컨트롤러에서 모델로 받아온다.
					backgroundColor : [ 'rgba(54, 162, 235, 0.2)',
							'rgba(255, 99, 132, 0.2)'
					],
					borderColor : [ 'rgba(54, 162, 235, 1)',
							'rgba(255,99,132,1)'
					],
					borderWidth : 1
				} ]
			},
			options : {
				responsive : false,
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : true
						}
					} ]
				},
			}
		});
	</script>
	<script>
		var ctx2 = document.getElementById('myChart');
		var myChart = new Chart(ctx2,
				{
					type : 'bar',
					data : {
						labels : [ '일', '월', '화', '수', '목',
								'금', '토' ],
						datasets : [ {
							label : '조회수',
							data : ['${getSunday}','${getMonday}','${getTuesday}','${getWednesday}',
								'${getThursday}','${getFriday}','${getSaturday}'],
							backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)',
									'rgba(153, 102, 255, 0.2)',
									'rgba(123, 122, 255, 0.2)',
									'rgba(255, 159, 64, 0.2)' ],
							borderColor : [ 'rgba(255, 99, 132, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)',
									'rgba(153, 102, 255, 1)',
									'rgba(123, 122, 255, 1)',
									'rgba(255, 159, 64, 1)' ],
							borderWidth : 1
						} ]
					},
					options : {
						responsive : false

					}
				});
	</script>
	
	<script>
		// 도넛형 차트
		var ctx3 = document.getElementById("doughnutChart");
		var myDoughnutChart = new Chart(ctx3, {
			type : 'doughnut',
			data : {
				datasets : [ {
					backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(123, 122, 255, 0.2)' ],
					borderColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
							'rgba(123, 122, 255, 1)' ],
					borderWidth : 1,
					data : [ '${freeboardCount}', '${groupsearchCount}', '${classboardCount}', '${groupboardCount}' ]
				} ],
				// 라벨의 이름이 툴팁처럼 마우스가 근처에 오면 나타남
				labels : [ '프리보드 게시글', '그룹서치 게시글', '클래스보드 게시글', '그룹보드 게시글 ' ]
			},
			options : {
				responsive : false,
			}
		});
	</script>
	<script>
		new Chart(document.getElementById("myLineChart"), {
			type : 'line',
			data : {
				labels : [ '1', '2', '3', '4', '5', '6', '7' ],
				datasets : [ {
					label : '테스트 데이터셋',
					data : [ 10, 3, 30, 23, 10, 5, 50 ],
					borderColor : "rgba(255, 201, 14, 1)",
					backgroundColor : "rgba(255, 201, 14, 0.5)",
				} ]
			},
			options : {
				responsive : false,
			}
		});
	</script>
	
</body>
</html>