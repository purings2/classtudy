




<!DOCTYPE html>
<html lang="ko">
<head>





<!-- common -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="no" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<meta name="author" content="HRD" />
<meta name="robots" content="all" />
<meta name="keywords" content="HRD" />
<meta name="description" content="한국고용정보원" />
<title>HRD-net</title>
<link href="/css/jquery-ui.css" rel="stylesheet" type="text/css" />
<link href="/css/m.layout.css?version=4" rel="stylesheet" type="text/css" />
<link href="/css/m.pack.css" rel="stylesheet" type="text/css" />
<link href="/css/jquery.modal.css" rel="stylesheet" type="text/css" />
<link href="/css/jquery.modal.theme-atlant.css" rel="stylesheet" type="text/css" />
<link href="/css/jquery.modal.theme-xenon.css" rel="stylesheet" type="text/css" />
<link href="/css/fullcalendar.css" rel="stylesheet" type="text/css" />

<link rel="shortcut icon" href="/images/favicon.ico" />
<link rel="apple-touch-icon" href="/images/favicon.png" />
<link rel="apple-touch-icon-precomposed" href="/images/favicon.png" />
<script type="text/javascript">
	var gfv_contextpath = "";
</script>

<script type="text/javascript" src="/js/lib/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/js/lib/jquery-ui.js"></script>
<script type="text/javascript" src="/js/lib/jquery.easing.1.3.min.js"></script>

<script type="text/javascript" src="/js/lib/jquery.form.js" ></script>
<script type="text/javascript" src="/js/lib/validation/jquery.validate.js" ></script>
<script type="text/javascript" src="/js/lib/validation/additional-methods.js" ></script>
<script type="text/javascript" src="/js/lib/validation/messages_ko.js" ></script>
<script type="text/javascript" src="/js/lib/trimpath-template-1.0.38.js" ></script>

<script type="text/javascript" src="/js/comm/common.js" ></script>
<script type="text/javascript" src="/js/comm/dateUtils.js" ></script>
<script type="text/javascript" src="/js/comm/numberUtils.js" ></script>
<script type="text/javascript" src="/js/comm/stringUtils.js" ></script>
<script type="text/javascript" src="/js/comm/fileUtils.js" ></script>
<script type="text/javascript" src="/js/comm/validationUtils.js" ></script>

<script type="text/javascript" src="/js/custom-hrdm.js?version=1"></script>
<script type="text/javascript" src="/js/akc.js"></script>
<script type="text/javascript" src="/js/lib/slick.min.js" ></script>
<script type="text/javascript" src="/js/lib/jquery.bxslider/jquery.bxslider.min.js"></script>

<script type="text/javascript" src="/js/makePCookie.js"></script> <!-- 웹로그 분석 -->
<link href="/js/lib/jquery.bxslider/m.jquery.bxslider.css" rel="stylesheet" />

<script type="text/javascript" src="/js/lib/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/m.my.js"></script><!-- my -->
<script type="text/javascript" src="/js/video_UC.js?version=0"></script>
<script type="text/javascript" src="/js/pLayer.js"></script>
<script type="text/javascript" src="/js/jquery.modal.js"></script>
<script type="text/javascript" src="/js/jquery.modal.min.js"></script>
<script type="text/javascript" src="/js/modal.js"></script>
<script type="text/javascript" src="/js/moment.min.js"></script>
<script type="text/javascript" src="/js/fullcalendar.min.js"></script>
<script type="text/javascript" src="/js/lang-all.js"></script>
<script type="text/javascript" src="/js/mobileApp.js"></script> <!-- 모바일체크 js 신규추가 -->
<link href="/css/swiper.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/swiper.min.js"></script>



<!--
<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/ui-lightness/jquery-ui.css" />
-->
<link href="/js/lib/jquery-ui-multiselect/jquery.multiselect.css" rel="stylesheet" type="text/css" /><!-- jquery multi select -->
<script type="text/javascript" src="/js/lib/jquery-ui-multiselect/src/jquery.multiselect.js"></script><!-- jquery multi select -->
<script type="text/javascript">
 /* (function() {
	nativeAlert = window.alert;

	document.createElement('header');
	document.createElement('nav');
	document.createElement('section');
	document.createElement('article');
	document.createElement('aside');
	document.createElement('footer');
	document.createElement('hgroup');

	if (typeof Array.prototype.forEach != "function") {
		Array.prototype.forEach = function(callback) {
			for (var i = 0; i < this.length; i ++) {
				callback.apply(this, [this[i], i , this]);
			}
		}
	}
	if (typeof Array.prototype.filter != "function") {
		Array.prototype.filter = function(callback) {
			for (var i = 0; i < this.length; i ++) {
				callback.apply(this, [this[i], i , this]);
			}
		}
	}
})(); */
</script>
</head>
<body class="mtype1 main">
<div class="dim"></div>
<div id="wrap">
	


<header>
	<button class="open">메뉴</button>
	<h1>
		<a href="/hrdm/ma/mmaao/gate.do"><img src="/images/hrdm/gate/logo.png" alt="나의평생 직업훈련 파트너"></a>
	</h1>
<!-- 	<input type="text"> -->
	<button type="button" onclick="javascript:fn_integratedSearch();">통합검색</button>
</header>

<script type="text/javascript">
function fn_integratedSearch(){
	var url = "/hrdm/co/mcobo/MCOBO0100L.do";
	document.location.href=url;
}
</script>
	


