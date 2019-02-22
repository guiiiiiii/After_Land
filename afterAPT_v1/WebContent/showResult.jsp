<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="model.vo.AptCoefVO, java.util.ArrayList, model.vo.AptNameVO, java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>애프터 부동산</title>
<!-- Font Awesome Icons -->
<link href="./Resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<!-- Google Fonts -->

<link href="https://fonts.googleapis.com/css?family=Noto+Serif"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet">
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic'
	rel='stylesheet' type='text/css'>

<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon&amp;subset=korean"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Poor+Story&amp;subset=korean"
	rel="stylesheet">
<!-- Plugin CSS -->
<link href="./Resources/vendor/magnific-popup/magnific-popup.css"
	rel="stylesheet">

<!-- Theme CSS - Includes Bootstrap -->
<link href="./Resources/css/creative.min.css" rel="stylesheet">
<link rel="icon" href="./Resources/img/logoIcon.png">
<!-- Font Awesome Icons -->
<link href="./Resources/css/bootstrap.min.css" rel="stylesheet">

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>
	jQuery(document).ready(function($) {
		$('.no-margins').counterUp({
			delay : 10,
			time : 1000
		});
	});
</script>


<style>
body {
	font-family: "open sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
	background-color: #2f4050;
	font-size: 13px;
	color: #676a6c;
	overflow-x: hidden;
	margin: 0;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol";
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	text-align: left;
	background-color: #fff;
}

.wrapper {
	padding: 20px 10px 40px;
}

.wrapper-content {
	padding: 0 20px;
	margin-left: auto;
}

div {
	display: block;
}

.row {
	display: ms-flexbox;
	display: flex;
	ms-flex-warp: wrap;
	flex-wrap: wrap;
	margin-right: -15px;
	margin-left: -15px;
}

.text-center {
	text-align: center !important
}

*, ::after, ::before {
	box-sizing: border-box;
}

@media ( min-width :992px) .col-lg-3 {
	ms-flex
	
	
	
	
	
	
	
	
	:
	
	
	
	
	
	
	
	
	0
	0
	25%;
	flex
	
	
	
	
	
	
	
	
	:
	
	
	
	
	
	
	
	
	0
	0
	25%;
	max-width
	
	
	
	
	
	
	
	
	:
	
	
	
	
	
	
	
	
	25%;
}

.col, .col-1, .col-10, .col-11, .col-12, .col-2, .col-3, .col-4, .col-5,
	.col-6, .col-7, .col-8, .col-9, .col-auto, .col-lg, .col-lg-1,
	.col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4,
	.col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-auto,
	.col-md, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2,
	.col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8,
	.col-md-9, .col-md-auto, .col-sm, .col-sm-1, .col-sm-10, .col-sm-11,
	.col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6,
	.col-sm-7, .col-sm-8, .col-sm-9, .col-sm-auto, .col-xl, .col-xl-1,
	.col-xl-10, .col-xl-11, .col-xl-12, .col-xl-2, .col-xl-3, .col-xl-4,
	.col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-auto {
	position: relative;
	/*    width: 100%;  */
	min-height: 1px;
	padding-right: 15px;
	padding-left: 15px;
	margin-left: 15px;
	margin-right: auto;
}

.col-lg-8 {
	position: relative;
	width: 100%;
	padding-right: 15px;
	padding-left: 15px
}

.ibox {
	clear: both;
	margin-bottom: 25px;
	margin-top: 0;
	padding: 0;
}

.mt-0, .my-0 {
	margin-top: 0 !important
}

.ibox-title {
	moz-border-bottom-colors: none;
	-moz-border-left-colors: none;
	-moz-border-right-colors: none;
	-moz-border-top-colors: none;
	background-color: #ffffff;
	border-color: #e7eaec;
	border-image: none;
	border-style: solid solid none;
	border-width: 2px 0 0;
	color: inherit;
	margin-bottom: 0;
	padding: 15px 90px 8px 15px;
	min-height: 48px;
	position: relative;
	clear: both;
}

#al {
	display: inline-block;
	float: left;
	width: 50%;
	margin:auto;
}

.ibox-title, float-right {
	margin-right: -75px;
}

.ibox-title .label {
	margin-left: 4px;
}

.ibox .label {
	font-size: 10px;
}

.label-success, .badge-success {
	background-color: #1c84c6;
	color: #FFFFFF;
}

.label {
	background-color: #d1dade;
	color: #5e5e5e;
	font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
	font-weight: 600;
	padding: 3px 8px;
	text-shadow: none;
	border-radius: 0.25em;
	line-height: 1;
	white-space: nowrap;
}

.float-right {
	float: right !important;
}

.ibox-content {
	clear: both;
	background-color: #ffffff;
	color: inherit;
	padding: 15px 20px 20px 20px;
	border-color: #e7eaec;
	border-image: none;
	border-style: solid solid none;
	border-width: 1px 0;
}

