<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title> LOVE JEJU # </title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />
        
        
        
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
	<!-- <link rel="manifest" href="site.webmanifest"> -->
	<link rel="shortcut icon" type="image/x-icon" href="/resources/img/favicon.png" />
	<!-- Place favicon.ico in the root directory -->
	
	<!-- CSS here -->
	<link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/resources/css/owl.carousel.min.css" />
	<link rel="stylesheet" href="/resources/css/magnific-popup.css" />
	<link rel="stylesheet" href="/resources/css/themify-icons.css" />
	<link rel="stylesheet" href="/resources/css/nice-select.css" />
	<link rel="stylesheet" href="/resources/css/flaticon.css" />
	<link rel="stylesheet" href="/resources/css/gijgo.css" />
	<link rel="stylesheet" href="/resources/css/animate.css" />
	<link rel="stylesheet" href="/resources/css/slick.css" />
	<link rel="stylesheet" href="/resources/css/slicknav.css" />
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css" />
	<link rel="stylesheet" href="/resources/css/font-awesome.min.css" />
	<link rel="stylesheet" href="/resources/css/style.css" />
</head>
<style>
.slicknav_btn {
	top: -15px !important;
	right: -15px !important;
}

@media ( max-width : 991px) and (min-width: 768px) {
	.header-area .main-header-area {
		padding: 30px 20px !important;
	}
}

@media ( min-width : 993px) {
	.col-lg-4 {
		display: inline-block !important;
	}
}

.fa-shopping-cart {
	position: relative;
}

.fa-shopping-cart::after {
	content: attr(data-count);
	color: #ff4757;
	position: absolute;
	font-size: 12px;
	top: -20px;
	right: 5px;
}

@media ( min-width : 992px) {
	.d-lg-block {
		display: inline-block !important;
	}
}
</style>
<body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">HOME</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="/tourist">About</a>
                    <!--      <ul class="submenu">
													<li>
														<a href="/tourist">관광명소</a>
													</li>
													<li>
														<a href="/product/product">자전거대여</a>
													</li>
													<sec:authorize access="isAuthenticated()">
														<li>
															<a href="/course/course?userid=<sec:authentication property='principal.member.userid'/>">가이드 투어 정보</a>
														</li>
													</sec:authorize>
												</ul>
                        --> 
                        </li>
                        <li class="nav-item"><a class="nav-link" href="/login">LogIn</a></li>
                        <li class="nav-item"><a class="nav-link" href="#signup">Info</a></li>
                        <li class="nav-item"><a class="nav-link" href="#signup">Site</a></li>
                        <li class="nav-item"><a class="nav-link" href="#signup">Service</a></li>
                        <li class="nav-item"><a class="nav-link" href="#signup">Contact</a></li>
                    </ul>
                    
                    <!-- 카카오 플러스 친구 서비스  -->
                    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
					<div id="plusfriend-addfriend-button"></div>

					<script type='text/javascript'>
   					 // 사용할 앱의 JavaScript 키를 설정해 주세요.
    				Kakao.init('c2faf6bb57ca7f49c1afc97ca920bbb1');
    				// 플러스친구 친구추가 버튼을 생성합니다.
   					 Kakao.PlusFriend.createAddFriendButton({
    				  container: '#plusfriend-addfriend-button',
      				plusFriendId: '_xbFhns' // 플러스친구 홈 URL에 명시된 id로 설정합니다.
   					 });
						</script>
                    
                <!--    <iframe width="100%" height="245" 
                    src="https://forecast.io/embed/#lat=33.5&lon=126.5309&name=Jeju&color=&font=arial&units=si"
                     frameborder="3"></iframe> --> 
                    
                    &nbsp &nbsp &nbsp
                    
                    <!-- weather widget start --><div id="m-booked-prime-14033"> 
                    <div class="booked-wzsp-prime-in">
                     <div class="booked-wzsp-prime-data"> 
                     <div class="booked-wzsp-prime-img wt18">
                     </div> <div class="booked-wzsp-day-val">
                      <div class="booked-wzsp-day-number">
                      <span class="plus">+</span>26</div> <div class="booked-wzsp-day-dergee">
                       <div class="booked-wzsp-day-dergee-val">&deg;</div> 
                       <div class="booked-wzsp-day-dergee-name">C</div> </div>
                        </div> </div> </div> </a> </div><script type="text/javascript">
                        var css_file=document.createElement("link"); 
                        var widgetUrl = location.href; css_file.setAttribute("rel","stylesheet"); 
                        css_file.setAttribute("type","text/css");
                        css_file.setAttribute("href",'https://s.bookcdn.com/css/w/booked-wzs-widget-prime.css?v=0.0.1'); document.getElementsByTagName("head")[0].appendChild(css_file);
                        function setWidgetData_14033(data) { if(typeof(data) != 'undefined' && data.results.length > 0)
                        { for(var i = 0; i < data.results.length; ++i) { var objMainBlock = document.getElementById('m-booked-prime-14033'); if(objMainBlock !== null)
                        { var copyBlock = document.getElementById('m-bookew-weather-copy-'+data.results[i].widget_type); objMainBlock.innerHTML = data.results[i].html_code; if(copyBlock !== null) 
                        	objMainBlock.appendChild(copyBlock); } } } else { alert('data=undefined||data.results is empty'); } } var widgetSrc = "https://widgets.booked.net/weather/info?action=get_weather_info;ver=7;cityID=32868;type=5;scode=124;ltid=3457;domid=w209;anc_id=6454;countday=undefined;cmetric=1;wlangID=1;color=137AE9;wwidth=250;header_color=ffffff;text_color=333333;link_color=08488D;border_form=1;footer_color=ffffff;footer_text_color=333333;transparent=0;v=0.0.1";widgetSrc += ';ref=' + widgetUrl;widgetSrc += ';rand_id=14033';var weatherBookedScript = document.createElement("script"); weatherBookedScript.setAttribute("type", "text/javascript"); weatherBookedScript.src = widgetSrc; document.body.appendChild(weatherBookedScript) </script><!-- weather widget end -->
                    
                    
                    
                    
                </div>
            </div>
        </nav>
        