<style type="text/css">
	.ntarea {
		width : 100% ;
		padding : 5px ;
		padding : 5px 15px 5px 15px ;
	}
	.ntarea .notice{
		border : 1px solid #cccccc ;
		background-color : #ffffff ;
		padding : 5px 5px 5px 0px ;
	}
	.msgfont {
		font-size : 0.8em ;
		color : #ff3366 ;
		padding-top:3px ;
		margin-left : 15px ;
	}
	.btnWid { width : 230px; }
	.atarea{
		background:#f2f2f2;
		border-top:1px solid #ddd;
		border-bottom:1px solid #ddd;
		width: 100%;
		height: 1px;
	}
	.ab_foot>button{
		border-top:1px solid #ddd;
	}
	
	 .swiper-container {
	   width:100%;
       height: 100%;
    }
    
    .tab_wrap{
    	padding-right: 0;
	    width: 100%;
        height: 100%;
	    overflow: visible;
    }
    
    .tab_menu_h2 {
       width: 100%;
       height: 100%;
       position:relative;
       z-index:1;
       color:#fff;
       font-size:1.14em;
       font-weight:600;
       overflow:hidden;
       white-space:nowrap;
       text-overflow:ellipsis;
       text-align: left;
	   margin:0;
	   padding-left:8px;
	}
    
    .tab_menu {
       position: absolute;
       display: block;
       padding-right: 1px;
       width: 100%;
       background: #fff;
       overflow: hidden;
       z-index: 200;
       border-top:0;
       border: solid 3px #06a6af;
    }
    
    .tab_menu li {
    	float: left;
    	width: 33.333%;
    	height: 38px;
    	box-sizing: border-box;
    	border-left: 1px solid #dedede;
    	border-top: 1px solid #dedede;
    }
    
    .tab_menu li a {
    	display: block;
    	padding: 0 0 0 8px;
    	height: 38px;
    	line-height: 38px;
    	background: #fff;
    	font-size: 14px;
    	color:#333;
    	text-align: left;
    	font-weight:600;
    }
    
    .swiper-slide {	
      text-align: center;

      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
    }
    
    .swiper-slide>a{
    	width:100%; 
    	height:100%;
    	color:#fff;
    	display:inline-block;
    	position:relative;
    	text-align:center;
    	font-size:1.14em;
    	font-weight:600;
    	overflow:hidden;
    	white-space:nowrap;
    	text-overflow:ellipsis
    }
    .swiper-slide>a.on{border-bottom:3px solid #fff;}
</style>
<div class="gnbbox">
	<div class="gnb sub flx col4">
		<div class="swiper-container">
		   	<ui class="swiper-wrapper">
				<li class="swiper-slide">
					
						
							<a href="/hrdm/ti/mtiao/MTIAO0100L.do" id ="menuChecked1">과정검색</a>
						
						
						
					
				</li>
				<li class="swiper-slide"><a href="/hrdm/gi/mgiao/MGIAO0100D.do" id ="menuChecked2">지원안내</a></li>
				<li class="swiper-slide"><a href="/hrdm/hg/mhgbo/MHGBO0100L.do" id ="menuChecked3">웹툰</a></li>
				<li class="swiper-slide"><a href="/hrdm/sl/mslao/MSLAO0100D.do" id ="menuChecked4">위치검색</a></li>
			</ui>
		</div>
		<!-- 메인메뉴 4개 초과시 전체메뉴 탭 사용(예시) -->
		
	</div>
</div>


<div class="menua">
	<div>
		<div class="boxa top">
			<div class="myicon">
				<span></span>
				
					<em>로그인이 필요합니다.</em>
				
				
			</div>
			<button type="button" class="lpop_close close"><span class="icon_x"></span></button>
			<div class="lbtn">
				
					
						<button type="button" id="loginBtn" class="btn2">로그인</button>
						<button type="button" id="registBtn" class="btn2">회원가입</button>
					
					
				
			</div>
		</div>

		<div class="boxa posr">
			<h2>Quick Menu</h2>
			<div class="gate_btn"></div>
			<div class="sj_am"></div>
			<ul class="flx flxw col3 rilist">
				<li class="m1">
					<a href="/hrdm/ti/mtiao/MTIAO0100L.do">
						<span></span>
						<p>구직자<br/>훈련과정</p>
					</a>
				</li>
				<li class="m2">
					<a href="/hrdm/ti/mtiao/MTIAO0200L.do">
						<span></span>
						<p>근로자<br/>훈련과정</p>
					</a>
				</li>
				<li class="m3">
					
						<a href="/hrdm/mb/mmbao/MMBAO0100T.do">
					
					
					
					
						<span></span>
						<p>MY<br/>서비스</p>
					</a>
				</li>
			</ul>
			<ul class="flx flxw col3 rilist">
				<li class="s4">
					<a href="/hrdm/hg/mhgbo/MHGBO0100L.do">
						<span></span>
						<p>활용기<br/>웹툰</p>
					</a>
				</li>
				<li class="s5">
					<a href="/hrdm/ct/mctao/MCTAO0100L.do">
						<span></span>
						<p>자주묻는<br/>질문</p>
					</a>
				</li>
				<li class="s5">
					<a href="/hrdm/ct/mctco/MCTCO0100L.do">
						<span></span>
						<p>질문과<br/>답변</p>
					</a>
				</li>
			</ul>
			<ul class="flx flxw col3 rilist">
				<li class="s3">
					<a href="/hrdm/ct/mctdo/MCTDO0100L.do">
						<span></span>
						<p>공지사항</p>
					</a>
				</li>
				<li class="s1">
					<a href="/hrdm/ct/mctfo/MCTFO0100L.do">
						<span></span>
						<p>이벤트</p>
					</a>
				</li>
				<!-- fcm Service시 사용 -->
				<!-- <li class="s6" id="fcmst">
					<a href="javascript:void(0);" onclick="fn_rcYn('1'); return false;">
						<span></span>
						<p>알림설정1안</p>
					</a>
				</li>
				<li class="s6" id="fcmst">
					<a href="javascript:void(0);" onclick="fn_rcYn('2'); return false;">
						<span></span>
						<p>알림설정2안</p>
					</a>
				</li>
				<li class="s6" id="fcmst">
					<a href="javascript:void(0);" onclick="fn_rcYn('3'); return false;">
						<span></span>
						<p>알림설정3안</p>
					</a>
				</li> -->
			</ul>
		</div>

		<div class="boxa pbn">
			<ul class="ul_menu">
				
				
				
			</ul>
		</div>
		<div class="flx col2 p01 mb">
			<button type="button" id="termsOfUseBtn" class="btn1 mr">이용약관</button>
			<button type="button" id="gateBtn" class="btn1">Gate Page</button>
		</div>

		<div class="ntarea mb" style="display:none;">
			<div class="notice">
				<p class="msgfont">※ HRD 안드로이드 권장 OS 버전은 4.4 이상입니다.</p>
				<p class="msgfont" style="padding:15px 0px 10px 0px;">
					<button type="button" class="btn3 btnWid" id="btnAndroid">안드로이드 4.4 미만 바로가기</button>
				</p>
			</div>
		</div>
	</div>
</div><!-- //menua -->

<!-- fcm Service시 사용 -->
<!-- <form id="deviceForm" name="deviceForm" method="post">
	<input type="hidden" id="uuid"           name="uuid"           value="" />
	<input type="hidden" id="moblOsSecd"     name="moblOsSecd"     value="" />
	<input type="hidden" id="moblOsVerm"     name="moblOsVerm"     value="" />
</form> -->
<script type="text/javascript">
var oper = "";
var operVer = "";
var appVerCode = "";
var userAgent = navigator.userAgent;
$(document).ready(function(){
	fnSetSwiper(4,1) ; 
	var pathname = document.location.pathname;
	var mainDiv = "main1";
	if(pathname.indexOf("/hrdm/ti/") != -1){
		$("#menuChecked1").addClass('on');
	}else{
		$("#menuChecked1").removeClass('on');
	}
	if(pathname.indexOf("/hrdm/gi/") != -1){
		$("#menuChecked2").addClass('on');
	}
	else{
		$("#menuChecked2").removeClass('on');
	}
	if(pathname.indexOf("/hrdm/hg/") != -1){
		$("#menuChecked3").addClass('on');
	}else{
		$("#menuChecked3").removeClass('on');
	}
	if(pathname.indexOf("/hrdm/sl/") != -1 ){
		$("#menuChecked4").addClass('on');
	}
	else{
		$("#menuChecked4").removeClass('on');
	}
	
	// 전체메뉴 on/off시 사용
	/* $("#main_all_menu").click(function(){
		if($(this).hasClass("on")){
			$("#main_all_menu").removeClass('on');
			$(".gnb").css("overflow-x", "auto").css("overflow-y", "hidden");
			$(".swiper-container").show();
			$(".tab_wrap").hide();
		}else{
			$("#main_all_menu").addClass('on');
			$(".gnb").css("overflow-x", "visible").css("overflow-y", "visible");
			$(".swiper-container").hide();
			$(".tab_wrap").show();
		}
		
		if(mainDiv == "main1") {
			$(".tab_menu").css("border", "solid 3px #23a4dc");	
		}else if(mainDiv == "main2"){
			$(".tab_menu").css("border", "solid 3px #75a72d");	
		}
	}); */

	$("#loginBtn").click(function() {
		location.href = "/hrdm/mb/mmbao/MMBAO0100T.do";
	});
	$("#registBtn").click(function() {
		location.href = "/hrdm/mb/mmbbo/MMBBO0101D.do";
	});
	$("#logoutBtn").click(function() {
		// 모바일앱 비콘 서비스 실행 중인 경우, 로그아웃시 비콘 서비스 종료
		if (userAgent.indexOf('HRD-NET-APP/2.2') > -1 && (oper == "Android" || oper == "iOS") && appVerCode >= 21010) {
			beacon.getServiceStatus(function(data) {
				if (data == "true") {
					beacon.setServiceStatus("stop");
				}
			});
		}
		location.href = "/hrdm/mb/mmbao/logout.do";
	});
	$("#indiMySvcBtn").click(function() {
		location.href = "/hrdm/ps/mpsao/MPSAO0100D.do";
	});
	$("#trainMySvcBtn").click(function() {
		location.href = "/hrdm/ts/mtsao/MTSAO0100D.do";
	});
	$("#insttMySvcBtn").click(function() {
		location.href = "/hrdm/cs/mcsao/MCSAO0100D.do";
	});
	$("#gateBtn").click(function() {
		location.href = "/hrdm/ma/mmaao/gate.do";
	});
	$("#termsOfUseBtn").click(function() {
		location.href = "/hrdm/co/mcodo/MCODO0100T.do";
	});
	
	document.addEventListener("deviceready", onDeviceReady, false);
	function onDeviceReady() {
		if(typeof(device) != 'undefined' && typeof(device.platform) != 'undefined' ) {
			oper = device.platform;
			operVer = device.version;
			appVerCode = device.appVersionCode;
			if(oper == 'Android' && userAgent.indexOf('HRD-NET-APP/2.2') > -1 && parseFloat(device.version) < 4.4) {
				$('.ntarea').show();
			}
			if(oper == 'iOS') {
				$('#termsOfUseBtn').parent().css("margin-bottom", "40px");
			}
			
			/* fmc Service시 사용 */
			/* if (device.uuid) {
				$("#uuid").val(device.uuid);
				$("#moblOsSecd").val(device.platform);
				$("#moblOsVerm").val(device.version);
				$("#fcmst").show();
			} else {
				$("#fcmst").hide();
			} */
			
		}
	}

	$("#btnAndroid").click(function() {
		var open_url = "https://m.hrd.go.kr/hrdm/ma/mmaao/gate.do" ;
		if (typeof( device ) != 'undefined' && typeof( device.platform ) != 'undefined') { 
			if (oper == 'Android') { 
				if (parseFloat(device.version) < 4.4) {
					navigator.app.loadUrl(open_url, {openExternal: true});
				} else {
					$.modal.infoBox("안드로이드 버전이 4.4 이상입니다.");
				}
			}
		}
	});
});
function fn_goUrl(endPath){
	switch(endPath){
		case "MPSFO0100T.do" : location.href="/hrdm/ps/mpsfo/MPSFO0100T.do";break;
		case "MPSFO0200T.do" : location.href="/hrdm/ps/mpsfo/MPSFO0200T.do";break;
		case "MPSCO0100L.do" : location.href="/hrdm/ps/mpsco/MPSCO0100L.do";break;
		case "MPSDO0100D.do" : location.href="/hrdm/ps/mpsdo/MPSDO0100D.do";break;
		case "MCSJO0100T.do" : location.href="/hrdm/cs/mcsjo/MCSJO0100T.do";break;
		case "MCSJO0200T.do" : location.href="/hrdm/cs/mcsjo/MCSJO0200T.do";break;
		case "MCSFO0100L.do" : location.href="/hrdm/cs/mcsfo/MCSFO0100L.do";break;
		case "MCSCO0100D.do" : location.href="/hrdm/cs/mcsco/MCSCO0100D.do";break;
		case "MCSIO0100L.do" : location.href="/hrdm/cs/mcsio/MCSIO0100L.do";break;
		case "MCSGO0100L.do" : location.href="/hrdm/cs/mcsgo/MCSGO0100L.do";break;
		case "MCSGO0200L.do" : location.href="/hrdm/cs/mcsgo/MCSGO0200L.do";break;
		case "MCSDO0100T.do" : location.href="/hrdm/cs/mcsdo/MCSDO0100T.do";break;
		case "MCSEO0100L.do" : location.href="/hrdm/cs/mcseo/MCSEO0100L.do";break;
		case "MTSEO0100L.do" : location.href="/hrdm/ts/mtseo/MTSEO0100L.do";break;
		case "MTSCO0100L.do" : location.href="/hrdm/ts/mtsco/MTSCO0100L.do";break;
		case "MTSDO0100L.do" : location.href="/hrdm/ts/mtsdo/MTSDO0100L.do";break;
		case "MPAJO0101L.do" : location.href="/hrdm/pa/mpajo/MPAJO0101L.do";break;
		case "MPSGO0200T.do"  : location.href="/hrdm/ps/mpsgo/MPSGO0200T.do";break; /* 일학습병행제(개인)   */ 
		case "MBCAO0101L.do" :
			if(oper == "Android" && operVer < 4.4){
				$.modal.infoBox("Android 4.4 이상 버전에서만 사용 가능합니다.");break;
			}else if(oper == "iOS" && operVer < 8){
				$.modal.infoBox("iOS 8 이상 버전에서만 사용 가능합니다.");break;
			}else{
				location.href="/hrdm/bc/mbcao/MBCAO0101L.do";break;
			}
		case "MQRATO0100L.do" :
			if(oper == "Android" && operVer < 4.4){
				$.modal.infoBox("Android 4.4 이상 버전에서만 사용 가능합니다.");break;
			}else if(oper == "iOS" && operVer < 8){
				$.modal.infoBox("iOS 8 이상 버전에서만 사용 가능합니다.");break;
			}else{
				location.href="/hrdm/qr/at/MQRATO0100L.do";break;
			}
		case "MSTAO0100L.do" :
			if(oper == "Android" && operVer < 4.4){
				$.modal.infoBox("Android 4.4 이상 버전에서만 사용 가능합니다.");break;
			}else if(oper == "iOS" && operVer < 8){
				$.modal.infoBox("iOS 8 이상 버전에서만 사용 가능합니다.");break;
			}else{
				gfn_showLoading();
				location.href="/hrdm/st/mstao/MSTAO0100L.do";break;
			}
		default : location.href="/hrdm/ps/mpseo/MPSEO0100L.do";break;
	}
}

// fcm Service시 사용
/* function fn_rcYn(type) {
	if (!$("#uuid").val()) {
		alert("uuid값이 존재하지 않습니다.");
		return false;
	}
	
	if (type == '1') {
		$("#deviceForm").prop("action","/hrdm/fcm/fcmst/FCMST0100S.do");	
	} else if(type == '2') {
		$("#deviceForm").prop("action","/hrdm/fcm/fcmst/FCMST0101S.do");
	} else {
		$("#deviceForm").prop("action","/hrdm/fcm/fcmst/FCMST0102S.do");
	}
	
	$("#deviceForm").prop("method","post");
	$("#deviceForm").prop("target", "_self");
	$("#deviceForm").submit();
} */

var swiper = null ;
function fnSetSwiper( pv, pg ) {
	swiper = new Swiper('.swiper-container', {
  		slidesPerView: pv,
		spaceBetween: 0,
		slidesPerGroup: pg,
		loop: false,
	 	loopFillGroupWithBlank: true
	});
}
</script>

	<div class="info_navi">
		<span></span>
		<span>Home</span>
		<span>로그인</span>
	</div>
	






<style type="text/css">
.deccomment {
		background:#e8f1f9;
		border : 0px ;  
		border-radius : 8px ; 
		padding : 7px 18px 3px 16px ;  
		line-height : 24px ;
		font-size : .9em ; 
}

.btnsmall {    
	position: relative;
    display: inline-block;
    background: #ffffff;
    border: 1px solid #dcdcdc;
    border-right-color: #ababab;
    border-bottom-color: #ababab;
    border-radius: 5px;
    color: #444;
    text-align: center;
    width: initial;
    font-size: 0.9em;
    font-weight: normal;
    padding: 0px 5px;
    margin: 0px;
    height: 25px;
    line-height: 21px;
}
.vnInfo {
    background: #e8f1f9;
    border: 0px;
    border-radius: 8px;
    padding: 7px 18px 7px 18px;
    line-height: 24px;
    font-size: .9em;
    margin-bottom:10px;
}

.vnInfo td {
	margin-bottom:1em;
	height:35px;
	line-height: 15px;
}

.boxiTag {
	font-weight: 600;
   	font-size: 14px;
   	padding-right:10px;
}

.fwn {font-size:13px;}
</style>

<div id="content">
	<div class="job_seeker">
		<div class="vnInfo">
			<table>
				<caption>직업훈련정보 검색</caption>
				<colgroup>
					<col style="width:25%;">
					<col style="width:*%;">
				</colgroup>
				<thead>
					<tr><th scope="row"></th></tr>
				</thead>
				<tbody>
					<tr>
						<td scope="row" class="boxiTag"><label for="vnInfoSearch">직업훈련정보</label></td>
						<td>
							<select id="vnInfoSearch" name="vnInfoSearch" title="직업훈련정보 선택" onchange="fn_vnInfoSelect(this.value);">
								<option id="MTIAO0100L" value="MTIAO0100L">구직자훈련과정</option>
								<option id="MTIAO0200L" value="MTIAO0200L">근로자훈련과정</option>
								<option id="MTICO0100L" value="MTICO0100L">기업훈련과정</option>
								<option id="MTIDO0100L" value="MTIDO0100L">일학습병행과정</option>
								<option id="MTIMO0100L" value="MTIMO0100L">원격(인터넷,우편) 훈련과정</option>
								<option id="MTILO0100L" value="MTILO0100L">중장년 특화과정</option>
							</select>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	
		<div class="box_sj">
			<h2 class="fll"><strong class="mcolor">구직자</strong> 훈련과정</h2>
		</div><!-- //box_sj -->

<form name="searchForm1" id="searchForm1" method="post">
	<input type="hidden" name="pageIndex" id="pageIndex" value="1" />
	<input type="hidden" name="pageSize" id="pageSize" value="5" />
	<input type="hidden" name="orderKey" id="orderKey" value="2" />
	<input type="hidden" name="orderBy" id="orderBy" value="ASC" />
	<input type="hidden" name="rootGbn" id="rootGbn" value="" />
	<input type="hidden" name="tracseId" id="tracseId" value="" />
	<input type="hidden" name="tracseTme" id="tracseTme" value="" />
	<input type="hidden" name="trainstCstmrId" id="trainstCstmrId" value="" />
	<input type="hidden" name="zip" id="zip" value="" />
	<input type="hidden" name="bassAdres" id="bassAdres" value="" />
	<input type="hidden" name="detailAdres" id="detailAdres" value="" />
	<input type="hidden" name="cprNm" id="cprNm" value="" />
	<input type="hidden" name="mberId" id="mberId" value="" />
	<input type="hidden" name="mberSe" id="mberSe" value="" />
	<input type="hidden" name="tracseNm" id="tracseNm" value="" />
	<input type="hidden" name="trainstCstmrNm" id="trainstCstmrNm" value="" />
	<input type="hidden" name="kecoCd" id="kecoCd" value="" />
	<input type="hidden" name="pLayerId" id="pLayerId" value=""  />
	<input type="hidden" id="vnInfoVal" name="vnInfoVal" value="" />
	
		<div class="boxsc" style="display: block;">
			<div class="boxi">
				<!-- <div class="flx col2">
					<input type="text" placeholder="관심직무를 입력해주세요" class="brsn rq" title="title"><button class="btn2 lns">NCS 직무</button>
				</div> -->

				<div class="mb">
					<div>
						<label for="searchContition1"><input type="radio" name="searchCondition" id="searchContition1" value="1" checked="checked" /> 훈련과정명 </label>
						<label for="searchContition2"><input type="radio" name="searchCondition" id="searchContition2" value="2"  /> 훈련기관명</label>
					</div>
					<div>
						<input type="text" name="searchKeyword" id="searchKeyword" title="훈련기관/과정명" value="" placeholder="훈련과정명을 입력하세요.">
					</div>
				</div>

				<!-- --------------------------------------------------------------------------------------------------------------------------- -->
				<!-- ------------------------------------------17.9.26 훈련유형 검색조건 추가[시작]-------------------------------------- -->
				<!-- --------------------------------------------------------------------------------------------------------------------------- -->
				<div class="mb">
					<div class="mb">
						<label for="crseTracseSe"><strong>훈련유형<span class="colr_point7 fwn">(훈련유형을 선택하세요)</span></strong></label>
					</div>
					<div>
						<select id="crseTracseSe" name="crseTracseSe" title="훈련유형">
							<option  value="A" checked="checked" > 전체 </option>
	                        <option  value="C0055"  /> 국민내일배움카드(구직자) </option>
	                        <option  value="Nlg"  /> 국가기간전략산업직종</option>
							<option  value="C0068"  /> 컨소시엄 채용예정자</option>
							<option  value="Kope"  /> 폴리텍대학훈련</option>
							<option  value="C0059"  /> 청년취업아카데미 </option>
							<option  value="C0074"  /> 장애인직업능력지원훈련</option>
							<option  value="C0075"  /> 건설일용근로자기능향상</option>
							<option  value="C0077"  /> 지역맞춤형일자리창출</option>
							<option  value="C0053"  /> 지역구직자 </option>
						</select>
					</div>
				</div>
				<!-- --------------------------------------------------------------------------------------------------------------------------- -->
				<!-- ---------------------------------------------17.9.26 훈련유형 검색조건 추가[끝]-------------------------------------- -->
				<!-- --------------------------------------------------------------------------------------------------------------------------- -->
				
				<div class="mb">
					<div class="mb">
						<label for="traingMthCd"><strong>훈련구분<span class="colr_point7 fwn">(훈련구분을 선택하세요)</span></strong></label>
					</div>
					<div>
						<select id="traingMthCd" name="traingMthCd" title="구직자훈련구분">
							<option id="traingMthCd1" value="" selected="selected" > 전체</option>
							<option id="traingMthCd2" value="M1001"  > 일반과정</option>
							<option id="traingMthCd3" value="M1005"  > 인터넷과정</option>
							<option id="traingMthCd4" value="M1010"  > 혼합과정(BL)</option>
							<option id="rmteAstnTrngOgznYn" value="Y"  > 스마트혼합훈련</option>
						</select>
					</div>
				</div>
				
				<div class="mb">
					<div class="mb">
						<label for="upperAreaCd"><strong>지역 <span class="colr_point7 fwn">(지역을 선택하세요)</span></strong></label>
					</div>
					<div class="flx col2">
						<div class="mr">
							<select id="upperAreaCd" name="upperAreaCd" title="전체" onchange="javascript:fn_changeArea();">
								<option value="">전체</option>
								
									<option value="11" >서울</option>
								
									<option value="26" >부산</option>
								
									<option value="27" >대구</option>
								
									<option value="28" >인천</option>
								
									<option value="29" >광주</option>
								
									<option value="30" >대전</option>
								
									<option value="31" >울산</option>
								
									<option value="36" >세종</option>
								
									<option value="41" >경기</option>
								
									<option value="42" >강원</option>
								
									<option value="43" >충북</option>
								
									<option value="44" >충남</option>
								
									<option value="45" >전북</option>
								
									<option value="46" >전남</option>
								
									<option value="47" >경북</option>
								
									<option value="48" >경남</option>
								
									<option value="50" >제주</option>
								
							</select>
						</div>
						<div>
							<select id="areaCd" name="areaCd" title="전체">
								<option value="">전체</option>
							</select>
						</div>
					</div>
				</div>

				<div class="mb1">
					<div class="mb">
						<label for="s1"><strong>기간 <span class="colr_point7 fwn">(훈련시작일을 기준으로 선택하세요)</span></strong></label>
					</div>
					<div class="flx mb">
						<div class="mr w37p">
							
							<input type="date" name="startDate" id="startDate" title="시작일자" value="2020-11-12" format="YYYY-MM-DD" class="dateinput"/>
						</div>
						<div class="mr w37p">
							
							<input type="date" name="endDate" id="endDate" title="종료일자" value="2021-02-12" format="YYYY-MM-DD" class="dateinput" />
						</div>
						<div class="w26p">
							<select name="searchPeriod" id="searchPeriod" title="검색기간선택" onchange="fn_changePeriod();">
								<option value="week" >1주일</option>
								<option value="month" >1개월</option>
								<option value="month3" selected="selected">3개월</option>
							</select>
						</div>
					</div>
				</div>

				<div class="tac">
					<button type="button" class="btn5 w50p" onclick="fn_search('1')";><span class="icon_search">icon_search</span> <em>검색하기</em></button>
				</div>
			</div>
		</div><!-- boxsc -->
		
		<div class="btn_boxsc">
			<button type="button" class="on"><!-- 검색<span>닫기</span> --> </button>
		</div>
		

		<div class="boxt">
			<div class="total fll">
				전체 <span>6,682</span> 건
			</div>
			<!-- <div class="flr">
				<a href="javascript:void(0);" class="btn_sj sort btn_lpop"><span class="icon_sort"></span> 정렬</a>
				<a href="javascript:void(0);" class="btn_sj">과정검색 <span class="icon_arrowd2"></span></a>
			</div> -->
		</div>
		
		<div class="box pt0">
			<strong>
			
			
				
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000259620','2','500020038517','C0061'); return false;">
											<strong>제과제빵기능사 자격증 취득과정...</strong>
										</a>
									
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000259620','2','500020038517','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20190000259620','2','500020038517','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('871100'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('871100'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=KwlUaV3kpuSzXp2gwmS1Aw&athfilSeqNo=1" alt="로고.jpg" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
									
										<span class="icon_c3">3년 인증</span>
									
									
									
								</div>
								<div>
									<p>
										
										<strong>남경성요리제빵커피직업전문학교</strong><br />(강원 원주시 033-765-7677)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2021-01-22
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											 
												67.6 %
												<font size='0.7'>(46.6)</font>
											
											
										
									</p>
									<p>훈련비 : 
										
											 
												1,459,400 원
											 
											
											 
										
										 
										
											
												
												
													
														<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20190000259620', '2', '46.6', '67.6', '1359400', '1459400', '2020', '3', '','C0061','C0055','21020101','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
													
													
													
												
											
										
									</p>
									<p>모집인원 :  
										
											18 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000285616','1','500020041190','C0061'); return false;">
											<strong>TIG파이프 현장 실무용접사 ...</strong>
										</a>
									
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000285616','1','500020041190','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20200000285616','1','500020041190','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('824100'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('824100'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=PQJEnButnUKzXp2gwmS1Aw&athfilSeqNo=5" alt="사본 -빈 문서 1001.jpg" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
									
										<span class="icon_c3">3년 인증</span>
									
									
									
								</div>
								<div>
									<p>
										
										<strong>영진직업전문학교</strong><br />(경남 김해시 055-333-9417)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2021-03-19
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											
											해당없음
										
									</p>
									<p>훈련비 : 
										
											 
												5,002,500 원
											 
											
											 
										
										 
										
											
												  <!-- 국기, 일반고특화과정, 4차산업, 과정평가형 전액정부지원 -->
													<br />(전액 정부지원)
												
												
											
										
									</p>
									<p>모집인원 :  
										
											20 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000242953','1','500020027749','C0061'); return false;">
											<strong>(과정평가형)귀금속가공기능사 ...</strong>
										</a>
									
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000242953','1','500020027749','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20190000242953','1','500020027749','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('884200'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('884200'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=c71CNOb1THyzXp2gwmS1Aw&athfilSeqNo=7" alt="Untitled-1.jpg" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
									
										<span class="icon_c3">3년 인증</span>
									
									
									
								</div>
								<div>
									<p>
										
										<strong>(재)로이교육재단 경문실용전문학교</strong><br />(인천 부평구 032-512-0808)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2021-03-22
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											
											해당없음
										
									</p>
									<p>훈련비 : 
										
											 
												5,742,100 원
											 
											
											 
										
										 
										
											
												  <!-- 국기, 일반고특화과정, 4차산업, 과정평가형 전액정부지원 -->
													<br />(전액 정부지원)
												
												
											
										
									</p>
									<p>모집인원 :  
										
											30 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000284253','2','500020016875','C0061'); return false;">
											<strong>영상제작(영상편집, 모션그래픽...</strong>
										</a>
									
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000284253','2','500020016875','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20200000284253','2','500020016875','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('416600'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('416600'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=nnnw9B2pmd82zXp2gwmS1Aw&athfilSeqNo=6" alt="HRD용-로고.png" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
									
										<span class="icon_c3">3년 인증</span>
									
									
									
								</div>
								<div>
									<p>
										
										<strong>(재)한국아이티교육재단 한국IT아카데미 구로</strong><br />(서울 구로구 02-597-5156)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2021-04-05
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											
											해당없음
										
									</p>
									<p>훈련비 : 
										
											 
												4,407,480 원
											 
											
											 
										
										 
										
											
												  <!-- 국기, 일반고특화과정, 4차산업, 과정평가형 전액정부지원 -->
													<br />(전액 정부지원)
												
												
											
										
									</p>
									<p>모집인원 :  
										
											20 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000247383','1','500020042162','C0061'); return false;">
											<strong>시각디자인 실무자 양성과정</strong>
										</a>
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000247383','1','500020042162','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20190000247383','1','500020042162','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('415400'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('415400'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=0jWu2qcOPYazXp2gwmS1Aw&athfilSeqNo=3" alt="logo.jpg" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
									
										<span class="icon_c3">3년 인증</span>
									
									
									
								</div>
								<div>
									<p>
										
										<strong>아이씨에이일산컴퓨터학원</strong><br />(경기 고양시 일산동구 031-905-6712)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2021-03-19
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											
											해당없음
										
									</p>
									<p>훈련비 : 
										
											 
												3,090,450 원
											 
											
											 
										
										 
										
											
												  <!-- 국기, 일반고특화과정, 4차산업, 과정평가형 전액정부지원 -->
													<br />(전액 정부지원)
												
												
											
										
									</p>
									<p>모집인원 :  
										
											30 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000261215','2','500020017427','C0061'); return false;">
											<strong>출판편집디자인(일러스트,포토샵...</strong>
										</a>
									
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000261215','2','500020017427','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20190000261215','2','500020017427','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('411300'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('411300'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=RKz4vX5xLQKzXp2gwmS1Aw&athfilSeqNo=4" alt="200918_thumbnail_강남_HRD훈련기관로고_152-90_3.jpg" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
									
									
										<span class="icon_c6">3년 인증 우수</span>
									
									
								</div>
								<div>
									<p>
										
										<strong>이젠아카데미평생교육원</strong><br />(서울 서초구 02-532-6500)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2021-03-22
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											
											해당없음
										
									</p>
									<p>훈련비 : 
										
											 
												4,401,600 원
											 
											
											 
										
										 
										
											
												  <!-- 국기, 일반고특화과정, 4차산업, 과정평가형 전액정부지원 -->
													<br />(전액 정부지원)
												
												
											
										
									</p>
									<p>모집인원 :  
										
											20 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000251984','5','500020056924','C0061'); return false;">
											<strong>요양보호사1급 자격 취득과정</strong>
										</a>
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000251984','5','500020056924','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20190000251984','5','500020056924','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('550100'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('550100'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=s16doMJktQM&athfilSeqNo=" alt="" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
									
										<span class="icon_c3">3년 인증</span>
									
									
									
								</div>
								<div>
									<p>
										
										<strong>서해간호학원부설서해요양보호사교육원</strong><br />(충남 서천군 041-953-0229)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2020-12-23
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											 
												74.4 %
												<font size='0.7'>(52)</font>
											
											
										
									</p>
									<p>훈련비 : 
										
											 
												650,000 원
											 
											
											 
										
										 
										
											
												
												
													
														<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20190000251984', '5', '52', '74.4', '600000', '650000', '2020', '3', '','C0061','C0055','06010108','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
													
													
													
												
											
										
									</p>
									<p>모집인원 :  
										
											40 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000279829','1','500020016643','C0061'); return false;">
											<strong>요양보호사 자격 취득과정</strong>
										</a>
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000279829','1','500020016643','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20200000279829','1','500020016643','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('550100'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('550100'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=QAgzFyZJZUOzXp2gwmS1Aw&athfilSeqNo=2" alt="요양보호사 로고.jpeg" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
									
										<span class="icon_c3">3년 인증</span>
									
									
									
								</div>
								<div>
									<p>
										
										<strong>한양요양보호사교육원</strong><br />(충남 천안시 동남구 041-556-5666)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2020-12-28
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											 
												47 %
												<font size='0.7'>(52)</font>
											
											
										
									</p>
									<p>훈련비 : 
										
											 
												500,400 원
											 
											
											 
										
										 
										
											
												
												
													
														<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20200000279829', '1', '52', '47', '500400', '500400', '2020', '3', '','C0061','C0055','06010108','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
													
													
													
												
											
										
									</p>
									<p>모집인원 :  
										
											40 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000274958','7','500020023829','C0061'); return false;">
											<strong>ITQ자격증취득과정(한글, 엑...</strong>
										</a>
									
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000274958','7','500020023829','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20200000274958','7','500020023829','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('029500'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('029500'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=ArtyLRHyzS2zXp2gwmS1Aw&athfilSeqNo=4" alt="HRD메인로고.jpg" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
									
										<span class="icon_c3">3년 인증</span>
									
									
									
								</div>
								<div>
									<p>
										
										<strong>다산직업전문학교</strong><br />(인천 미추홀구 032-439-1127)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2021-01-08
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											 
												46.5 %
												<font size='0.7'>(47.8)</font>
											
											
										
									</p>
									<p>훈련비 : 
										
											 
												599,500 원
											 
											
											 
										
										 
										
											
												
												
													
														<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20200000274958', '7', '47.8', '46.5', '599500', '599500', '2020', '3', '','C0061','C0055','02020302','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
													
													
													
												
											
										
									</p>
									<p>모집인원 :  
										
											10 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000274878','2','500037134285','C0061'); return false;">
											<strong>항공예약발권 자격증(CRS,D...</strong>
										</a>
									
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000274878','2','500037134285','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20200000274878','2','500037134285','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('521200'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('521200'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=doF4ApQ65t9BzXp2gwmS1Aw&athfilSeqNo=2" alt="152-90.png" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
										<span class="icon_c1">1년 인증</span>
									
									
									
									
								</div>
								<div>
									<p>
										
										<strong>대구항공여행평생교육원</strong><br />(대구 달서구 053-651-2626)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2020-12-09
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											
											해당없음
										
									</p>
									<p>훈련비 : 
										
											 
												780,120 원
											 
											
											 
										
										 
										
											
												
												
													
														<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20200000274878', '2', '51.4', '0', '780120', '780120', '2020', '3', '','C0061','C0055','12030102','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
													
													
													
												
											
										
									</p>
									<p>모집인원 :  
										
											20 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000274627','2','500020027020','C0061'); return false;">
											<strong>컴퓨터사무실무활용(워드,파포,...</strong>
										</a>
									
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000274627','2','500020027020','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20200000274627','2','500020027020','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('029500'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('029500'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=H9A1wUfSNDZmzXp2gwmS1Aw&athfilSeqNo=1" alt="메가로고.jpg" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
									
										<span class="icon_c3">3년 인증</span>
									
									
									
								</div>
								<div>
									<p>
										
										<strong>메가컴퓨터학원</strong><br />(대구 수성구 053-794-9044)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2021-01-11
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											 
												47.8 %
												<font size='0.7'>(47.8)</font>
											
											
										
									</p>
									<p>훈련비 : 
										
											 
												899,250 원
											 
											
											 
										
										 
										
											
												
												
													
														<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20200000274627', '2', '47.8', '47.8', '899250', '899250', '2020', '3', '','C0061','C0055','02020302','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
													
													
													
												
											
										
									</p>
									<p>모집인원 :  
										
											10 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000272370','1','500020060948','C0061'); return false;">
											<strong>컴퓨터그래픽스(포토샵,일러스트...</strong>
										</a>
									
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000272370','1','500020060948','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20200000272370','1','500020060948','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('415400'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('415400'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=d9CCBbIvoRe6zXp2gwmS1Aw&athfilSeqNo=15" alt="HRD 타이틀_PNG-01.png" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
									
									
										<span class="icon_c6">3년 인증 우수</span>
									
									
								</div>
								<div>
									<p>
										
										<strong>이젠컴퓨터학원</strong><br />(경기 구리시 031-555-4449)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2020-12-17
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											
											해당없음
										
									</p>
									<p>훈련비 : 
										
											 
												628,800 원
											 
											
											 
										
										 
										
											
												
												
													
														<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20200000272370', '1', '47.8', '0', '628800', '628800', '2020', '3', '','C0061','C0055','22010102','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
													
													
													
												
											
										
									</p>
									<p>모집인원 :  
										
											20 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000257662','3','500020014953','C0061'); return false;">
											<strong>온라인광고(포토샵, 일러스트,...</strong>
										</a>
									
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000257662','3','500020014953','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20190000257662','3','500020014953','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('024100'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('024100'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=kDpx9A9APvAIWzXp2gwmS1Aw&athfilSeqNo=3" alt="KakaoTalk_20190410_112905699.jpg" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
									
									
										<span class="icon_c6">3년 인증 우수</span>
									
									
								</div>
								<div>
									<p>
										
										<strong>덕천미래컴퓨터학원</strong><br />(부산 북구 051-341-1600)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2020-12-23
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											
											해당없음
										
									</p>
									<p>훈련비 : 
										
											 
												849,600 원
											 
											
											 
										
										 
										
											
												
												
													
														<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20190000257662', '3', '41.8', '0', '849600', '849600', '2020', '3', '','C0061','C0055','02010201','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
													
													
													
												
											
										
									</p>
									<p>모집인원 :  
										
											14 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000254987','5','500034282922','C0061'); return false;">
											<strong>한식양식조리기능사자격증취득과정...</strong>
										</a>
									
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000254987','5','500034282922','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20190000254987','5','500034282922','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('531200'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('531200'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=2HW9A9B9BEPDyezXp2gwmS1Aw&athfilSeqNo=1" alt="캡처.JPG" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
									
										<span class="icon_c3">3년 인증</span>
									
									
									
								</div>
								<div>
									<p>
										
										<strong>부천직업능력개발평생교육원</strong><br />(경기 부천시 032-219-4300)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2021-01-07
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											 
												50 %
												<font size='0.7'>(48.8)</font>
											
											
										
									</p>
									<p>훈련비 : 
										
											 
												1,458,240 원
											 
											
											 
										
										 
										
											
												
												
													
														<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20190000254987', '5', '48.8', '50', '1458240', '1458240', '2020', '3', '','C0061','C0055','13010101','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
													
													
													
												
											
										
									</p>
									<p>모집인원 :  
										
											12 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000254231','9','500020016714','C0061'); return false;">
											<strong>시각영상편집디자인(일러스트,포...</strong>
										</a>
									
									
								
								
								 
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20190000254231','9','500020016714','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20190000254231','9','500020016714','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('415400'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('415400'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=Ah9BX6hGypIKzXp2gwmS1Aw&athfilSeqNo=1" alt="사본%20-부산로고_지점연락처%20copy.jpg" onerror="this.src='/images/img_noimage.gif'" width="98" height="58"/>
										
									
									
									<!-- <span class="icon_c3">1년 인증</span> -->
										
									
									
									
										<span class="icon_c6">3년 인증 우수</span>
									
									
								</div>
								<div>
									<p>
										
										<strong>그린컴퓨터아카데미 부산</strong><br />(부산 부산진구 051-912-1000)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2021-01-26
									</p>
									<p>훈련기관 직종별 취업률<font size='0.7'>(전국)</font> : 
										
											 
												54.5 %
												<font size='0.7'>(47.5)</font>
											
											
										
									</p>
									<p>훈련비 : 
										
											 
												1,067,610 원
											 
											
											 
										
										 
										
											
												
												
													
														<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20190000254231', '9', '47.5', '54.5', '1067610', '1067610', '2020', '3', '','C0061','C0055','08020101','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
													
													
													
												
											
										
									</p>
									<p>모집인원 :  
										
											20 명
										
									</p>
								</div>
							</li>
						</ul>
					
				
			
			
			</strong>
		</div><!-- //box -->

	<!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
	<!-- -------------------------------------------------------------17.12.29 [정찬범]훈련결과 통합(시작)------------------------------------------------------------- -->
	<!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->

		<div class="hr1 mbt1"></div>
	    <div class="deccomment">
			※ 2020.1월 국민내일배움카드 시행으로 주 훈련대상이 근로자인 과정도 구직자가 수강 할 수 있습니다.(단, 근로자 원격/외국어/법정직무 훈련은 근로자만 수강 가능)
		</div>
		<div class="boxt">
			<div class="total fll">
				전체 <span>6,643</span> 건
			</div>
		</div>
		
		<div class="box pt0">
			<strong>
			
			
				
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000282403','7','500036227356','C0061'); return false;">
											<strong>제과기능사 자격증 취득 과정(...</strong>
										</a>
									
									
								
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000282403','7','500036227356','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20200000282403','7','500036227356','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('871100'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('871100'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=YWXebRk6u9A6zXp2gwmS1Aw&athfilSeqNo=3" alt="logo2.jpg" onerror="this.src='/images/img_noimage.gif'" width="98" height="58" />
										
									
										
									
										<span class="icon_c1">1년 인증</span>
									
									
									
									
								</div>
								<div>
									<p>
										
										<strong>퍼스트바리스타학원</strong><br />(부산 부산진구 051-711-8581)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2021-01-07
									</p>
									<div>과정만족도 : 
										
											
												<div class="star">
													<div>
														<div></div>
														<span class="w80p"><!-- 퍼센트 클래스로 조절 --></span>
													</div>
													<span class="colr_point4"></span>
												</div>
											
											
										
									</div>
									<p>훈련비 : 
										
											 
												557,820 원
											 
											
											 
										
										
										
											<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20200000282403', '7', '46.6', '0', '407820', '557820', '2020', '3', '','C0061','C0031','21020101','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
										
										
								    </p>
									<p>모집인원 :
										
											12 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000281043','5','500020011522','C0061'); return false;">
											<strong>편집디자인(포토샵 기본)</strong>
										</a>
									
								
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000281043','5','500020011522','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20200000281043','5','500020011522','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('415400'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('415400'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=aj0EDhVUk06zXp2gwmS1Aw&athfilSeqNo=2" alt="그린컴퓨터아트학원_전주_hrd이미지(충경로).jpg" onerror="this.src='/images/img_noimage.gif'" width="98" height="58" />
										
									
										
									
									
										<span class="icon_c3">3년 인증</span>
									
									
									
								</div>
								<div>
									<p>
										
										<strong>그린컴퓨터아트학원</strong><br />(전북 전주시 완산구 063-232-2111)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2020-12-29
									</p>
									<div>과정만족도 : 
										
											
												<div class="star">
													<div>
														<div></div>
														<span class="w90p"><!-- 퍼센트 클래스로 조절 --></span>
													</div>
													<span class="colr_point4"></span>
												</div>
											
											
										
									</div>
									<p>훈련비 : 
										
											 
												245,230 원
											 
											
											 
										
										
										
											<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20200000281043', '5', '47.8', '71.4', '245230', '245230', '2020', '3', '','C0061','C0031','22010102','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
										
										
								    </p>
									<p>모집인원 :
										
											20 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000280706','3','500020050800','C0061'); return false;">
											<strong>유튜브 디지털 영상 콘텐츠제작...</strong>
										</a>
									
									
								
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000280706','3','500020050800','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20200000280706','3','500020050800','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('415500'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('415500'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=qGW0YvP7OhmzXp2gwmS1Aw&athfilSeqNo=7" alt="이젠아카데미평생교육원.jpg" onerror="this.src='/images/img_noimage.gif'" width="98" height="58" />
										
									
										
									
									
									
										<span class="icon_c6">3년 인증 우수</span>
									
									
								</div>
								<div>
									<p>
										
										<strong>이젠아카데미평생교육원</strong><br />(서울 종로구 02-733-8781)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2020-12-17
									</p>
									<div>과정만족도 : 
										
											
												<div class="star">
													<div>
														<div></div>
														<span class="w82.22p"><!-- 퍼센트 클래스로 조절 --></span>
													</div>
													<span class="colr_point4"></span>
												</div>
											
											
										
									</div>
									<p>훈련비 : 
										
											 
												241,870 원
											 
											
											 
										
										
										
											<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20200000280706', '3', '85.7', '0', '241870', '241870', '2020', '3', '','C0061','C0031','20020318','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
										
										
								    </p>
									<p>모집인원 :
										
											15 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000279618','2','500020035147','C0061'); return false;">
											<strong>플로리스트 웨딩&파티 플라워 ...</strong>
										</a>
									
									
								
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000279618','2','500020035147','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20200000279618','2','500020035147','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('884100'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('884100'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=oyEKcT1rVsSzXp2gwmS1Aw&athfilSeqNo=5" alt="HRD로고 신촌.png" onerror="this.src='/images/img_noimage.gif'" width="98" height="58" />
										
									
										
									
									
										<span class="icon_c3">3년 인증</span>
									
									
									
								</div>
								<div>
									<p>
										
										<strong>오면꽃예술학원</strong><br />(서울 마포구 02-704-8641)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2020-12-18
									</p>
									<div>과정만족도 : 
										
											
												<div class="star">
													<div>
														<div></div>
														<span class="w100p"><!-- 퍼센트 클래스로 조절 --></span>
													</div>
													<span class="colr_point4"></span>
												</div>
											
											
										
									</div>
									<p>훈련비 : 
										
											 
												669,560 원
											 
											
											 
										
										
										
											<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20200000279618', '2', '36.7', '32.9', '669560', '669560', '2020', '3', '','C0061','C0031','22020109','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
										
										
								    </p>
									<p>모집인원 :
										
											13 명
										
									</p>
								</div>
							</li>
						</ul>
					
						<div class="flx">
							<div class="box_lisj">
								
								
									
									
										<a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000278012','2','500020046831','C0061'); return false;">
											<strong>제빵기능사 속성반(실기)</strong>
										</a>
									
								
								
							</div>
							<div class="box_more">
								<button type="button" class="btn_more">more</button>
								<div class="pop_more">
									<ul>
										<li id="li1"><a href="javascript:void(0);" onclick="fn_tracseDetail('AIG20200000278012','2','500020046831','C0061'); return false;">과정상세정보</a></li>
										<li id="li2"><a href="javascript:void(0);" onclick="fn_insttDetail('AIG20200000278012','2','500020046831','C0061'); return false;">훈련기관정보</a></li>
										
										<li id="li3"><a href="javascript:void(0);" onclick="fn_jobDetail('871100'); return false;">일자리정보</a></li>
										<li id="li4"><a href="javascript:void(0);" onclick="fn_licenceDetail('871100'); return false;">자격증정보</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<ul class="ul4">
							<li class="flx">
								<div>
									
										
										
											<img src="/comm/com/fileDownload.do?athfilId=VBpsA1NQ1hSzXp2gwmS1Aw&athfilSeqNo=2" alt="sn_hsc.jpg" onerror="this.src='/images/img_noimage.gif'" width="98" height="58" />
										
									
										
									
									
										<span class="icon_c3">3년 인증</span>
									
									
									
								</div>
								<div>
									<p>
										
										<strong>(주)한솔외식창업아카데미</strong><br />(서울 종로구 02-6261-2643)
									</p>
									<p>
										
										2020-11-12 ~ 
										
										2021-01-22
									</p>
									<div>과정만족도 : 
										
											
											-
										
									</div>
									<p>훈련비 : 
										
											 
												407,820 원
											 
											
											 
										
										
										
											<a href="javascript:void(0);" onclick="javascript:fn_viewSelfAmt('AIG20200000278012', '2', '46.6', '0', '407820', '407820', '2020', '3', '','C0061','C0031','21020102','M1001' );return false;" title="자비부담액 보기" style="text-decoration: underline">
												<br />(자비부담액보기)
											</a>
										
										
								    </p>
									<p>모집인원 :
										
											20 명
										
									</p>
								</div>
							</li>
						</ul>
					
				
			
			
			</strong>
		</div><!-- //box -->
		</form>
		<div class="pagination">
			<!-- 페이징 숫자 처리 -->
			
				<a class="direction first" href="javascript:void(0);" onclick="fn_search(1);return false; "><span class="blind">처음</span></a><a class="direction prev" href="javascript:void(0);" onclick="fn_search(1);return false; "><span class="blind">이전</span></a><strong>1</strong><a href="javascript:void(0);" onclick="fn_search(2);return false; ">2</a><a href="javascript:void(0);" onclick="fn_search(3);return false; ">3</a><a href="javascript:void(0);" onclick="fn_search(4);return false; ">4</a><a href="javascript:void(0);" onclick="fn_search(5);return false; ">5</a><a class="direction next" href="javascript:void(0);" onclick="fn_search(6);return false; "><span class="blind">다음</span></a><a class="direction last" href="javascript:void(0);" onclick="fn_search(446);return false; "><span class="blind">끝</span></a>

				
		</div>
	<!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
	<!-- -------------------------------------------------------------17.12.29 [정찬범]훈련결과 통합(끝)--------------------------------------------------------------- -->
	<!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->		
	</div><!-- //job_seeker -->
</div><!-- //content -->

<div class="lpop">
	<div class="modal"></div>
	<div class="layer_container layer1">
		<div class="layer_content"><!-- // style="height:300px;"와 같이 높이값 지정 가능 -->
			<div class="layer_title">
				<h3>정렬 기준</h3>
			</div>
				<ul class="ul3">
					<li><label for="r11"><input type="radio" id="r11" name="rg1"> 개강 임박순</label></li>
					<li><label for="r12"><input type="radio" id="r12" name="rg1"> 평균 취업률 높은순</label></li>
					<li class="last"><label for="r13"><input type="radio" id="r13" name="rg1"> 만족도 </label></li>
				</ul>
			<button class="btn1 lpop_close2">닫기</button>

			<button type="button" class="lpop_close"><span class="icon_x"></span></button>
		</div>
	</div><!-- // layer_popup1 -->
</div>


<script type="text/javascript">
$(document).ready(function() {
	var pathname = document.location.pathname;
	if(pathname == "/hrdm/ti/mtiao/MTIAO0100L.do") {
		$("#MTIAO0100L").prop("selected", true);
	}
	fn_changeArea("");
	
	var searchLabel1 = "훈련과정명을 입력하세요.";
	var searchLabel2 = "훈련기관명을 입력하세요.";
	
	$("input[name='searchCondition']").change(function() {
		if ($(this).val() == "1") {
			$("#tracseNm").val($("#searchKeyword").val());
			$("#trainstCstmrNm").val(""); 
			
			$("#searchKeyword").addClass("placeholder").val(searchLabel1).focus(function() {
				if($("#searchKeyword").val() == searchLabel1) {
					$("#searchKeyword").removeClass("placeholder").val("");
				}
			}).blur(function() {
				if($("#searchKeyword").val() == "") {
					$("#searchKeyword").addClass("placeholder").val(searchLabel1);
				}
			}); 
		} else {
			$("#tracseNm").val("");
			$("#trainstCstmrNm").val($("#searchKeyword").val());
			
			$("#searchKeyword").addClass("placeholder").val(searchLabel2).focus(function() {
				if($("#searchKeyword").val() == searchLabel2) {
					$("#searchKeyword").removeClass("placeholder").val("");
				}
			}).blur(function() {
				if($("#searchKeyword").val() == "") {
					$("#searchKeyword").addClass("placeholder").val(searchLabel2);
				}
			}); 
		}
	});

	$('#searchKeyword').keypress(function(e) {
		if(e.keyCode == 13) {
			fn_search('1');
			return false;
		}
	});
	$("input[type=date]").css("font-size", "11px") ;
});

function moreView(){
	$("#rootGbn").val("moreView");
	$("#searchForm1").prop("action","/hrdm/ti/mtiao/MTIAO0100L.do");
	$("#searchForm1").submit();
}

function fn_search(pageNo){
	if($("input[name='searchCondition']:checked").val() == "1") {
		$("#tracseNm").val($("#searchKeyword").val()); 
		$("#trainstCstmrNm").val(""); 
	} else {
		$("#tracseNm").val(""); 
		$("#trainstCstmrNm").val($("#searchKeyword").val());
	}
	
	$("#pageIndex").val(pageNo);
	
	$("#searchForm1").prop("action","/hrdm/ti/mtiao/MTIAO0100L.do");
	$("#searchForm1").prop("method","post");
	$("#searchForm1").prop("target", "_self");
	$("#searchForm1").submit();
}

function fn_tracseDetail(tracseId, tracseTme, trainstCstmrId,crseTracseSe ){
	fn_tracseCookie(tracseId);
	$("#tracseId").val(tracseId);
	$("#tracseTme").val(tracseTme);
	$("#trainstCstmrId").val(trainstCstmrId);

	var seString ="|C0069|C0070|C0071|C0072|C0073|C0074|C0075|";
	if(seString.indexOf(crseTracseSe) > -1){
		$("#searchForm1").prop("action","/hrdm/ti/mtiao/MTIAO0101D.do");
		$("#searchForm1").prop("method","post");
		$("#searchForm1").prop("target", "_self");
		$("#searchForm1").submit();
	}else{
		$("#searchForm1").prop("action","/hrdm/ti/mtiao/MTIAO0100D.do");
		$("#searchForm1").prop("method","post");
		$("#searchForm1").prop("target", "_self");
		$("#searchForm1").submit();
	}
}

function fn_insttDetail(tracseId, tracseTme, trainstCstmrId,crseTracseSe){
	$("#tracseId").val(tracseId);
	$("#tracseTme").val(tracseTme);
	$("#trainstCstmrId").val(trainstCstmrId);
	
	var seString ="|C0069|C0070|C0071|C0072|C0073|C0074|C0075|";
	if(seString.indexOf(crseTracseSe) > -1){
		$("#searchForm1").prop("action","/hrdm/ti/mtiao/MTIAO0201D.do");
		$("#searchForm1").prop("method","post");
		$("#searchForm1").prop("target", "_self");
		$("#searchForm1").submit();
	}else{
		$("#searchForm1").prop("action","/hrdm/ti/mtiao/MTIAO0200D.do");
		$("#searchForm1").prop("method","post");
		$("#searchForm1").prop("target", "_self");
		$("#searchForm1").submit();
	}
}

function fn_jobDetail(kecoCd){
	var url = "/hrdm/co/mcobo/MCOBO0103P.do";
	location.href = url+"?kecoCd=" + kecoCd;
}

function fn_licenceDetail(kecoCd){
	var url = "/hrdm/co/mcobo/MCOBO0104P.do";
	location.href = url+"?kecoCd=" + kecoCd;
}

function fn_changePeriod(){
	var selectValue = $('select[name="searchPeriod"]').val();
	var startDate = $.datepicker.formatDate($.datepicker.ATOM, new Date());
	var endDate = "";
	
	switch(selectValue){
		case "week" : 
			endDate = gfn_addDate(startDate,'7');
			
			$("#startDate").val(startDate);
			$("#endDate").val(endDate);
			break;
		case "month" : 
			endDate = gfn_addMonth(startDate,'1');
			$("#startDate").val(startDate);
			$("#endDate").val(endDate);
			break;
		case "month2" : 
			endDate = gfn_addMonth(startDate,'2');
			
			$("#startDate").val(startDate);
			$("#endDate").val(endDate);
			break;
		default : 
			endDate = gfn_addMonth(startDate,'3');
		
			$("#startDate").val(startDate);
			$("#endDate").val(endDate);
			break;
	}
}

function fn_openmodal(){
	var div  = $("<div>") ; 
	var p    = $("<p>") ;
	var ul   = $("<ul class='ul2'>") ;
	var li1  = $("<li>") ; 
	var li2  = $("<li>") ; 
	p.text( "훈련일수와 훈련시간이 각각" ) ;
	p.css("margin-bottom", "8px") ;
	
	div.append( p ) ; 
	
	li1.text("10일 이상이고 40시간 이상인 과정") ; 
	ul.append( li1 ) ; 

	li2.text("우수훈련기관의 훈련과정") ; 
	ul.append( li2 ) ;
	
	div.append( ul ) ;
	
	var message = "<span>인 경우 관할고용센터 상담(인근지역 동일직종 훈련부재 등)후 수강하실 수 있습니다.</span>" ;
	
	div.append( message ) ; 
	$.modal.infoBox(div.html()) ; 
}

function fn_vnInfoSelect(vnInfoValue) {
	$("#vnInfoVal").val(vnInfoValue);
	var url = "";
	if($("#vnInfoVal").val() == "MTIAO0100L") { //구직자
		url = "/hrdm/ti/mtiao/MTIAO0100L.do";
	}else if($("#vnInfoVal").val() == "MTIAO0200L") { //근로자
		url = "/hrdm/ti/mtiao/MTIAO0200L.do";
	}else if($("#vnInfoVal").val() == "MTICO0100L") { //기업
		url = "/hrdm/ti/mtico/MTICO0100L.do";
	}else if($("#vnInfoVal").val() == "MTIDO0100L") { //일학습병행
		url = "/hrdm/ti/mtido/MTIDO0100L.do";
	}else if($("#vnInfoVal").val() == "MTIMO0100L") { //원격(인터넷,우편) 훈련과정
		url = "/hrdm/ti/mtimo/MTIMO0100L.do";
	}else if($("#vnInfoVal").val() == "MTILO0100L") { //중장년 특화과정
		url = "/hrdm/ti/mtilo/MTILO0100L.do";
	}
	
	location.href = url;
}
</script>
	


<footer>
	<div class="flx">
		<a href="/hrdm/ma/mmaao/gate.do">홈으로</a>
		<a href="/hrdm/co/mcodo/MCODO0100T.do?page=personal">개인정보처리방침</a>
		<a href="javascript:void(0);" onclick="fnViewPCVersion();">PC 버전</a>
	</div>
	<div class="fbtn">
		<button class="btn_back"><img src="/images/hrdm/icon/fbtnl.png" alt="Back"></button>
		<button class="btn_top"><img src="/images/hrdm/icon/fbtnu.png" alt="Top"></button>
	</div>
	Copyright ⓒ 2016  Human Resources Development<br/>Service Of Korea, All Rights Reserved.
	<!-- ADAMS에서 넘어온 메뉴ID가 있다면 테스트 버튼을 INCLUDE -->
	<br />
	<!-- 2019.09.25 미사용 샘플코드 제거 -->
</footer>

<script>
function gotoScrollTop(){
	$('body,html').animate({scrollTop:0},500);
	return false;
}

function fnViewPCVersion(){
	
	var ua = navigator.userAgent ; 

	if (ua.match('HRD-NET-APP')) {
		alert( 'PC버전 보기는 웹상에서만 가능합니다. \n웹브라우저로 접속하여 주십시오') ; 
		return false ; 
	} else {
		location.href = 'https://www.hrd.go.kr/hrdp/mb/pmbao/PMBAO0100T.do' ; 
	}
	
}


$(function() {
	//Go to top
	if(typeof ('.top') !== "undefined"){
		$(function() {
			$('button.top').bind('click', function() {
				gotoScrollTop();
			});
		});
	}
	
	// 뒤로가기, 상단 이동 버튼 iOS 기기 css 변경
	document.addEventListener("deviceready", onDeviceReady, false);
	function onDeviceReady() {
		if(typeof(device) != 'undefined' && typeof(device.platform) != 'undefined' ) {
			if(device.platform == 'iOS') {
				$('.fbtn').css("bottom", "2em");
			}
		}
	}
});
</script>
</div>
<script type="text/javascript">
/* (function(proxy) {
	proxy.alert = function(message, callback) {
		var layerDivArr = new Array();
		layerDivArr.push('<div class="layer_popup pop1" style="z-index: 700000;">');
		layerDivArr.push('    <div class="modal" style="z-index: 700001;"></div>');
		layerDivArr.push('    <div class="layer_container layer1" style="z-index: 700002;">');
		layerDivArr.push('        <div class="layer_content">');
		layerDivArr.push('            <div class="layer_title">');
		layerDivArr.push('                <h3 class="tit1">알림</h3>');
		layerDivArr.push('            </div>');
		layerDivArr.push('            <div class="box2 mb">');
		layerDivArr.push('                <p>${message}</p>');
		layerDivArr.push('            </div>');
		layerDivArr.push('            <div class="mt"><button id="layerBtnConfirm" class="btn1">확인</button></div>');
		layerDivArr.push('        </div>');
		layerDivArr.push('        <button id="layerBtnClose" type="button" class="layer_btn_close"><span class="icon_x"></span></button>');
		layerDivArr.push('    </div>');
		layerDivArr.push('</div>');
		var $alertLayerPopup = $(layerDivArr.join("\n").process({message: message}));
		$("#layerBtnClose, #layerBtnConfirm", $alertLayerPopup).click(function() {
			$alertLayerPopup.remove();
			if (callback && typeof callback === "function") callback.apply();
		});
		$(document.body).append($alertLayerPopup);
		$alertLayerPopup.show();
	}
})(this); */

var $gv_dialogDiv;

function gfn_showLoading() {
	var loaderDivArr = new Array();
	loaderDivArr.push('<div id="loaderDiv" class="loading_wrap">');
	loaderDivArr.push('    <div class="loading_modal"></div>');
	loaderDivArr.push('    <p class="loading_bar"><img src="/images/loading.gif" alt="로딩중입니다."></p>');
	loaderDivArr.push('</div>');
	$(document.body).append(loaderDivArr.join("\n"));
	$("#loaderDiv").show();
}
function gfn_hideLoading() {
	$("#loaderDiv").remove();
}

function gfn_openDialog() {
	var url = arguments[0];
	var data = typeof arguments[1] === "object" ? arguments[1] : {};
	var callbackFuncName = typeof arguments[1] === "string" ? arguments[1] : (typeof arguments[2] === "string" ? arguments[2] : "");

	$gv_dialogDiv = $('<div id="dialogDiv"></div>');
	$(document.body).append($gv_dialogDiv);
	$.extend(data, {"callbackFuncName": callbackFuncName});
	$gv_dialogDiv.load(url, data, function() {
		$(".layer_container").css('margin-top', '-220px');
		$(".layer_popup", $gv_dialogDiv).show();
		$(".layer_btn_close", $gv_dialogDiv).click(function(e){
			$gv_dialogDiv.remove();
		});
	});
}

</script>
</body>
</html>