.ibox-content h1, .ibox-content h2, .ibox-content h3, .ibox-content h4,
	.ibox-content h5, .ibox-title h1, .ibox-title h2, .ibox-title h3,
	.ibox-title h4, .ibox-title h5 {
	margin-top: 5px;
}

.no-margins {
	margin: 0 !important;
}

h1 {
	font-size: 30px;
}

h1, h2, h3, h4, h5, h6 {
	font-weight: 100;
}

.h1, h1 {
	font-size: 2.5rem;
}

.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
	font-family: inherit;
	font-weight: 500;
	line-height: 1.2;
	color: inherit;
}

h1, h2, h3, h4, h5, h6 {
	margin-top: 0;
	margin-bottom: .5rem;
}

.text-success {
	color: #1c84c6 !important;
}

.font-bold {
	font-weight: 600;
}

.stat-percent {
	float: right;
}

.text-success {
	color: #28a745 !important;
}

.justify-content-center {
	-webkit-box-pack: center !important;
	-ms-flex-pack: center !important;
	justify-content: center !important
}

#color-overlay {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-image: linear-gradient(to bottom right, #34495e, #2c3e50);
	opacity: 0.6;
	z-index: -1;
}

.with-bg-size {
	background-image: url('./Resources/img/mainBG3.jpg');
	width: 100%;
	height: 100%;
	background-position: center;
	background-size: cover;
	-webkit-animation: back 5s infinite; /* Safari 4+ */
	-moz-animation: back 5s infinite; /* Fx 5+ */
	-o-animation: back 5s infinite; /* Opera 12+ */
	animation: back 5s infinite; /* IE 10+, Fx 29+ */
}
/* The Keyframes*/
@
keyframes back { 25% {
	background-image: url('./Resources/img/mainBG7.jpg');
}

50%
{
background-image








:




 




url








('./
Resources
/img/mainBG5








.jpg








');
}
75%{
background-image








:




 




url








('./
Resources
/img/mainBG6








.jpg








');
}

/* Animation Does Not End At 100% Because It Makes The Images Transition In/Out Better For Some Reason*/
}
text {
	font-family: 'Poor Story';
	fill: rgb(255, 255, 255);
	text-anchor: middle;
	font-size: 12px;
}
</style>
</head>
<body class='pace-done' id="page-top">
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
		id="mainNav" style='background-color: rgb(64, 63, 71);'>
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="/afterAPT_v1/apt"
				style="font-family: 'Do Hyeon'; font-size: 25px;"> <img
				src="./Resources/img/logoIcon.png" width=30
				style="margin-right: 10px;">애프터 부동산
			</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive"></div>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class='wrapper wrapper-content'>
		<div class='row'>
			<%
				double result = (double) request.getAttribute("result");
				double examplelow = (double) request.getAttribute("examplelow");
				double examplehigh = (double) request.getAttribute("examplehigh");
			%>
			<div class='col-lg-3'>
				<div class='ibox'>
					<div class='ibox-title'>
						<span class='label label-success float-right'>Predict</span>
						<h5 style="font-family: 'Do Hyeon';">최저 예측가</h5>
					</div>
					<div class='ibox-content'>
						<h1 class='no-margins'><%=examplelow%></h1>
						<div class="stat-percent font-bold text-success">Lowest</div>
						<small>만원</small>
					</div>
				</div>
			</div>


			<div class='col-lg-3'>
				<div class='ibox'>
					<div class='ibox-title'>
						<span class='label label-success float-right'>Predict</span>
						<h5 style="font-family: 'Do Hyeon';">예측가</h5>
					</div>
					<div class='ibox-content'>
						<h1 class='no-margins'><%=result%></h1>
						<div class="stat-percent font-bold text-success">Reasonable</div>
						<small>만원</small>
					</div>
				</div>
			</div>
			<div class='col-lg-3'>
				<div class='ibox'>
					<div class='ibox-title'>
						<span class='label label-success float-right'>Predict</span>
						<h5 style="font-family: 'Do Hyeon';">최고 예측가</h5>
					</div>
					<div class='ibox-content'>
						<h1 class='no-margins'><%=examplehigh%></h1>
						<div class="stat-percent font-bold text-success">Highest</div>
						<small>만원</small>
					</div>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>
		<div style="text-align: center; font-family: 'Poor Story';">
			<%
				int rating = (int) request.getAttribute("rating");
				String price = (String) request.getAttribute("price");
				String ratingResult = "";
				if (rating == 3) {
					ratingResult = "당신이 알아본 가격 " + price + "만원은 너무 높습니다. 다른 요인이 있는지 확인해보세요";
				}
				if (rating == 2) {
					ratingResult = "당신이 알아본 가격 " + price + "만원은 적당합니다! ";
				}
				if (rating == 1) {
					ratingResult = "당신이 알아본 가격 " + price + "만원은 너무 낮습니다. 다른 위험요인이 있는지 확인해보세요";
				}
			%>
			<h2 style="color: black; font-weight: bold;"><%=ratingResult%></h2>
			<br>
			<br>
			<hr style="border: black 1px solid;">
			<div
				style="width: 60%; height: 400px; margin-left: auto; margin-right: auto;">
				<img src='./Resources/img/seoul_volatility2.png' width='900px'
					height='450px'><br>
				<br>
				<h5 style="font-family: 'Do Hyeon';">문재인정부 내에서 1월 가격 변동이 정상치
					내이므로 2월부터 상승 예상</h5>
				<br> <br>

			</div>
			<br> <br> <br> <br> <br>
			<hr style="border: black 1px solid;">
			<div
				style="width: 60%; height: 400px; margin-left: auto; margin-right: auto;">
				<img src='./Resources/img/seoul_volume.png' width='900px'
					height='450px'> <br> <br>
				<h5 style="font-family: 'Do Hyeon';">문재인정부 내에서 1월 거래량 변동이 정상치
					외이므로 추가요인 분석필요</h5>
				<br> <br>
			</div>
			<br> <br> <br> <br> <br>
			<hr style="border: black 1px solid;">
			<br> <br>
			<h1 style="font-family: 'Do Hyeon';">추가요인 분석 (이슈)</h1>
			<div
				style="width: 100%; height: 400px; margin-left: auto; margin-right: auto;">
				
				<img src='./Resources/img/wordcloud_p.png' width='500px'height='450px' style="border-radius: 500px;" id='al'> 
				<img src='./Resources/img/info.jpg' width='400px' height='450px' id='al'>
				<h5 style="font-family: 'Do Hyeon';">1월 거래량 하락은 공시가격 상승으로 인한 세부담 증가로 증여가 늘어난 탓으로 보임</h5>
			</div>
				
			<br>
			<br>
			<br>
			<br>
			<hr style="border: black 1px solid; width: 100%;">
			<br> <br>
		</div>
		<!-- <hr style="border: black 1px solid;">
		<img src='./Resources/img/seoul_volatility2.png' width='500px'
			height='450px' style="border-radius: 500px;">
		<hr style="border: black 1px solid;">
		<img src='./Resources/img/seoul_volume.png' width='500px'
			height='450px' style="border-radius: 500px;"> -->
	</div>
	<!-- Contact Section -->
	<section class="page-section" id="contact">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center"
					style='margin-left: auto; margin-right: auto;'>
					<h2 class="mt-0" style="font-family: 'Do Hyeon'; font-size: 55px;">..MORE..</h2>
					<hr class="divider my-4">
					<p class="text-muted mb-5">다른 곳에서 정보를 얻어보세용~~</p>
				</div>
			</div>
			<div class="row">

				<div class="col-lg-4 ml-auto text-center">
					<a href="https://land.naver.com/" class="mx-2"> <i
						class="fab fa-chrome fa-3x mb-3 text-muted"></i>
					</a>
				</div>
				<div class="col-lg-4 ml-auto text-center">
					<a href="http://www.k-apt.go.kr/" class="mx-2"> <i
						class="fab fa-pushed fa-3x mb-3 text-muted"></i>
					</a>
				</div>
				<div class="col-lg-4 ml-auto text-center">
					<a href="http://www.molit.go.kr/portal.do" class="mx-2"> <i
						class="fab fa-readme fa-3x mb-3 text-muted"></i>
					</a>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer -->
	<footer class="bg-light py-5">
		<div class="container">
			<div class="small text-center text-muted">Copyright &copy;
				애프터부동산 project 2019</div>
		</div>
	</footer>


	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1339939685677683e077b88560f7f987"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1339939685677683e077b88560f7f987&libraries=services,clusterer,drawing"></script>

	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 마커를 표시할 위치입니다 
		var position = new daum.maps.LatLng(33.450701, 126.570667);

		// 마커를 생성합니다
		var marker = new daum.maps.Marker({
			position : position
		});

		// 마커를 지도에 표시합니다.
		marker.setMap(map);

		// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
		var iwContent = '<div style="padding:5px;">' + 'Hello World!'
				+ '</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

		// 인포윈도우를 생성합니다
		var infowindow = new daum.maps.InfoWindow({
			content : iwContent
		});

		// 마커에 마우스오버 이벤트를 등록합니다
		daum.maps.event.addListener(marker, 'mouseover', function() {
			// 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
			infowindow.open(map, marker);
		});

		// 마커에 마우스아웃 이벤트를 등록합니다
		daum.maps.event.addListener(marker, 'mouseout', function() {
			// 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
			infowindow.close();
		});
	</script>

	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="./Resources/js/jquery.counterup.min.js"></script>


</body>
</html>