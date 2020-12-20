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
				<div class="card text-black mb-4 bg-default"
					style="width: 300px; /* background: #A2D9CE; */">
					<div class="card-header" style="background: #D1F2EB;">스터디</div>
					<div class="card-body">
						<h5 class="card-title">카드 타이틀</h5>
						<h2 class="card-text pull-right">70</h2>
					</div>
				</div>
				<div class="card text-black mb-4 bg-default"
					style="width: 300px; /* background: #F7DC6F; */">
					<div class="card-header" style="background: #FCF3CF;">프로젝트</div>
					<div class="card-body">
						<h5 class="card-title">카드 타이틀</h5>
						<h2 class="card-text pull-right">30</h2>
					</div>
				</div>
				<div class="card text-black mb-4 bg-default"
					style="width: 300px; /* background: #D7BDE2; */">
					<div class="card-header" style="background: #E8DAEF;">클래스</div>
					<div class="card-body">
						<h5 class="card-title">카드 타이틀</h5>
						<h2 class="card-text pull-right">200</h2>
					</div>
				</div>
				<div class="card text-black mb-4 bg-default"
					style="width: 300px;  /* background: #F1948A; */">
					<div class="card-header" style="background: #FADBD8;">TIL</div>
					<div class="card-body">
						<h5 class="card-title">카드 타이틀</h5>
						<h2 class="card-text pull-right">1000</h2>
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
					<div class="card-header">회원 구성</div>
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
				<!-- 	<div class="card bg-default align-items-center">
						<div class="card-body text-center">
							<canvas id="doughnutChart" height="400"></canvas>
						</div>
					</div> -->
			</div>
			<br>
			<div class="card-deck">
				<div class="card bg-default">
					<div class="card-header">최근 게시물</div>
					<div class="card-body">
						<table class="table table-hover">
							<thead>
								<tr>
									<th class="card-title">카드 타이틀</th>
									<th class="card-text">카드 텍스트</th>
									<th class="card-text">카드 텍스트</th>
									<th>Email</th>
								</tr>
							</thead>
							<tbody>
								<!-- <tr>
									<td>John</td>
									<td>Doe</td>
									<td>john@example.com</td>
								</tr> -->
								<c:forEach var="b" items="${board}">
								<tr>
									<td>${b.boardNo}</td>
									<td>${b.title}</td>
									<td>${b.writer}</td>
									<td>${b.writeDate}</td>
								</tr>
							</c:forEach>
								
							</tbody>
						</table>
					</div>
				</div>
				<!-- <div class="card bg-default align-items-center">
						<div class="card-body text-center">
							<canvas id="logChart" height="400"></canvas>
						</div>
					</div> -->
				<!-- 	<div class="card bg-default align-items-center">
						<div class="card-body text-center">
							<canvas id="doughnutChart" height="400"></canvas>
						</div>
					</div> -->
			</div>
			<div class="container-fluid">
				<!-- Control the column width, and how they should appear on different devices -->
				<div class="row"></div>
				<br>

				<div class="row"></div>
				<br> <br> <br> <br> <br> <br> <br>
				<br> <br>
				<!-- Or let Bootstrap automatically handle the layout -->
				<!-- 
				<div class="row">
					<div class="col-sm" style="background-color: lightgray;">25%</div>
					<div class="col-sm" style="background-color: lightblue;">25%</div>
					<div class="col-sm" style="background-color: lightgray;">25%</div>
					<div class="col-sm" style="background-color: lightblue;">25%</div>
				</div>
				<div class="row">
					<div class="col" style="background-color: lightgray;">25%</div>
					<div class="col" style="background-color: lightblue;">25%</div>
					<div class="col" style="background-color: lightgray;">25%</div>
					<div class="col" style="background-color: lightblue;">25%</div>
				</div>
				 -->
			</div>
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
							label : '# of Votes',
							data : [ 12, 19, 3, 5, 7, 3, 20 ],
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
							'rgba(255, 206, 86, 0.2)' ],
					borderColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)' ],
					borderWidth : 1,
					data : [ '${womenCount}', '${menCount}', '${menCount}' ]
				} ],
				// 라벨의 이름이 툴팁처럼 마우스가 근처에 오면 나타남
				labels : [ '여자 회원', '남자 회원', '남자 회원' ]
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