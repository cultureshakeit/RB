<%@page import="com.jayway.jsonpath.JsonPath"%>
<%@page import="com.jayway.jsonpath.DocumentContext"%>
<%@include file="../header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="uri"><%=request.getAttribute("javax.servlet.forward.request_uri") %></c:set>
${uri = uri.substring(0,uri.lastIndexOf("/"));''}
<%! public String getPhoto(String json){
	if (json == null)return "";
	DocumentContext document = JsonPath.parse(json);
	String imgpath = document.read("$['photoid']['imgpath']", String.class); 
	return imgpath;
}
	%>
<%! public String getRegion(String json){
	if (json == null)return "";
	DocumentContext document = JsonPath.parse(json);
	String str = document.read("$['label']", String.class); 
	return str;
}
	%>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
        
<title>${tourInfo.title}</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
 <!-- <link type="text/css" rel="stylesheet" href="/resources/tourist/css/default.css">  -->
 <link type="text/css" rel="stylesheet" href="/resources/css/bootstrap.min.css"> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/eyoom-form.min.css">
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/common.css">
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/fontawesome-all.min.css">
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/sweetalert.min.css" type="text/css" media="screen">
<link rel="stylesheet" href="/resources/tourist/css/magnific-popup.min.css" type="text/css" media="screen">
<link rel="stylesheet" href="/resources/tourist/css/prism.min.css" type="text/css" media="screen">
<link rel="stylesheet" href="/resources/tourist/css/fotorama.css" type="text/css" media="screen">
<link rel="stylesheet" href="/resources/tourist/css/venobox.css" type="text/css" media="screen">
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/tab_scroll_category.css" type="text/css" media="screen">
<!-- <link type="text/css" rel="stylesheet" href="/resources/tourist/css/style.css"> -->
<!--[if lte IE 8]>
<script src="http://theme4.eyoom.net/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "http://theme4.eyoom.net";
var g5_bbs_url   = "http://theme4.eyoom.net/bbs";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "dmap";
var g5_sca       = "제주";
var g5_editor    = "smarteditor2";
var g5_cookie_domain = "";
var g5_shop_url  = "http://theme4.eyoom.net/shop";
</script>
<script type="text/javascript" src="/resources/tourist/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/jquery-migrate-1.4.1.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/jquery.menu.js"></script>
<script type="text/javascript" src="/resources/tourist/js/common.js"></script>
<script type="text/javascript" src="/resources/tourist/js/wrest.js"></script>
<script type="text/javascript" src="/resources/tourist/js/placeholders.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/jquery.bootstrap-hover-dropdown.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/jquery.sidebar.min.js"></script>
<!--[if lt IE 9]>
<script src="http://theme4.eyoom.net/theme/eb4_basic/plugins/respond.min.js"></script>
<script src="http://theme4.eyoom.net/theme/eb4_basic/plugins/eyoom-form/js/eyoom-form-ie8.js"></script>
<![endif]-->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>

<body>
<div class=headerempty></div>
<div class="wrapper">
	<div class="basic-body container page-padding ft-padding">
		<div class="basic-body-page">
        	<div class="category-mobile-area">
            	<div class="tab-scroll-page-category">
                	<div class="scrollbar">
                    	<div class="handle">
                        	<div class="mousearea"></div>
                        </div>
                    </div>
                    <div id="tab-page-category">
	                    <div class="page-category-list">
<!-- 	                      <span ><a href="#" target="_self">공유자료실</a></span> -->
<!-- 	                      <span ><a href="#" target="_self">이벤트</a></span> -->
<span style='font-size:24px;'>관광명소</span>
	                      <span class="fake-span"></span>
	                    </div>
	                    <div class="controls">
	                        <button class="btn prev"><i class="fas fa-caret-left"></i></button>
	                        <button class="btn next"><i class="fas fa-caret-right"></i></button>
	                    </div>
                    </div>
                    <div class="tab-page-category-divider"></div>
                </div>
            </div>
			<div class="row1">
			
<style>
.headerempty{
 position: relative;
 height: 150px;
}
.board-view{margin: auto auto; padding:10px;}
.board-view .board-setup {position:relative;border:1px solid #d5d5d5;height:30px;margin-bottom:20px}
.board-view .board-setup .select {position:absolute;top:-1px;left:-1px;display:inline-block;width:200px}
.board-view .board-setup-btn-box {position:absolute;top:-1px;right:-1px;display:inline-block;width:420px}
.board-view .board-setup-btn {float:left;width:25%;height:30px;line-height:30px;color:#fff;text-align:center;font-size:12px}
.board-view .board-setup-btn:nth-child(odd) {background:#59595B}
.board-view .board-setup-btn:nth-child(even) {background:#676769}
.board-view .board-setup-btn:hover {opacity:0.8}
.board-view .board-view-info {position:relative;padding:5px auto;margin-top:15px;background:#fff;border-top:2px solid #757575;border-bottom:2px solid #757575;height:118px}
.board-view .board-view-info .view-post-info {position:relative;border-bottom:1px dotted #e5e5e5;padding-bottom:13px}
.board-view .board-view-info .view-photo-box {position:absolute;top:0;left:0}
.board-view .board-view-info .view-info-box {position:relative;margin-left:56px}
.board-view .board-view-info .view-member-progress {position:absolute;top:0;right:0;width:150px}
.board-view .board-view-info .view-photo img {width:46px;height:46px;margin-right:3px;-webkit-border-radius:50% !important;-moz-border-radius:50% !important;border-radius:50% !important}
.board-view .board-view-info .view-photo .view-user-icon {width:46px;height:46px;font-size:26px;line-height:46px;text-align:center;background:#757575;color:#fff;margin-right:3px;-webkit-border-radius:50% !important;-moz-border-radius:50% !important;border-radius:50% !important;display:inline-block;white-space:nowrap;vertical-align:baseline}
.board-view .board-view-info .info-box-top {display:block;margin:3px 0 5px}
.board-view .board-view-info .info-box-top .view-nick {font-size:13px;margin-right:3px}
.board-view .board-view-info .info-box-top .view-lv-icon {display:inline-block;margin-right:3px}
.board-view .board-view-info .info-box-bottom {display:block;font-size:11px}
.board-view .board-view-info .info-box-bottom span {margin-right:7px}
.board-view .board-view-info .info-box-bottom i {color:#b5b5b5;margin-right:4px}
.board-view .board-view-info .view-post-info-rating {position:relative;padding-top:8px}
.board-view .board-view-info .board-view-info-label {position:absolute;top:10px;right:0;z-index:2}
.board-view .board-view-info .board-view-good-nogood {position:relative;height:30px}
.board-view .board-view-info .board-view-good {display:inline-block;width:100px;height:30px;line-height:30px;color:#fff;background:#757575;text-align:center;-webkit-transition:all 0.1s ease-in-out;-moz-transition:all 0.1s ease-in-out;-o-transition:all 0.1s ease-in-out;transition:all 0.1s ease-in-out}
.board-view .board-view-info .board-view-nogood {display:inline-block;width:100px;height:30px;line-height:30px;color:#fff;background:#757575;text-align:center;-webkit-transition:all 0.1s ease-in-out;-moz-transition:all 0.1s ease-in-out;-o-transition:all 0.1s ease-in-out;transition:all 0.1s ease-in-out}
.board-view .board-view-info .board-view-good:hover {background:#7391F5}
.board-view .board-view-info .board-view-nogood:hover {background:#959595}
.board-view .board-view-info .board-view-good-nogood .no-member-gng {cursor:pointer}
.board-view .board-view-star {position:relative;font-size:11px;z-index:1}
.board-view .board-view-star .star-ratings-view {display:inline-block;margin-bottom:0;margin-right:15px;float:left}
.board-view .board-view-star .star-ratings-view li {padding:0;float:left;margin-right:0px}
.board-view .board-view-star .star-ratings-view li .rating {color:#a5a5a5;line-height:normal}
.board-view .board-view-star .star-ratings-view li .rating-selected {color:#FF4848}
.board-view .board-view-star .collapse-rating-result-panel {position:relative;border:1px solid #c5c5c5;background:#fafafa;padding:10px;margin:5px 0 0}
.board-view .board-view-star .collapse-rating-result-panel > span:after {content:"|";margin:0 3px;color:#d5d5d5}
.board-view .board-view-star .collapse-rating-result-panel > span:last-child:after {display:none}
.board-view .board-view-star .collapse-rating-result-panel span a {color:#757575}
.board-view .board-view-star .collapse-rating-result-panel span.active a {color:#FF4848}
.board-view .eyoom-form .rating {display:inline-block;float:left;width:120px;margin-top:-3px;font-size:11px}
.board-view .eyoom-form .rating label {margin-top:3px}
.board-view .eyoom-form .rating label .fa {font-size:12px}
.board-view .eyoom-form .rating label .fas {font-size:11px}
.board-view .eyoom-form .rating strong {color:#FF4848}
.board-view .eyoom-form .rating-mobile {position:absolute;top:10px;left:50%;display:inline-block;float:left;width:160px;margin-top:0;margin-left:-80px}
.board-view .eyoom-form .rating-mobile label {margin:0;width:32px;height:28px;line-height:28px;padding:0}
.board-view .eyoom-form .rating-mobile label .fas {font-size:26px}
.board-view .rating-mb-photo, .board-view .good-mb-photo {display:inline-block;width:26px;height:26px;margin-right:2px;border:1px solid #e5e5e5;padding:1px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;-webkit-border-radius:50% !important;-moz-border-radius:50% !important;border-radius:50% !important}
.board-view .rating-mb-photo img, .board-view .good-mb-photo img {width:100%;height:auto;-webkit-border-radius:50% !important;-moz-border-radius:50% !important;border-radius:50% !important}
.board-view .rating-mb-photo .rating-user-icon, .board-view .good-mb-photo .good-user-icon {width:22px;height:22px;font-size:12px;line-height:22px;text-align:center;background:#959595;color:#fff;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;display:inline-block;white-space:nowrap;vertical-align:baseline;-webkit-border-radius:50% !important;-moz-border-radius:50% !important;border-radius:50% !important}
.board-view .board-view-star .collapse-rating-mo-btn {position:absolute;top:17px;right:0}
.board-view .board-view-star .collapse-rating-panel {position:relative;border:1px solid #e5e5e5;background:#fff;height:50px;margin:5px 0 10px}
.board-view .board-view-good-view {padding:7px 0;border-bottom:1px solid #e5e5e5}
.board-view .board-view-good-member {position:relative;background:#fafafa;border:1px solid #c5c5c5;padding:10px;margin-top:5px;font-size:11px}
.board-view .board-view-good-member h6 {position:relative;text-align:center;font-size:12px;margin:0 0 16px}
.board-view .board-view-good-member h6:after {content:"";display:block;position:absolute;bottom:-8px;left:50%;width:12px;height:1px;margin-left:-6px;background:#FDAB29}
.board-view .board-view-good-member > span:after {content:"|";margin:0 3px;color:#d5d5d5}
.board-view .board-view-good-member > span:last-child:after {display:none}
.board-view .board-view-good-member span a {color:#757575}
.board-view .board-view-file {font-size:11px}
.board-view .board-view-file ul {margin-bottom:0}
.board-view .board-view-file li {padding:7px 0;border-bottom:1px dotted #e5e5e5}
.board-view .board-view-file a:hover {text-decoration:underline}
.board-view .board-view-file span {margin-left:7px}
.board-view .board-view-file span i {margin-right:4px;color:#b5b5b5}
.board-view .board-view-link {font-size:11px}
.board-view .board-view-link ul {margin-bottom:0}
.board-view .board-view-link li {padding:7px 0;border-bottom:1px dotted #e5e5e5}
.board-view .board-view-link a {text-decoration:underline}
.board-view .board-view-link a:hover {color:#6284F3}
.board-view .board-view-short-url {font-size:11px}
.board-view .board-view-short-url ul {margin-bottom:0}
.board-view .board-view-short-url li {padding:5px 0;border-bottom:1px dotted #e5e5e5}
.board-view .board-view-short-url a:hover {text-decoration:underline}
.board-view .board-view-btn-wrap {position:relative;height:34px;border-bottom:2px solid #e5e5e5}
.board-view .board-view-btn-left {position:absolute;top:5px;left:0}
.board-view .board-view-btn-right {position:absolute;top:5px;right:0}
.board-view .board-view-btn {position:relative;float:left;padding:0 15px;height:22px;line-height:22px;cursor:pointer;background:#959595;font-size:11px;color:#fff}
.board-view .board-view-btn.board-pin-btn i {color:#fff;margin-right:5px}
.board-view .board-view-btn.board-pin-btn:hover {background:#2B2B2E !important}
.board-view .board-view-btn.board-pin-btn:hover i {color:#86A0F7}
.board-view .view-top-btn {padding:20px 0}
.board-view .view-top-btn:after {display:block;visibility:hidden;clear:both;content:""}
.board-view .view-top-btn .top-btn-left li {float:left;margin-right:5px}
.board-view .view-top-btn .top-btn-right li {float:left;margin-left:5px;margin-bottom:5px}
.board-view .board-view-atc {min-height:200px}
.board-view .board-view-atc-title {position:absolute;font-size:0;line-height:0;overflow:hidden}
.board-view .board-view-file-conts {position:relative;overflow:hidden;margin-top:20px;margin-bottom:40px;background:#f8f8f8;padding:5px 5px 3px;border:1px solid #c5c5c5}
.board-view .board-view-file-conts #bo_v_img img {display:block;width:100%;max-width:100%;height:auto;margin-bottom:10px}
.board-view .board-view-con {position:relative;overflow:hidden;margin-bottom:30px;width:100%;word-break:break-all}
.board-view .board-view-con img {max-width:100%;height:auto}
.board-view .board-view-bot {zoom:1}
.board-view .board-view-bot:after {display:block;visibility:hidden;clear:both;content:""}
.board-view .board-view-bot h2 {position:absolute;font-size:0;line-height:0;overflow:hidden}
.board-view .board-view-bot ul {margin:0;padding:0;list-style:none}
.board-view .blind {display:none}
.board-view .map-content-wrap {width:100%;height:350px}
.board-view .map-content-wrap > div {width:100%;height:350px}
.board-view .board-view-tag {position:relative;overflow:hidden;background:#fafafa;border:1px solid #d5d5d5;padding:5px;margin-top:20px}
.board-view .board-view-tag span {display:inline-block;padding:2px 8px;line-height:1;margin:2px;background:#e5e5e5;font-size:11px;border-radius:2px !important}
.board-view .board-view-tag a:hover span {background:#757575;color:#fff}
.board-view .board-view-tag .fa-tags {width:22px;height:16px;line-height:16px;text-align:center;font-size:12px;color:#353535;margin-right:5px;box-sizing:content-box}
.board-view .view-area-divider {position:relative;height:1px;border-top:1px solid #d5d5d5;margin: 5px 0 30px 0px;}
.board-view .view-area-divider .divider-circle {position:absolute;top:-7px;left:50%;margin-left:-7px;width:14px;height:14px;border:2px solid #d5d5d5;background:#fff;z-index:1px;-webkit-border-radius:50% !important;-moz-border-radius:50% !important;border-radius:50% !important}
.board-view pre {font-size:12px}
.board-view .caption-overflow span {left:0;right:0}
.board-view .view-dmap-container {position:relative;min-height:400px;border-width:1px;border:1px solid #c5c5c5;margin-bottom:30px;padding:5px}
.board-view .dmap-view-canvas-wrap {position:relative;height:390px;margin:0px}
.board-view #dmap_view_canvas {width:100%;height:100%}
.board-view .view-dmap-container .dmap-overlay-wrap {position:absolute;bottom:35px;left:-150px;width:300px}
.board-view .view-dmap-container .dmap-overlay {position:relative;width:100%;border:0;background:#3C3C3E}
.board-view .view-dmap-container .dmap-overlay-wrap .after {content:"";position:relative;margin-left:-10px;left:50%;width:20px;height:10px;width:0;height:0;border-left:10px solid transparent;border-right:10px solid transparent;border-top:10px solid #3C3C3E}
.board-view .view-dmap-container .dmap-overlay .dmap-overlay-title {position:relative;overflow:hidden;display:block;height:40px;font-weight:bold;font-size:13px;padding:10px;color:#fff;background:#6284F3}
.board-view .view-dmap-container .dmap-overlay .dmap-overlay-title:hover {background:#4069EE;-webkit-transition:all 0.2s ease-in-out;-moz-transition:all 0.2s ease-in-out;-o-transition:all 0.2s ease-in-out;transition:all 0.2s ease-in-out}
.board-view .view-dmap-container .dmap-overlay-desc {padding:10px}
.board-view .view-dmap-container .dmap-overlay-desc p {position:relative;font-size:11px;color:#d5d5d5;padding-left:12px;margin-bottom:0;display:block;text-overflow:ellipsis;overflow:hidden;white-space:nowrap}
.board-view .view-dmap-container .dmap-overlay-desc p:before {content:"";position:absolute;top:6px;left:0;width:4px;height:4px;background:#fff}
.board-view .view-dmap-container .dmap-overlay-close {position:absolute;top:40px;right:0px;color:#fff;width:40px;height:40px;line-height:40px;text-align:center;font-size:13px;background:#3C3C3E;cursor:pointer}
.board-view .view-dmap-container .dmap-overlay-close:hover {background:#2B2B2E;-webkit-transition:all 0.2s ease-in-out;-moz-transition:all 0.2s ease-in-out;-o-transition:all 0.2s ease-in-out;transition:all 0.2s ease-in-out}
.draggable {display:block;width:100% \9;max-width:100%;height:auto;margin:0 auto}
button.mfp-close {position:fixed;color:#fff !important}
.mfp-figure .mfp-close {position:absolute}
.fotorama__nav-wrap {margin-top:3px}
.fotorama__thumb-border {border-color:#ff0000}
.fotorama__caption {top:0;bottom:inherit;font-size:11px;color:#fff}
.fotorama__caption__wrap {background-color:#000;background-color:rgba(0, 0, 0, 0.7)}
@media (max-width:767px) {
        .board-view .dmap-view-canvas-wrap {width:auto;float:none}
    .board-view .dmap-view-info-wrap {width:auto;float:none}
}
</style>

<div id="fakeloader"></div>
<c:set var="region1" value="${tourInfo.region1}" />
<c:set var="region2" value="${tourInfo.region2}" />
<style>

strong.title{
font-size:24px;
}
</style>
<article class="board-view">
    <h4 style='font-size: 22px;'>
		<span class="color-grey margin-right-5">[<%= getRegion((String)(pageContext.getAttribute("region2"))) %>]</span>
		<strong class='title'>${tourInfo.title}</strong>
    </h4>
    <div class="board-view-info">
        <div class="view-post-info">
        	<div class="view-photo-box">
            	<span class="view-photo margin-right-5"><img class="user-photo" src="/resources/tourist/image/admin.png" alt="회원사진"></span>
            </div>
            <div class="view-info-box">
                <div class="info-box-top">
                    <span class="view-nick">
                        <span class="sv_wrap">
							<a href="http://theme4.eyoom.net/bbs/profile.php?mb_id=ffff" data-toggle="dropdown" title="할인의추억 자기소개" target="_blank" rel="nofollow" onclick="return false;"> 최고관리자 </a>
							<!-- <ul class="sv dropdown-menu" role="menu">
							<li><a href="http://theme4.eyoom.net/?ffff"><strong>할인의추억</strong>님의 홈</a></li>
							<li><a href="http://theme4.eyoom.net/bbs/new.php?mb_id=ffff">전체게시물</a></li>
							<li><a href="http://theme4.eyoom.net/dmap?sca=제주&amp;sfl=mb_id,1&amp;stx=ffff">아이디로 검색</a></li>
							</ul>

								<noscript class="sv_nojs"><ul class="sv dropdown-menu" role="menu">
							 	<li><a href="http://theme4.eyoom.net/?ffff"><strong>할인의추억</strong>님의 홈</a></li>
								<li><a href="http://theme4.eyoom.net/bbs/new.php?mb_id=ffff">전체게시물</a></li>
								<li><a href="http://theme4.eyoom.net/dmap?sca=제주&amp;sfl=mb_id,1&amp;stx=ffff">아이디로 검색</a></li>
								</ul>
								</noscript>-->
								
						</span>
					</span>
<!--                     <span class="view-lv-icon"><img src="http://theme4.eyoom.net/theme/eb4_basic/image/level_icon/eyoom/basic/2.gif" align="absmiddle" alt="레벨"></span> -->
                </div>
                <div class="info-box-bottom">
                	<span class="color-black"><i class="fas fa-clock"></i>CreatedAt</span>
                    <span><i class="fas fa-eye"></i>조회수 ${tourInfo.views}</span>
                    <span class="color-red"><i class="fas fa-comment-alt"></i>${tourInfo.comments_num }</span>
<!--                     <div style='postion:absolute'> -->
    	<sec:authorize access="isAnonymous()">
    	<span class="color-grey font-size-11 margin-left-5" style='float:right;'><i class="fas fa-exclamation-circle"></i> 로그인 후 좋아요 / 즐겨찾기 가능</span>
    	</sec:authorize>
<!--     </div>    -->
                </div>
            </div>
			
		</div>
        <div class="view-post-info-rating">
            <div class="board-view-info-label">
            	<div class="board-view-good-nogood">
            	<style>
            	.far {
            	font-size:25px;
            	}
            	.fa {
            	font-size:25px;
            	}
            	strong.heart_click {
            	font-size:25px;
            	}
            	.board-view-good{
            	height:34px;
            	}
            	.board-view .board-view-info .board-view-good {
    			display: inline-block;
			    width: 100px;
 			    height: 34px; 
			    line-height: inherit;}
			    .board-view .board-view-info .view-post-info-rating {
				    position: relative;
				    padding-top: 8px;
				}
            	</style>
<!--             	class="board-view-good-view" -->
<!--      <div style='postion:absolute'> -->
<!--     	<span class="color-grey font-size-11 margin-left-5"><i class="fas fa-exclamation-circle"></i> 로그인 후 좋아요 / 즐겨찾기 가능</span> -->
<!--     </div>    -->
            	<div id='heart_container' style='margin-bottom:30px;'>
                	<div class="board-view-good no-member-gng" title="좋\n아\n요">
                            <div id='<sec:authorize access="isAuthenticated()">handle</sec:authorize>Like'><i class="fa${tourInfo.like_true ? '': 'r'} fa-heart" style="color:red"></i>
                            <strong class='heart_click'>${tourInfo.likes}</strong></div>
                    </div>
                    <div class="board-view-good no-member-gng" title="즐겨찾기"><!-- #ffd700 -->
                    <div id='favor<sec:authorize access="isAuthenticated()" >Star</sec:authorize>'><i class="fa${tourInfo.favor_true ? '':'r'} fa-star" style='color:${tourInfo.favor_true ? "yellow":"white"}'></i>
                    <strong class='heart_click'></strong>
                    </div>
               
                    </div>
                 </div>
            
                   <script>
                   var content_id = '<c:out value="${tourInfo.contentsid}" />'
                   
                   $(document).on('click','#handleLike',function(){
//        				var content_id = $(this).attr('content_id')
       				var flag = $(this).children('i')
       				var self = $(this)
       				var target = 'class'
       				if(flag.attr(target).includes('far')){
       					$.ajax({
       						url : '/tourist/like/' + content_id,
       						type: 'post',
       					})
       					.done(function(result){
       						
       			            flag.attr(target,'fa fa-heart')
       			            var count = parseInt(self.children('strong').text());
       			            self.children('strong').text(count+1);
       			            
       					})
       					.fail(function(){
       						console.log("에러 발생!")
       					})
       				
       			}else{
       				
       					$.ajax({
       						url : '/tourist/like/' + content_id,
       						type: 'delete',
       					})
       					.done(function(){
       					flag.attr(target,'far fa-heart')
       			        var count = parseInt(self.children('strong').text());
       			        self.children('strong').text( ( (count==1) ? 0 : count-1 ) );
       					})
       					.fail(function(){
       						console.log("에러 발생!")
       					})
       			}
       				})
       				
       			
       		    $(document).on('click','#favorStar',function(){
//        				var content_id = $(this).attr('content_id')
       				var flag = $(this).children('i')
       				var target = 'class'
       				var self = $(this)
       				if(flag.attr(target).includes('far')){
       					
       					$.ajax({
       						url : '/tourist/favor/' + content_id,
       						type: 'post',
       					})
       					.done(function(result){
       						flag.css('color','yellow')
       						flag.attr(target,'fa fa-star')
       				          
       					})
       					.fail(function(){
       						console.log("에러 발생!")
       					})
       				
       				
       			}else{
       				console.log('hello else')
       					$.ajax({
       						url : '/tourist/favor/' + content_id,
       						type: 'delete',
       					})
       					.done(function(result){
       						flag.css('color','white')
       						flag.attr(target,'far fa-star')
       					})
       					.fail(function(){
       						console.log("에러 발생!")
       					})
       			}
       				})
       				
       				$(document).on('click','#Like',function(){
       				let True =  confirm('로그인을 해주세요~!')
       				if(True){
       					window.location.href ='/login'
       				}
       			})
       			$(document).on('click','#favor',function(){
       				let True =  confirm('로그인을 해주세요~!')
       				if(True){
       					window.location.href ='/login'
       				}
       			})
                   </script>
                </div>
			</div>
        </div>
    </div>
    <div class="board-view-good-view">
<!--     	<span class="color-grey font-size-11 margin-left-5"><i class="fas fa-exclamation-circle"></i> 로그인 후 추천 / 비추천 가능</span> -->
    </div>   
    <div class="view-top-btn">
        <ul class="top-btn-right list-unstyled pull-right">
       		 
        	<li><a class="btn-e btn-e-dark" type="button" data-toggle="modal" data-target=".search-modal">
				<i class="fas fa-search"></i>
			</a></li><!-- 검색기능 -->
            <li><a href="/tourist" class="btn-e btn-e-dark" type="button">목록</a></li>
        </ul>
        <div class="clearfix"></div>
    </div>
    <div class="board-view-atc">
        <h2 class="board-view-atc-title">본문</h2>
        <c:set var="photo" value="${tourInfo.photo}" />
        <div class="board-view-file-conts">
            <div class="fotorama" data-nav="thumbs" data-max-width="100%" data-loop="true" data-allowfullscreen="true" data-thumbwidth="170" data-thumbheight="100" data-width = "1200">
	            <img src="<%=getPhoto((String)(pageContext.getAttribute("photo"))) %>" data-full="<%=getPhoto((String)(pageContext.getAttribute("photo"))) %>" data-caption="">
	            <img src="http://theme4.eyoom.net/data/file/dmap/1218034632_iVo9nuOe_41d8867af7c0b5e79c782231869409f2cd9f3569.jpg" data-full="http://theme4.eyoom.net/data/file/dmap/1218034632_iVo9nuOe_41d8867af7c0b5e79c782231869409f2cd9f3569.jpg" data-caption="">
	            <img src="http://theme4.eyoom.net/data/file/dmap/1218034632_Vdngq5pW_d48ed61e805f75cdbb3cef73b9e80bd20418fa39.jpg" data-full="http://theme4.eyoom.net/data/file/dmap/1218034632_Vdngq5pW_d48ed61e805f75cdbb3cef73b9e80bd20418fa39.jpg" data-caption="">
	            <img src="http://theme4.eyoom.net/data/file/dmap/1218034632_1pZ4ONz9_81360149c270ddef8649104b9f7a891c89dcda6d.jpg" data-full="http://theme4.eyoom.net/data/file/dmap/1218034632_1pZ4ONz9_81360149c270ddef8649104b9f7a891c89dcda6d.jpg" data-caption="">
	            <img src="http://theme4.eyoom.net/data/file/dmap/1218034632_2eyYsQWg_d87a3db0e7ad22141f7f29576800524324cdc071.jpg" data-full="http://theme4.eyoom.net/data/file/dmap/1218034632_2eyYsQWg_d87a3db0e7ad22141f7f29576800524324cdc071.jpg" data-caption="">
	            <img src="http://theme4.eyoom.net/data/file/dmap/1218034632_8Fs5nCbU_b3e5a6af46cee9f7263e46529704d759c265dc63.jpg" data-full="http://theme4.eyoom.net/data/file/dmap/1218034632_8Fs5nCbU_b3e5a6af46cee9f7263e46529704d759c265dc63.jpg" data-caption="">
	            <img src="http://theme4.eyoom.net/data/file/dmap/1218034632_1SAML3ym_d1393648451d1a90b776a2be55717eb0184de19b.jpg" data-full="http://theme4.eyoom.net/data/file/dmap/1218034632_1SAML3ym_d1393648451d1a90b776a2be55717eb0184de19b.jpg" data-caption="">
	            <img src="http://theme4.eyoom.net/data/file/dmap/1218034632_MNLsnUk0_54edd1fe7f8bc82292a7626b9d887787853361e1.jpg" data-full="http://theme4.eyoom.net/data/file/dmap/1218034632_MNLsnUk0_54edd1fe7f8bc82292a7626b9d887787853361e1.jpg" data-caption="">
            </div>
        </div>
        
		<div class="view-dmap-container">
            <div class="dmap-view-canvas-wrap">
                <div id="dmap_view_canvas"></div>
            </div>
        </div>
		
		<div class="board-view-con view-content">
			<p>${tourInfo.introduction}</p>
		</div>
<div class="clearfix"></div>

<script>
$(document).ready(function() {
    $('.eb-signature-tabs li a').hover(function (e) {
        e.preventDefault()
        $(this).tab('show');
    });
});
</script>                    
	</div>
<!-- 소셜버튼  -->
	<ul class="board-view-sns social-icons social-icons-color">
	    <li><a href="http://theme4.eyoom.net/bbs/sns_send.php?longurl=http%3A%2F%2Ftheme4.eyoom.net%2Fdmap%2F9%3Fsca%3D%25EC%25A0%259C%25EC%25A3%25BC&amp;title=%5B%EC%83%98%ED%94%8C%5D+50%EB%85%84+%EC%A0%84%ED%86%B5%EC%9D%98+%ED%95%B4%EC%82%B0%EB%AC%BC+%EC%A0%84%EB%AC%B8%EC%A0%90%2C+%EC%A0%9C%EC%A3%BC+%EA%B0%90%EC%88%98+%ED%95%B4%EC%82%B0%EB%AC%BC&amp;sns=facebook" target="_blank" title="Facebook" class="social_facebook"></a></li>
	    <li><a href="http://theme4.eyoom.net/bbs/sns_send.php?longurl=http%3A%2F%2Ftheme4.eyoom.net%2Fdmap%2F9%3Fsca%3D%25EC%25A0%259C%25EC%25A3%25BC&amp;title=%5B%EC%83%98%ED%94%8C%5D+50%EB%85%84+%EC%A0%84%ED%86%B5%EC%9D%98+%ED%95%B4%EC%82%B0%EB%AC%BC+%EC%A0%84%EB%AC%B8%EC%A0%90%2C+%EC%A0%9C%EC%A3%BC+%EA%B0%90%EC%88%98+%ED%95%B4%EC%82%B0%EB%AC%BC&amp;sns=twitter" target="_blank" title="Twitter" class="social_twitter"></a></li>
	    <li><a href="http://theme4.eyoom.net/bbs/sns_send.php?longurl=http%3A%2F%2Ftheme4.eyoom.net%2Fdmap%2F9%3Fsca%3D%25EC%25A0%259C%25EC%25A3%25BC&amp;title=%5B%EC%83%98%ED%94%8C%5D+50%EB%85%84+%EC%A0%84%ED%86%B5%EC%9D%98+%ED%95%B4%EC%82%B0%EB%AC%BC+%EC%A0%84%EB%AC%B8%EC%A0%90%2C+%EC%A0%9C%EC%A3%BC+%EA%B0%90%EC%88%98+%ED%95%B4%EC%82%B0%EB%AC%BC&amp;sns=gplus" target="_blank" title="Google Plus" class="social_google"></a></li>
	    <li><a href="http://theme4.eyoom.net/bbs/sns_send.php?longurl=http%3A%2F%2Ftheme4.eyoom.net%2Fdmap%2F9%3Fsca%3D%25EC%25A0%259C%25EC%25A3%25BC&amp;title=%5B%EC%83%98%ED%94%8C%5D+50%EB%85%84+%EC%A0%84%ED%86%B5%EC%9D%98+%ED%95%B4%EC%82%B0%EB%AC%BC+%EC%A0%84%EB%AC%B8%EC%A0%90%2C+%EC%A0%9C%EC%A3%BC+%EA%B0%90%EC%88%98+%ED%95%B4%EC%82%B0%EB%AC%BC&amp;sns=kakaostory" target="_blank" title="Kakao Story" class="social_kakaostory"></a></li>
	    <li><a href="http://theme4.eyoom.net/bbs/sns_send.php?longurl=http%3A%2F%2Ftheme4.eyoom.net%2Fdmap%2F9%3Fsca%3D%25EC%25A0%259C%25EC%25A3%25BC&amp;title=%5B%EC%83%98%ED%94%8C%5D+50%EB%85%84+%EC%A0%84%ED%86%B5%EC%9D%98+%ED%95%B4%EC%82%B0%EB%AC%BC+%EC%A0%84%EB%AC%B8%EC%A0%90%2C+%EC%A0%9C%EC%A3%BC+%EA%B0%90%EC%88%98+%ED%95%B4%EC%82%B0%EB%AC%BC&amp;sns=band" target="_blank" title="Band" class="social_band"></a></li>
	</ul>        
<!-- 	태그 -->
<style>
.icon_tag {
    display: inline-block;
    background-color: #337ab7;
    padding: 3px 10px;
    font-size: 1.2em;
    margin: 5px 0 5px;
    border-radius: 50px;
    color: #fff;
    pointer-events:auto;
    opacity:0.8;
    cursor:pointer;
}
</style>
<div id='tag_area'>
	<h5> <i class="fas fa-tags icon_tag" style='line-height: 1.5;cursor:auto'> TAG </i> 
	<c:forEach items="${tags}" var="tag">
	 <div class='icon_tag' style='font-weight:bold'><a href="${uri}?TagName=${tag}" style='color:white'>#${tag}</a> </div>    
	</c:forEach></h5>
</div>
    <div class="view-area-divider">
    
    
    <span class="divider-circle"></span></div>

        
<style>
.view-comment {position:relative;margin-bottom:40px}
.view-comment h2 {position:absolute;font-size:0;line-height:0;overflow:hidden}
.view-comment .view-comment-heading {border-bottom:2px solid #757575;padding:10px 0;margin-bottom:30px}
.view-comment .view-comment-item {position:relative;padding:15px 0px 0px 20px;border-top:1px solid #e5e5e5}
.view-comment .view-comment-item .no-comment {text-align:center;padding:10px 0 20px}
.view-comment .view-comment-no-item {position:relative;padding:20px 0;border-top:1px solid #e5e5e5;border-bottom:1px solid #e5e5e5;text-align:center}
.view-comment .view-comment-no-item .no-comment {color:#959595;font-size:13px}
.view-comment .view-comment-item .view-cmtgo-btn {position:absolute;top:-10px;left:0;width:20px;height:20px;line-height:20px;text-align:center;background:#757575;color:#fff;font-size:11px;cursor:pointer}
.view-comment .view-comment-item .view-cmtgo-btn:hover {background:#555555}
.view-comment .view-comment-item .view-comment-best-label {position:absolute;top:-10px;left:20px;width:70px;height:20px;line-height:20px;text-align:center;background:#7887CC;color:#fff;font-size:11px;cursor:pointer}
.view-comment .view-comment-item.cmt-best {background:#E3F2FD;border-color:#1E88E5}
.view-comment .view-comment-depth {position:absolute;top:-40px;left:0;width:8px;height:123px;border-left:1px dotted #d5d5d5;border-bottom:1px dotted #d5d5d5}
.view-comment .view-comment-depth i {position:absolute;top:116px;left:5px;color:#d5d5d5}
.view-comment .view-comment-photo {position:absolute;overflow:hidden;top:15px;left:5px;width:48px;height:48px;background:#fff;border:1px solid #eaeaea;padding:2px;-webkit-border-radius:50% !important;-moz-border-radius:50% !important;border-radius:50% !important}
.view-comment .view-comment-photo img {width:42px;height:42px;-webkit-border-radius:50% !important;-moz-border-radius:50% !important;border-radius:50% !important}
.view-comment .view-comment-photo .comment-user-icon {width:42px;height:42px;background:#84848a;font-size:24px;line-height:42px;text-align:center;color:#fff;display:inline-block;-webkit-border-radius:50% !important;-moz-border-radius:50% !important;border-radius:50% !important}
.view-comment .view-comment-photo.no-depth-photo {left:0}
.view-comment .comment-item-info {position:relative;padding-left:60px;padding-right:15px;margin-top:15px;margin-bottom:25px}
.view-comment .comment-item-info > span {margin-right:5px}
.view-comment .comment-ip {font-size:11px;color:#959595}
.view-comment .comment-time {font-size:12px;color:#959595}
.view-comment .comment-dropdown {position:absolute;top:0;right:-5px;display:inline-block}
.view-comment .comment-dropdown-btn {display:inline-block;width:18px;height:18px;line-height:20px;background:#d5d5d5;color:#fff;text-align:center;font-size:11px;-webkit-border-radius:50% !important;-moz-border-radius:50% !important;border-radius:50% !important}
.view-comment .comment-dropdown-btn:hover {background:#757575;color:#fff;cursor:pointer;-webkit-transition:all 0.2s linear;-moz-transition:all 0.2s linear;transition:all 0.2s linear}
.view-comment .comment-dropdown .dropdown-menu {left:inherit;right:0}
.view-comment .comment-dropdown .dropdown-menu a {font-size:12px}
.view-comment .comment-dropdown .dropdown-menu a small {font-size:11px;color:#a5a5a5}
.view-comment .comment-item-content {position:relative;padding-left:20px}
.view-comment .comment-item-content .comment-file-item {position:relative;border:1px solid #e5e5e5;background:#fafafa;padding:7px 10px;font-size:11px;margin-bottom:15px}
.view-comment .comment-item-content .comment-file-item:after {content:"";display:block;clear:both}
.view-comment .comment-item-content .comment-file-item span {margin-left:5px}
.view-comment .comment-item-content .comment-file-item i {color:#959595;margin-right:3px}
.view-comment .comment-item-content .comment-cont-wrap {display:flex}
.view-comment .comment-item-content .comment-cont-wrap:after {content:"";display:block;clear:both}
.view-comment .comment-item-content .comment-cont-img {position:relative;flex-grow:1;padding-right:15px}
.view-comment .comment-item-content .comment-cont-txt {position:relative;flex-grow:4}
.view-comment .comment-item-content .comment-image {display:block;width:200px;margin-bottom:15px}
.view-comment .comment-item-content .comment-yello-card {position:relative;padding:10px;margin-bottom:20px;background:#ffbeaa;border:1px solid #ff9b79;opacity:0.45}
.view-comment .comment-btn-wrap {position:relative;text-align:right;height:20px}
.view-comment .comment-btn-wrap .comment-btn-right {position:absolute;top:0;right:0}
.view-comment .comment-btn-wrap .comment-btn {position:relative;float:left;padding:0 15px;height:20px;line-height:20px;cursor:pointer;background:#959595;font-size:11px;color:#fff}
.view-comment .comment-btn-wrap .comment-btn:nth-child(odd) {background:#59595B}
.view-comment .comment-btn-wrap .comment-btn:nth-child(even) {background:#676769}
.view-comment .comment-btn-wrap .comment-btn:hover {background:#4B4B4D}
.view-comment .comment-item-body-pn .comment-item-info {padding-left:10px}
.view-comment-write {position:relative;margin-bottom:40px}
.comment-area .comment-write-heading {position:relative;border-bottom:2px solid #757575;padding:10px 0;margin-bottom:15px}
.comment-area .comment-write-heading .cmt-point-info-btn {position:absolute;top:9px;right:0}
.comment-area .comment-write-wrap {position:relative}
.comment-area .comment-write {margin-bottom:20px}
.comment-area .comment-write .comment-write-option {position:relative;background:#fafafa;border:1px solid #d5d5d5;border-bottom:0}
.comment-area .comment-write .comment-write-option .panel-default {border:0;margin-bottom:0;box-shadow:none;background:transparent}
.comment-area .comment-write .comment-write-option .panel-in {position:relative;padding:10px}
.comment-area .comment-write .comment-write-option .panel-in .panel-in-left {float:left}
.comment-area .comment-write .comment-write-option .panel-in .panel-in-right {float:right}
.comment-area .comment-write .comment-write-option .comment-option-btn {position:relative;float:left;padding:0 10px;height:22px;line-height:22px;text-align:center;font-size:11px;color:#757575;border:1px solid #c5c5c5;background:#fff;margin-left:-1px;-webkit-transition:all 0.1s linear;-moz-transition:all 0.1s linear;transition:all 0.1s linear}
.comment-area .comment-write .comment-write-option .comment-option-btn:hover {color:#000;background:#e5e5e5}
.comment-area .comment-write .comment-write-option .comment-collapse-box {background:#fff;border-top:1px solid #d5d5d5;padding:10px}
.comment-area .comment-write .comment-write-option .comment-collapse-box label {margin-bottom:0}
.comment-area .comment-write .comment-write-option .comment-collapse-box .btn-e-input {padding:5px 16px}
.comment-area .comment-write .comment-write-footer {position:relative;background:#fafafa;border:1px solid #d5d5d5;border-top:0;padding:7px 10px;color:#959595;font-size:11px}
.comment-area .comment-write-submit {position:relative;text-align:center}
.comment-area #modal_comment_video_note .table-list-eb .table thead>tr>th {text-align:left}
.comment-area .view-comment-more {text-align:center;border-top:1px solid #e5e5e5;padding-top:30px;margin-bottom:40px}
.comment-area .eyoom-form .textarea {margin-bottom:0}
.comment-area .eyoom-form .textarea textarea {border:1px solid #d5d5d5}
.comment-area-divider {position:relative;height:1px;border-top:1px solid #d5d5d5;margin:30px 0}
.comment-area-divider .divider-circle {position:absolute;top:-7px;left:50%;margin-left:-7px;width:14px;height:14px;border:2px solid #d5d5d5;background:#fff;z-index:1px;-webkit-border-radius:50% !important;-moz-border-radius:50% !important;border-radius:50% !important}
#bo_vc_send_sns ul{padding:0;margin:-5px 0 20px;overflow:hidden}
#bo_vc_send_sns li{float:left;margin-right:10px;list-style:none}
#bo_vc_send_sns li input{margin:10px 25px 10px 5px}
#infscr-loading {text-align:center;z-index:100;position:absolute;left:50%;bottom:0;width:200px;margin-left:-100px;padding:10px;background:#000;opacity:0.6;color:#fff}
#map_canvas {width:1000px;height:400px;display:none}
@media (max-width:767px) {
    .comment-area .comment-write .comment-write-option .comment-option-btn {padding:0 15px}
    .view-comment .view-comment-depth {height:110px}
    .view-comment .view-comment-depth i {top:104px}
    .view-comment .view-comment-photo {width:34px;height:34px;padding:1px}
    .view-comment .view-comment-photo img {width:30px;height:30px}
    .view-comment .view-comment-photo .comment-user-icon {width:30px;height:30px;font-size:16px;line-height:30px}
    .view-comment .comment-item-info {padding-left:45px;margin-top:8px;margin-bottom:20px}
    .view-comment .comment-item-content {padding-left:17px}
}
@media (max-width:600px) {
    .comment-area {font-size:12px}
    .view-comment .comment-item-content .comment-cont-wrap {display:block}
    .view-comment .comment-item-content .comment-cont-img {position:relative;flex-grow:none;padding-right:0}
    .view-comment .comment-item-content .comment-cont-txt {position:relative;flex-grow:none}
    .view-comment .comment-item-content .comment-image {width:100%;margin-right:inherit}
}
</style>

<script>
// 글자수 제한
var char_min = parseInt(0); // 최소
var char_max = parseInt(0); // 최대
</script>

	<div class="comment-area">
        <div class="view-comment">
        	<h4 class="view-comment-heading"><strong>댓글목록 <span class="color-red">${tourInfo.comments_num}</span></strong></h4>
        	<div class="comment-area">
        
                <h2>백마탄환자님의  댓글</h2>
        <div id="c_12_0" class="view-comment-item cmt-best" style="">
                        <div class="view-cmtgo-btn cmtgo-btn-1 tooltips" data-toggle="tooltip" data-placement="top" data-original-title="원글 위치로 이동"><i class="fa fa-arrow-down"></i></div>
            <div class="view-comment-best-label best-label-0">베스트 1</div>
                                                <div class="view-comment-photo no-depth-photo">
                                <img class="user-photo" src="http://theme4.eyoom.net/data/member/profile/iiii.png" alt="회원사진">                            </div>
            <div class="comment-item-body">
                            <div class="comment-item-info">
                    <span class="comment-name"><span class="sv_wrap">
<a href="http://theme4.eyoom.net/bbs/profile.php?mb_id=iiii" data-toggle="dropdown" title="백마탄환자 자기소개" target="_blank" rel="nofollow" onclick="return false;"> 백마탄환자</a>
<ul class="sv dropdown-menu" role="menu">
<li><a href="http://theme4.eyoom.net/?iiii"><strong>백마탄환자</strong>님의 홈</a></li>
<li><a href="http://theme4.eyoom.net/bbs/new.php?mb_id=iiii">전체게시물</a></li>
<li><a href="http://theme4.eyoom.net/blog?sca=&amp;sfl=mb_id,1&amp;stx=iiii">아이디로 검색</a></li>
</ul>

<noscript class="sv_nojs"><ul class="sv dropdown-menu" role="menu">
<li><a href="http://theme4.eyoom.net/?iiii"><strong>백마탄환자</strong>님의 홈</a></li>
<li><a href="http://theme4.eyoom.net/bbs/new.php?mb_id=iiii">전체게시물</a></li>
<li><a href="http://theme4.eyoom.net/blog?sca=&amp;sfl=mb_id,1&amp;stx=iiii">아이디로 검색</a></li>
</ul>
</noscript></span></span>
                                                            <span class="comment-lv-icon"><img src="http://theme4.eyoom.net/theme/eb4_basic/image/level_icon/eyoom/basic/1.gif" align="absmiddle" alt="레벨"></span>
                                                            <span class="badge badge-yellow">베스트 댓글 1</span>
                                                            <span class="comment-time">
                                                <i class="far fa-clock color-grey"></i> 2018.08.12 18:35                                            </span>
                                    </div>
                <div class="comment-item-content">
                                                            <div class="comment-cont-wrap">
                                                                        
                                                <div class="comment-cont-txt">
                                                        새롭게 출시되는 iMac은 완전히 새로운 프로세서, 최신 그래픽 기술, 혁신적인 저장 장치, 보다 넓은 대역폭을 지원하는 통신 기술을 갖췄습니다.                                                    </div>
                    </div>
                                        <div class="margin-bottom-10"></div>
                                                                            </div>
                <div class="comment-btn-wrap">
                                        <div class="comment-btn-right">
                                                                                                                        <a href="http://theme4.eyoom.net/eyoom/core/board/goodcmt.php?&amp;c_id=12&amp;good=good" id="goodcmt_button_12" class="goodcmt_button comment-btn" title="추천"><i class="far fa-thumbs-up"></i> <strong class="board-cmt-act-good"><span class="color-yellow">3</span></strong></a>
                                                                        <a href="http://theme4.eyoom.net/eyoom/core/board/goodcmt.php?&amp;c_id=12&amp;good=nogood" id="nogoodcmt_button_12" class="nogoodcmt_button comment-btn" title="비추천"><i class="far fa-thumbs-down"></i> <strong class="board-cmt-act-nogood"><span class="color-light-grey">0</span></strong></a>
                                            </div>
                                    </div>
                <div class="clearfix"></div>

                <span id="edit_12_0"></span>                <span id="reply_12_0"></span>
                <input type="hidden" value="" id="secret_comment_12">
                <input type="hidden" value="" id="anonymous_id_12">
                <input type="hidden" value="" id="cmt_attach_12">
                <textarea id="save_comment_12_0" style="display:none">새롭게 출시되는 iMac은 완전히 새로운 프로세서, 최신 그래픽 기술, 혁신적인 저장 장치, 보다 넓은 대역폭을 지원하는 통신 기술을 갖췄습니다.</textarea>
                <div class="clearfix"></div>
            </div>
        </div>
                <h2>레인보우님의  댓글</h2>
        <div id="c_11_0" class="view-comment-item cmt-best" style="">
                        <div class="view-cmtgo-btn cmtgo-btn-2 tooltips" data-toggle="tooltip" data-placement="top" data-original-title="원글 위치로 이동"><i class="fa fa-arrow-down"></i></div>
            <div class="view-comment-best-label best-label-1">베스트 2</div>
                                                <div class="view-comment-photo no-depth-photo">
                                <img class="user-photo" src="http://theme4.eyoom.net/data/member/profile/gggg.png" alt="회원사진">                            </div>
            <div class="comment-item-body">
                            <div class="comment-item-info">
                    <span class="comment-name"><span class="sv_wrap">
<a href="http://theme4.eyoom.net/bbs/profile.php?mb_id=gggg" data-toggle="dropdown" title="레인보우 자기소개" target="_blank" rel="nofollow" onclick="return false;"> 레인보우</a>
<ul class="sv dropdown-menu" role="menu">
<li><a href="http://theme4.eyoom.net/?gggg"><strong>레인보우</strong>님의 홈</a></li>
<li><a href="http://theme4.eyoom.net/bbs/new.php?mb_id=gggg">전체게시물</a></li>
<li><a href="http://theme4.eyoom.net/blog?sca=&amp;sfl=mb_id,1&amp;stx=gggg">아이디로 검색</a></li>
</ul>

<noscript class="sv_nojs"><ul class="sv dropdown-menu" role="menu">
<li><a href="http://theme4.eyoom.net/?gggg"><strong>레인보우</strong>님의 홈</a></li>
<li><a href="http://theme4.eyoom.net/bbs/new.php?mb_id=gggg">전체게시물</a></li>
<li><a href="http://theme4.eyoom.net/blog?sca=&amp;sfl=mb_id,1&amp;stx=gggg">아이디로 검색</a></li>
</ul>
</noscript></span></span>
                                                            <span class="comment-lv-icon"><img src="http://theme4.eyoom.net/theme/eb4_basic/image/level_icon/eyoom/basic/1.gif" align="absmiddle" alt="레벨"></span>
                                                            <span class="badge badge-yellow">베스트 댓글 2</span>
                                                            <span class="comment-time">
                                                <i class="far fa-clock color-grey"></i> 2018.08.12 18:33                                            </span>
                                    </div>
                <div class="comment-item-content">
                                                            <div class="comment-cont-wrap">
                                                                        
                                                <div class="comment-cont-txt">
<br/>Maecenas sed diam eget risus varius blandit sit amet non magna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.                                                    </div>
                    </div>
                                        <div class="margin-bottom-10"></div>
                                                                            </div>
                <div class="comment-btn-wrap">
                                        <div class="comment-btn-right">
                                                                                                                        <a href="http://theme4.eyoom.net/eyoom/core/board/goodcmt.php?&amp;c_id=11&amp;good=good" id="goodcmt_button_11" class="goodcmt_button comment-btn" title="추천"><i class="far fa-thumbs-up"></i> <strong class="board-cmt-act-good"><span class="color-yellow">2</span></strong></a>
                                                                        <a href="http://theme4.eyoom.net/eyoom/core/board/goodcmt.php?&amp;c_id=11&amp;good=nogood" id="nogoodcmt_button_11" class="nogoodcmt_button comment-btn" title="비추천"><i class="far fa-thumbs-down"></i> <strong class="board-cmt-act-nogood"><span class="color-light-grey">0</span></strong></a>
                                            </div>
                                    </div>
                <div class="clearfix"></div>

                <span id="edit_11_0"></span>                <span id="reply_11_0"></span>
                <input type="hidden" value="" id="secret_comment_11">
                <input type="hidden" value="" id="anonymous_id_11">
                <input type="hidden" value="" id="cmt_attach_11">
                <textarea id="save_comment_11_0" style="display:none">이제 그 비전이 그 어느 때보다 더 강력한 모습으로 다가옵니다. {이모티콘:rabbit_25}
Maecenas sed diam eget risus varius blandit sit amet non magna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</textarea>
                <div class="clearfix"></div>
            </div>
        </div>
<!--        댓글시작 -->
        <c:forEach var="comment" items="${comments}">
                <h2>${comment.name}님의  댓글</h2>
        <div id="c_9" class="view-comment-item " style="">
                                                <div class="view-comment-photo no-depth-photo">
                                <img class="user-photo" src="http://theme4.eyoom.net/data/member/profile/eeee.png" alt="회원사진">                            </div>
            <div class="comment-item-body">
                            <div class="comment-item-info">
                    <span class="comment-name"><span class="sv_wrap">
<a href="http://theme4.eyoom.net/bbs/profile.php?mb_id=eeee" data-toggle="dropdown" title="${comment.name} 자기소개" target="_blank" rel="nofollow" onclick="return false;"> ${comment.name}</a>
<ul class="sv dropdown-menu" role="menu">
<li><a href="http://theme4.eyoom.net/?eeee"><strong>${comment.name}</strong>님의 홈</a></li>
<li><a href="http://theme4.eyoom.net/bbs/new.php?mb_id=eeee">전체게시물</a></li>
<li><a href="http://theme4.eyoom.net/blog?sca=&amp;sfl=mb_id,1&amp;stx=eeee">아이디로 검색</a></li>
</ul>

<noscript class="sv_nojs"><ul class="sv dropdown-menu" role="menu">
<li><a href="http://theme4.eyoom.net/?eeee"><strong>${comment.name}</strong>님의 홈</a></li>
<li><a href="http://theme4.eyoom.net/bbs/new.php?mb_id=eeee">전체게시물</a></li>
<li><a href="http://theme4.eyoom.net/blog?sca=&amp;sfl=mb_id,1&amp;stx=eeee">아이디로 검색</a></li>
</ul>
</noscript></span></span>
                                                            <span class="comment-lv-icon"><img src="http://theme4.eyoom.net/theme/eb4_basic/image/level_icon/eyoom/basic/1.gif" align="absmiddle" alt="레벨"></span>
                                                                                <span class="comment-time">
                                                <i class="far fa-clock color-grey"></i> ${comment.createdat }                                           </span>
                                    </div>
                <div class="comment-item-content">
                                                            <div class="comment-cont-wrap">
                                                                        
                                                <div class="comment-cont-txt">
${comment.content}</div>
                    </div>
                                        <div class="margin-bottom-10"></div>
                                        
<!--                                         <strong class="color-red"></strong> -->
<button class="alert alert-warning first-comment" style='display:inline-block'>
                        <i class="far fa-comments font-size-18 margin-right-10"></i>답변 ${comment.reply_num != 0 ? comment.reply_num:''}
                    </button>
                    
                     <div class="comment-btn-right" style='display:inline-block;float:right;'>
                     <a href="http://theme4.eyoom.net/eyoom/core/board/goodcmt.php?&amp;c_id=9&amp;good=good" id="goodcmt_button_9" class="goodcmt_button comment-btn" title="추천"><i class="far fa-thumbs-up"></i> <strong class="board-cmt-act-good"><span class="color-light-grey">0</span></strong></a>
                     <a href="http://theme4.eyoom.net/eyoom/core/board/goodcmt.php?&amp;c_id=9&amp;good=nogood" id="nogoodcmt_button_9" class="nogoodcmt_button comment-btn" title="비추천"><i class="far fa-thumbs-down"></i> <strong class="board-cmt-act-nogood"><span class="color-light-grey">0</span></strong></a>
                     </div>
                                                                            </div>
                
                                    
                                    
               
            </div>
            
            <div class='sub_comments'>            
                <h2>할인의추억님의 <span class="sound_only">댓글의</span> 댓글</h2>
        <div id="c_10" class="view-comment-item " style="margin-left:15px;">
                                    <div class="view-comment-depth"><i class="fas fa-caret-right"></i></div>
                                    <div class="view-comment-photo ">
                                <img class="user-photo" src="http://theme4.eyoom.net/data/member/profile/ffff.png" alt="회원사진">                            </div>
            <div class="comment-item-body">
                            <div class="comment-item-info">
                    <span class="comment-name"><span class="sv_wrap">
<a href="http://theme4.eyoom.net/bbs/profile.php?mb_id=ffff" data-toggle="dropdown" title="할인의추억 자기소개" target="_blank" rel="nofollow" onclick="return false;"> 할인의추억</a>
<ul class="sv dropdown-menu" role="menu">
<li><a href="http://theme4.eyoom.net/?ffff"><strong>할인의추억</strong>님의 홈</a></li>
<li><a href="http://theme4.eyoom.net/bbs/new.php?mb_id=ffff">전체게시물</a></li>
<li><a href="http://theme4.eyoom.net/blog?sca=&amp;sfl=mb_id,1&amp;stx=ffff">아이디로 검색</a></li>
</ul>

<noscript class="sv_nojs"><ul class="sv dropdown-menu" role="menu">
<li><a href="http://theme4.eyoom.net/?ffff"><strong>할인의추억</strong>님의 홈</a></li>
<li><a href="http://theme4.eyoom.net/bbs/new.php?mb_id=ffff">전체게시물</a></li>
<li><a href="http://theme4.eyoom.net/blog?sca=&amp;sfl=mb_id,1&amp;stx=ffff">아이디로 검색</a></li>
</ul>
</noscript></span></span>
                                                            <span class="comment-lv-icon"><img src="http://theme4.eyoom.net/theme/eb4_basic/image/level_icon/eyoom/basic/1.gif" align="absmiddle" alt="레벨"></span>
                                                                                <span class="comment-time">
                                                <i class="far fa-clock color-grey"></i> 2018.08.12 18:32                                            </span>
                                    </div>
                <div class="comment-item-content">
                                                            <div class="comment-cont-wrap">
                                                                        
                                                <div class="comment-cont-txt">
                                                        오늘날의 iMac은 그런 비전을 바탕으로 만들어져왔죠.                                                    </div>
                    </div>
                                        <div class="margin-bottom-10"></div>
                                                                            </div>
                <div class="comment-btn-wrap">
                                        <div class="comment-btn-right">
                                                                                                                        <a href="http://theme4.eyoom.net/eyoom/core/board/goodcmt.php?&amp;c_id=10&amp;good=good" id="goodcmt_button_10" class="goodcmt_button comment-btn" title="추천"><i class="far fa-thumbs-up"></i> <strong class="board-cmt-act-good"><span class="color-light-grey">0</span></strong></a>
                                                                        <a href="http://theme4.eyoom.net/eyoom/core/board/goodcmt.php?&amp;c_id=10&amp;good=nogood" id="nogoodcmt_button_10" class="nogoodcmt_button comment-btn" title="비추천"><i class="far fa-thumbs-down"></i> <strong class="board-cmt-act-nogood"><span class="color-light-grey">0</span></strong></a>
                                            </div>
                                    </div>
                <div class="clearfix"></div>

                <span id="edit_10"></span>                <span id="reply_10"></span>
                <input type="hidden" value="" id="secret_comment_10">
                <input type="hidden" value="" id="anonymous_id_10">
                <input type="hidden" value="" id="cmt_attach_10">
                <textarea id="save_comment_10" style="display:none">오늘날의 iMac은 그런 비전을 바탕으로 만들어져왔죠.</textarea>
                <div class="clearfix"></div>
            </div>
        </div></div>  
        
        
        
        
        
        </div>
        
        
               
             </c:forEach>
              
            </div>
        </div>
                  
        	
        	
        <c:choose>
        
			<c:when test="${tourInfo.comments_num ==0}">
				 <div class="view-comment-no-item">
            	<span id="bo_vc_empty" class="no-comment"><i class="fas fa-exclamation-circle"></i> 등록된 댓글이 없습니다.</span>
        	</div>
			</c:when>
		</c:choose>
            
        	
		</div>
	</div>

	<div class="comment-area-divider"><span class="divider-circle"></span></div>
	<div id="map_canvas"></div>

<script type="text/javascript" src="/resources/tourist/js/venobox.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/magnific-popup.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/sweetalert.min.js"></script>

<script>
$(function() {
    });


var save_before = '';
var save_html = '';

function set_emoticon(emoticon) {
    var type='emoticon';
    set_textarea_contents(type,emoticon);
}

function set_map_address(map_type, map_addr1, map_addr2, map_name) {
    switch(map_type) {
        case '1':
                        set_map_google_address(map_type, map_addr1, map_addr2, map_name);
                        break;
        case '2':
                        break;
        case '3':
                        set_map_daum_address(map_type, map_addr1, map_addr2, map_name);
                        break;
    }
}

function set_map_google_address(map_type, map_addr1, map_addr2, map_name) {
    var map = new google.maps.Map(document.getElementById('map_canvas'), {
        zoom: 8,
        center: {lat: -34.397, lng: 150.644}
    });
    var geocoder = new google.maps.Geocoder();

    var address = map_addr1 + " " + map_addr2;
    geocoder.geocode({'address': map_addr1}, function(results, status) {
        if (status === 'OK') {
            map.setCenter(results[0].geometry.location);
            var latlng = map.getCenter();
            set_textarea_contents('map', map_type+'^|^'+address+'^|^'+map_name+'^|^'+latlng);
        } else {
            swal({
                title: "중요!",
                text: "잘못된 주소입니다.",
                confirmButtonColor: "#FF4848",
                type: "error",
                confirmButtonText: "확인"
            });
        }
    });
}


function set_map_daum_address(map_type, map_addr1, map_addr2, map_name) {
    var address = map_addr1 + " " + map_addr2;

    var mapContainer = document.getElementById('map_canvas'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 8 // 지도의 확대 레벨
        };

    // 지도를 생성합니다
    var map = new daum.maps.Map(mapContainer, mapOption);

    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new daum.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    geocoder.addressSearch(map_addr1, function(result, status) {
        // 정상적으로 검색이 완료됐으면
        if (status === daum.maps.services.Status.OK) {
            var latlng = new daum.maps.LatLng(result[0].y, result[0].x);
            set_textarea_contents('map', map_type+'^|^'+address+'^|^'+map_name+'^|^'+latlng);
        }
    });
}


function set_textarea_contents(type,value) {
    var type_text = '';
    var content = '';
    switch(type) {
        case 'emoticon': type_text = '이모티콘'; break;
        case 'video': type_text = '동영상'; break;
        case 'code': type_text = 'code'; break;
        case 'sound': type_text = 'soundcloud'; break;
        case 'map': type_text = '지도'; break;
    }
    if (type_text != 'code') {
        content = '{'+type_text+':'+value+'}';
    } else {
        content = '{code:'+value+'}\n\n{/code}\n'
    }
    var wr_html = $("#wr_content").val();
    var wr_emo = content;
    wr_html += wr_emo;
    $("#wr_content").val(wr_html);
}

function good_and_write() {
    var f = document.fviewcomment;
    if (fviewcomment_submit(f)) {
        f.is_good.value = 1;
        f.submit();
    } else {
        f.is_good.value = 0;
    }
}

function fviewcomment_submit(f) {
    var pattern = /(^\s*)|(\s*$)/g; // \s 공백 문자

    f.is_good.value = 0;

    var subject = "";
    var content = "";
    $.ajax({
        url: g5_bbs_url+"/ajax.filter.php",
        type: "POST",
        data: {
            "subject": "",
            "content": f.wr_content.value
        },
        dataType: "json",
        async: false,
        cache: false,
        success: function(data, textStatus) {
            subject = data.subject;
            content = data.content;
        }
    });

    if (content) {
        swal({
            html: true,
            title: "중요!",
            text: "내용에 금지단어 '<strong class='color-red'>"+content+"</strong>' 단어가 포함되어있습니다.",
            confirmButtonColor: "#FF4848",
            type: "error",
            confirmButtonText: "확인"
        });
        f.wr_content.focus();
        return false;
    }

    // 양쪽 공백 없애기
    var pattern = /(^\s*)|(\s*$)/g; // \s 공백 문자
    document.getElementById('wr_content').value = document.getElementById('wr_content').value.replace(pattern, "");
    if (char_min > 0 || char_max > 0) {
        check_byte('wr_content', 'char_count');
        var cnt = parseInt(document.getElementById('char_count').innerHTML);
        if (char_min > 0 && char_min > cnt) {
            swal({
                html: true,
                title: "중요!",
                text: "댓글은 <strong class='color-red'>"+char_min+"</strong> 글자 이상 쓰셔야 합니다.",
                confirmButtonColor: "#FF4848",
                type: "error",
                confirmButtonText: "확인"
            });
            return false;
        } else if (char_max > 0 && char_max < cnt) {
            swal({
                html: true,
                title: "중요!",
                text: "댓글은 <strong class='color-red'>"+char_max+"</strong> 글자 이하로 쓰셔야 합니다.",
                confirmButtonColor: "#FF4848",
                type: "error",
                confirmButtonText: "확인"
            });
            return false;
        }
    }
    else if (!document.getElementById('wr_content').value) {
        swal({
            title: "중요!",
            text: "댓글을 입력하여 주십시오.",
            confirmButtonColor: "#FF4848",
            type: "error",
            confirmButtonText: "확인"
        });
        return false;
    }

    if (typeof(f.wr_name) != 'undefined') {
        f.wr_name.value = f.wr_name.value.replace(pattern, "");
        if (f.wr_name.value == '') {
            swal({
                title: "중요!",
                text: "이름이 입력되지 않았습니다.",
                confirmButtonColor: "#FF4848",
                type: "error",
                confirmButtonText: "확인"
            });
            f.wr_name.focus();
            return false;
        }
    }

    if (typeof(f.wr_password) != 'undefined') {
        f.wr_password.value = f.wr_password.value.replace(pattern, "");
        if (f.wr_password.value == '') {
            swal({
                title: "중요!",
                text: "비밀번호가 입력되지 않았습니다.",
                confirmButtonColor: "#FF4848",
                type: "error",
                confirmButtonText: "확인"
            });
            f.wr_password.focus();
            return false;
        }
    }

    if (!chk_captcha()) return false;

    set_comment_token(f);

    document.getElementById("btn_submit").disabled = "disabled";

    return true;
}

function comment_box(comment_id, work) {
    var el_id;
    // 댓글 아이디가 넘어오면 답변, 수정
    if (comment_id) {
        if (work == 'c')
            el_id = 'reply_' + comment_id;
        else
            el_id = 'edit_' + comment_id;
    }
    else
        el_id = 'view-comment-write';

    if (save_before != el_id) {
        if (save_before) {
            document.getElementById(save_before).style.display = 'none';
            document.getElementById(save_before).innerHTML = '';
        }

        document.getElementById(el_id).style.display = '';
        document.getElementById(el_id).innerHTML = save_html;
        // 댓글 수정
        if (work == 'cu') {
            document.getElementById('wr_content').value = document.getElementById('save_comment_' + comment_id).value;
            if (typeof char_count != 'undefined')
                check_byte('wr_content', 'char_count');
            if (document.getElementById('secret_comment_'+comment_id).value)
                document.getElementById('wr_secret').checked = true;
            else
                document.getElementById('wr_secret').checked = false;
                        var cmt_attach = document.getElementById('cmt_attach_' + comment_id).value;
            if (cmt_attach) {
                var cmtfile = cmt_attach.split('||');
                var delchk_str = '';
                for (var i=0; i<cmtfile.length; i++) {
                    if (!cmtfile[i]) continue;
                    delchk_str = '<label class="checkbox"><input type="checkbox" name="del_cmtfile['+i+']" value="1"><i></i><span class="font-size-12">파일삭제 ('+cmtfile[i]+')</span></label>';
                    $("#del_cmtfile_"+i).html('');
                    $("#del_cmtfile_"+i).html(delchk_str);
                }
            }
        }

        document.getElementById('comment_id').value = comment_id;
        document.getElementById('w').value = work;

                $(".emoticon").venobox();
        
                //동영상 추가
        $("#btn_video").click(function(){
            var v_url = $("#video_url").val();
            if (!v_url) {
                swal({
                    title: "중요!",
                    text: "동영상 주소를 입력해 주세요.",
                    confirmButtonColor: "#FF4848",
                    type: "error",
                    confirmButtonText: "확인"
                });
            }
            else set_textarea_contents('video',v_url);
            $("#video_url").val('');
        });
        
        
        
                //지도 추가
        $("#btn_map").click(function(){
            var map_type = $("input[name='map_type']:checked").val();
            var map_addr1 = $("#map_addr1").val();
            var map_addr2 = $("#map_addr2").val();
            var map_name = $("#map_name").val();

            set_map_address(map_type, map_addr1, map_addr2, map_name);
        });
        
        if (save_before)
            $("#captcha_reload").trigger("click");

        save_before = el_id;
    }
}

//댓글 삭제
$(function() {
    $('.comment_delete').click(function(e){
        e.preventDefault();
        var linkURL = $(this).attr("href");
        comment_delete_link(linkURL);
    });
    function comment_delete_link(linkURL) {
        swal({
            title: "댓글삭제!",
            text: "정말로 이 댓글을 삭제하시겠습니까?",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#FDAB29",
            confirmButtonText: "삭제",
            cancelButtonText: "취소",
            closeOnConfirm: true,
            closeOnCancel: true
        },
        function(){
            window.location.href = linkURL;
        });
    }
});



$(function() {
    // 댓글 추천, 비추천
    $(".goodcmt_button, .nogoodcmt_button").click(function() {
        var $tx;
        if ($(this).attr('title') == "추천") {
            $tx = $(".board-cmt-act-good");
            $good = 'good';
        } else {
            $tx = $(".board-cmt-act-nogood");
            $good = 'nogood';
        }

        excute_goodcmt(this.href, $(this), $tx, $good);
        return false;
    });

    });

function excute_goodcmt(href, $el, $tx, $good) {
    $.post(
        href,
        { js: "on" },
        function(data) {
            if (data.error) {
                swal({
                    title: "알림",
                    text: data.error,
                    confirmButtonColor: "#FF4848",
                    type: "warning",
                    confirmButtonText: "확인"
                });
                return false;
            }

            if (data.count) {
                $el.find("strong").text(number_format(String(data.count)));
                if ($good == 'nogood') {
                    swal({
                        title: "알림",
                        text: "이 댓글을 비추천하셨습니다.",
                        confirmButtonColor: "#FF4848",
                        type: "warning",
                        confirmButtonText: "확인"
                    });
                } else if ($good == 'good') {
                    swal({
                        title: "알림",
                        text: "이 댓글을 추천하셨습니다.",
                        confirmButtonColor: "#FF4848",
                        type: "warning",
                        confirmButtonText: "확인"
                    });
                }
            }
        }, "json"
    );
}

$(document).ready(function() {
    $('.comment-image').magnificPopup({
        delegate: 'a',
        type: 'image',
        tLoading: '로딩중...',
        mainClass: 'mfp-img-mobile',
        image: {
            tError: '이미지를 불러올수 없습니다.'
        }
    });
});
</script>
<script type="text/javascript" src="/resources/tourist/js/md5.js"></script>
	<div class="board-view-bot"></div>
</article>


<script type="text/javascript" src="/resources/tourist/js/fakeLoader.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/viewimageresize.js"></script>
<script type="text/javascript" src="/resources/tourist/js/sweetalert.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/clipboard.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/magnific-popup.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/fotorama.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0d721fd94b9d5e3dbe29b561271f021f"></script>

<script>

var [lat, lng] = [<c:out value="${tourInfo.latitude}" />,<c:out value="${tourInfo.longitude}" />]
console.log(lat,lng)
var mapContainer = document.getElementById('dmap_view_canvas'),
    mapOption = {
        center: new daum.maps.LatLng(lat, lng),
        level: 6
    };

var map = new daum.maps.Map(mapContainer, mapOption);

var mapTypeControl = new daum.maps.MapTypeControl();
map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

var zoomControl = new daum.maps.ZoomControl();
map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

var marker = new daum.maps.Marker({
    map: map,
    position: new daum.maps.LatLng(lat, lng)
});

var content = "<div class=\"dmap-overlay-wrap\"><div class=\"dmap-overlay\"><div class=\"dmap-overlay-title\">${tourInfo.title}</div><div class=\"dmap-overlay-desc\"><p><strong>POST</strong> : ${tourInfo.postcode}</p><p><strong>연락처</strong> : ${tourInfo.phoneno}</p><p><strong>주소</strong> : ${tourInfo.roadaddress}</p><div class=\"dmap-overlay-close\" onclick=\"closeOverlay()\" title=\"닫기\"><i class=\"fas fa-times\"></i></div></div></div><div class=\"after\"></div></div>";

var overlay = new daum.maps.CustomOverlay({
    content: content,
    map: map,
    position: marker.getPosition()
});

daum.maps.event.addListener(marker, 'click', function() {
    overlay.setMap(map);
});

function closeOverlay() {
    overlay.setMap(null);
}

$(function(){
    $(".map-content-wrap").each(function(){
        var id      = $(this).find('div').attr('id');
        var type    = $(this).attr('data-map-type');
        var name    = $(this).attr('data-map-name');
        var x       = $(this).attr('data-map-x');
        var y       = $(this).attr('data-map-y');
        var address = $(this).attr('data-map-address');

        loading_daum_map(id, x, y, name, address);    });
});
</script>

<script>
$('#fakeloader').fakeLoader({
    timeToHide:3000,
    zIndex:"11",
    spinner:"spinner6",
    bgColor:"#fff",
});

$(window).load(function(){
    $('#fakeloader').fadeOut(300);
});

new Clipboard('.clipboard-btn');


function close_modal(wr_id) {
    window.parent.closeModal(wr_id);
}

function board_move(href) {
    window.open(href, "boardmove", "left=50, top=50, width=500, height=550, scrollbars=1");
}

$(function() {
    $('.board-view-file-conts img').parent().attr('class', 'view-img-popup').removeAttr('target');
    $('.view-img-popup').each(function() {
        var dataSource = $(this).attr('href');
        $(this).attr('data-source', dataSource);
    });
    $('.board-view-file-conts img').each(function() {
        var imgURL = $(this).attr('src');
        $(this).parent().attr('href', imgURL);
    });
    $('.view-img-popup').magnificPopup({
        type: 'image',
        closeOnContentClick: true,
        mainClass: 'mfp-img-mobile',
        image: {
            verticalFit: true,
            titleSrc: function(item) {
                return '&middot; <a class="image-source-link" href="'+item.el.attr('data-source')+'" target="_blank">원본 이미지 보기</a>';
            }
        }
    });

    if ($('.board-view-con img').parent().hasClass('view_image')) {
        $('.board-view-con img').parent().attr('class', 'view-image-popup').removeAttr('target');
        $('.view-image-popup').each(function() {
            var dataSource = $(this).attr('href');
            $(this).attr('data-source', dataSource);
        });
        $('.board-view-con img').each(function() {
            var imgURL = $(this).attr('src');
            $(this).parent().attr('href', imgURL);
        });
        $('.view-image-popup').magnificPopup({
            type: 'image',
            closeOnContentClick: true,
            mainClass: 'mfp-img-mobile',
            image: {
                verticalFit: true,
                titleSrc: function(item) {
                    return '&middot; <a class="image-source-link" href="'+item.el.attr('data-source')+'" target="_blank">원본 이미지 보기</a>';
                }
            }
        });
    } else {
        $('.board-view-con img').wrap('<a class="view-image-popup">');
        $('.board-view-con img').each(function() {
            var imgURL = $(this).attr('src');
            $(this).parent().attr('href', imgURL);
        });
        $('.view-image-popup').magnificPopup({
            type: 'image',
            closeOnContentClick: true,
            mainClass: 'mfp-img-mobile',
            image: {
                verticalFit: true
            }
        });
    }

    // 이미지 리사이즈
    $(".board-view-atc").viewimageresize();

    // 추천, 비추천
    $("#good_button, #nogood_button").click(function() {
        var $tx, $good;
        if (this.id == "good_button") {
            $tx = $(".board-view-act-good");
            $good = 'good';
        } else {
            $tx = $(".board-view-act-nogood");
            $good = 'nogood';
        }

        excute_good(this.href, $(this), $tx, $good);
        return false;
    });

    
    
    // 핀 설정
    $('.board-pin-btn').click(function() {
        var id = $(this).attr('id');
        switch(id) {
            case 'save_pin':
                var action = 'save';
                var re_id = 'cancel_pin';
                var re_class = 'board-view-btn board-pin-btn bg-default light';
                var re_text = '해제';

                pin_process(action, re_id, re_class, re_text);
                break;
            case 'cancel_pin':
                var action = 'cancel';
                var re_id = 'save_pin';
                var re_class = 'board-view-btn board-pin-btn bg-dark light';
                var re_text = '저장';

                pin_process(action, re_id, re_class, re_text);
                break;
        }

        function pin_process(action, re_id, re_class, re_text) {
            if (typeof(action) != 'undefined') {
                $.post(
                    'http://theme4.eyoom.net/eyoom/core/board/pin_process.php',
                    { bo_table: "dmap", wr_id: "9", action: action },
                    function(data) {
                        if (!data.error) {
                            $('.board-pin-btn').attr('id', re_id);
                            $('.board-pin-btn').attr('class', re_class);
                            $('#pin-text').text(re_text);

                            if (action == 'save') {
                                var str = '정상적으로 핀을 저장하였습니다.\n\n마이페이지 > 핀보드에서 보실 수 있습니다.';
                            } else if (action == 'cancel') {
                                var str = '정상적으로 핀을 해제하였습니다.';
                            }
                            swal({
                                title: "알림!",
                                text: str,
                                confirmButtonColor: "#FDAB29",
                                type: "warning",
                                confirmButtonText: "확인"
                            });
                        } else {
                            swal({
                                title: "알림!",
                                text: "핀 처리하지 못하였습니다.",
                                confirmButtonColor: "#FDAB29",
                                type: "warning",
                                confirmButtonText: "확인"
                            });
                        }
                    }, "json"
                );
            }
        }
    });
});

function excute_good(href, $el, $tx, $good) {
    $.post(
        href,
        { js: "on" },
        function(data) {
            if (data.error) {
                swal({
                    title: "알림",
                    text: data.error,
                    confirmButtonColor: "#FF4848",
                    confirmButtonText: "닫기"
                });
                return false;
            }

            if (data.count) {
                $el.find("strong").text(number_format(String(data.count)));
                if ($good == 'nogood') {
                    swal({
                        title: "비추천 완료",
                        text: "이 글을 비추천하였습니다.",
                        confirmButtonColor: "#FF4848",
                        confirmButtonText: "닫기"
                    });
                } else if ($good == 'good') {
                    swal({
                        title: "추천 완료",
                        text: "이 글을 추천하였습니다.",
                        confirmButtonColor: "#FF4848",
                        confirmButtonText: "닫기"
                    });
                }
            }
        }, "json"
    );
}

</script>
            
                                    


<script type="text/javascript" src="/resources/tourist/js/vendor_plugins.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/sly.min.js"></script>
<script>
$(function() {
    var $frame = $('#tab-page-category');
    var $wrap  = $frame.parent();
    $frame.sly({
        horizontal: 1,
        itemNav: 'centered',
        smart: 1,
        activateOn: 'click',
        mouseDragging: 1,
        touchDragging: 1,
        releaseSwing: 1,
        scrollBar: $wrap.find('.scrollbar'),
        scrollBy: 1,
        startAt: $frame.find('.active'),
        speed: 300,
        elasticBounds: 1,
        easing: 'easeOutExpo',
        dragHandle: 1,
        dynamicHandle: 1,
        clickBar: 1,
        prev: $wrap.find('.prev'),
        next: $wrap.find('.next')
    });
    var tabWidth = $('#tab-page-category').width();
    var categoryWidth = $('.page-category-list').width();
    if (tabWidth < categoryWidth) {
        $('.controls').show();
    }
});
</script>
<div class="clearfix"></div>
            </div><!--class row end  -->
        </div>
	</div>        
</div>
    <div class="back-to-top">
        <i class="fas fa-angle-up"></i>
    </div>

<div class="sidebar-left-mask sidebar-left-trigger" data-action="toggle" data-side="left"></div>
<div class="sidebar-right-mask sidebar-right-trigger" data-action="toggle" data-side="right"></div>



<div class="modal fade search-modal" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h5 class="modal-title"><i class="fas fa-search color-grey"></i> <strong>IT 검색</strong></h5>
            </div>
            <div class="modal-body">
                                <fieldset id="bo_sch" class="eyoom-form">
                    <form name="fsearch" method="get">
                    <input type="hidden" name="bo_table" value="magazine_it">
                    <input type="hidden" name="sca" value="">
                    <input type="hidden" name="sop" value="and">
                    <label for="sfl" class="sound_only">검색대상</label>
                    <section class="margin-top-10">
                        <label class="select">
                            <select name="sfl" id="sfl" class="form-control">
                                <option value="wr_subject">제목</option>
                                <option value="wr_content">내용</option>
                                <option value="wr_subject||wr_content">제목+내용</option>
                                <option value="mb_id,1">회원아이디</option>
                                <option value="mb_id,0">회원아이디(코)</option>
                                <option value="wr_name,1">글쓴이</option>
                                <option value="wr_name,0">글쓴이(코)</option>
                                                            </select>
                            <i></i>
                        </label>
                    </section>
                    <section>
                        <label for="stx" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
                        <div class="input input-button">
                            <input type="text" name="stx" value="" required id="stx">
                            <div class="button"><input type="submit" value="검색">검색</div>
                        </div>
                    </section>
                    </form>
                </fieldset>
                            </div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn-e btn-e-lg btn-e-dark" type="button"><i class="fas fa-times"></i> 닫기</button>
            </div>
        </div>
    </div>
</div>
<script>
			function itemuse_modal(href) {
				$('.itemuse-iframe-modal').modal('show').on('hidden.bs.modal',
						function() {
							$("#itemuse-iframe").attr("src", "");
							$('html').css({
								overflow : ''
							});
						});
				$('.itemuse-iframe-modal').modal('show').on(
						'shown.bs.modal',
						function() {
							$("#itemuse-iframe").attr("src", href);
							$('#itemuse-iframe').height(
									parseInt($(window).height() * 0.7));
							$('html').css({
								overflow : 'hidden'
							});
						});
				return false;
			}

			function itemqa_modal(href) {
				$('.itemqa-iframe-modal').modal('show').on('hidden.bs.modal',
						function() {
							$("#itemqa-iframe").attr("src", "");
							$('html').css({
								overflow : ''
							});
						});
				$('.itemqa-iframe-modal').modal('show').on(
						'shown.bs.modal',
						function() {
							$("#itemqa-iframe").attr("src", href);
							$('#itemqa-iframe').height(
									parseInt($(window).height() * 0.7));
							$('html').css({
								overflow : 'hidden'
							});
						});
				return false;
			}

			function coupon_modal(href) {
				$('.coupon-iframe-modal').modal('show').on('hidden.bs.modal',
						function() {
							$("#coupon-iframe").attr("src", "");
							$('html').css({
								overflow : ''
							});
						});
				$('.coupon-iframe-modal').modal('show').on(
						'shown.bs.modal',
						function() {
							$("#coupon-iframe").attr("src",
									"https://theme4.eyoom.net/shop/coupon.php");
							$('#coupon-iframe').height(
									parseInt($(window).height() * 0.7));
							$('html').css({
								overflow : 'hidden'
							});
						});
				return false;
			}

			// 모달창을 닫은 후 리로드
			function close_modal_and_reload() {
				close_modal();
				document.location.reload();
			}
			function close_modal() {
				$('.modal').modal('hide');
			}
		</script>

		<script>
			function poll_result(url) {
				$('.poll-result-iframe-modal').modal('show').on(
						'hidden.bs.modal', function() {
							$("#poll-result-iframe").attr("src", "");
							$('html').css({
								overflow : ''
							});
						});
				$('.poll-result-iframe-modal').modal('show').on(
						'shown.bs.modal',
						function() {
							$("#poll-result-iframe").attr("src", url);
							$('#poll-result-iframe').height(
									parseInt($(window).height() * 0.7));
							$('html').css({
								overflow : 'hidden'
							});
						});
				return false;
			}
		</script>



		<script>var App = function() {

		    function handleLayout() {
		        (function($,sr){
		            var debounce = function (func, threshold, execAsap) {
		                var timeout;

		                return function debounced() {
		                    var obj = this, args = arguments;
		                    function delayed () {
		                        if (!execAsap)
		                            func.apply(obj, args);
		                        timeout = null;
		                    }

		                    if (timeout)
		                        clearTimeout(timeout);
		                    else if (execAsap)
		                        func.apply(obj, args);

		                    timeout = setTimeout(delayed, threshold || 100);
		                };
		            };
		            jQuery.fn[sr] = function(fn){  return fn ? this.bind('resize', debounce(fn)) : this.trigger(sr); };
		        })(jQuery,'smartresize');

		        var $WRAPPER = $('.wrapper'),
		            $TOPBAR = $('.header-topbar'),
		            $TITLE = $('.header-title'),
		            $NAV = $('.header-nav');
		            $FOOTER = $('.footer');
		            $FOOTERTOP = $('.footer-top');
		            $SIDE = $('.basic-body-side');
		            $BODYMAIN = $('.basic-body-main');

		        $(document).ready(function() {
		            var setContentHeight = function() {
		                var wrapperHeight = $WRAPPER.outerHeight(),
		                    topbarHeight = $TOPBAR.height(),
		                    titleHeight = $TITLE.height(),
		                    navHeight = $NAV.height(),
		                    footerHeight = $FOOTER.height(),
		                    footertopHeight = $FOOTERTOP.height(),
		                    sideHeight = $SIDE.height();

		                contentHeight = $(window).height() - topbarHeight - titleHeight - navHeight - (footertopHeight + 32);
		                $BODYMAIN.css('min-height', contentHeight);

		                if (contentHeight < sideHeight) {
		                    $BODYMAIN.css('min-height', sideHeight + 50);
		                } else {
		                    $BODYMAIN.css('min-height', contentHeight);
		                }
		            };

		            $(window).smartresize(function() {
		                setContentHeight();
		            });
		            setContentHeight();
		        });
		    }

		    function handleViewport() {
		        $("input, textarea, select, button, i, div.note-editing-area, span.select2-selection, .calendar-time, ul.tag-editor, div.asSpinner-control").on({ 'touchstart' : function() {
		            zoomDisable();
		        }});
		        $("input, textarea, select, button, i, div.note-editing-area, span.select2-selection, .calendar-time, ul.tag-editor, div.asSpinner-control").on({ 'touchend' : function() {
		            setTimeout(zoomEnable, 500);
		        }});
		        function zoomDisable() {
		            $('head meta[name=viewport]').remove();
		            $('head').prepend('<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">');
		        }
		        function zoomEnable() {
		            $('head meta[name=viewport]').remove();
		            $('head').prepend('<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=1">');
		        }
		    }

		    function handleIEFixes() {
		        //fix html5 placeholder attribute for ie7 & ie8
		        if (jQuery.browser.msie && jQuery.browser.version.substr(0, 1) < 9) { // ie7&ie8
		            $('input[placeholder], textarea[placeholder]').each(function () {
		                var input = jQuery(this);
		                $(input).val(input.attr('placeholder'));
		                $(input).focus(function() {
		                    if (input.val() == input.attr('placeholder')) {
		                        input.val('');
		                    }
		                });
		                $(input).blur(function() {
		                    if (input.val() == '' || input.val() == input.attr('placeholder')) {
		                        input.val(input.attr('placeholder'));
		                    }
		                });
		            });
		        }
		    }

		    function handleBootstrap() {
		        /*Bootstrap Carousel*/
		        $('.carousel').carousel({
		            interval: 15000,
		            pause: 'hover'
		        });
		        /*Tooltips*/
		        $('.tooltips').tooltip();
		        $('.tooltips-show').tooltip('show');
		        $('.tooltips-hide').tooltip('hide');
		        $('.tooltips-toggle').tooltip('toggle');
		        $('.tooltips-destroy').tooltip('destroy');
		        /*Popovers*/
		        $('.popovers').popover();
		        $('.popovers-show').popover('show');
		        $('.popovers-hide').popover('hide');
		        $('.popovers-toggle').popover('toggle');
		        $('.popovers-destroy').popover('destroy');
		    }

		    function handleToggle() {
		        $('.list-toggle').on('click', function() {
		            $(this).toggleClass('active');
		        });
		    }

		    function handleSticky() {
		        var stickyAddClass = function() {
		            $("#header-fixed .header-sticky").addClass("header-fixed-trans");
		            $("#header-fixed .header-sticky-space").addClass("header-fixed-space-trans");
		        }
		        var stickyRemoveClass = function() {
		            $("#header-fixed .header-sticky").removeClass("header-fixed-trans");
		            $("#header-fixed .header-sticky-space").removeClass("header-fixed-space-trans");
		        }
		        $(window).scroll(function() {
		            if ($("#header-fixed").hasClass("fixed-main")) {
		                if ($(window).scrollTop()>100){ stickyAddClass(); } else { stickyRemoveClass(); }
		            } else {
		                if ($(window).scrollTop()>100){ stickyAddClass(); } else { stickyRemoveClass(); }
		            }
		        });
		    }

		    function handleSidebar() {
		        var sides = ["left", "top", "right", "bottom"];
		        for (var i = 0; i < sides.length; ++i) {
		            var cSide = sides[i];
		            $(".sidebar." + cSide).sidebar({side: cSide});
		        }
		        $(".sidebar-left-trigger[data-action]").on("click", function() {
		            var $this = $(this);
		            var action = $this.attr("data-action");
		            var side = $this.attr("data-side");
		            $(".sidebar." + side).trigger("sidebar:" + action);
		            $("html").toggleClass("overflow-hidden");
		            $(".sidebar-left-mask, .sidebar-left-content").toggleClass("active");
		            return false;
		        });
		        $(".sidebar-right-trigger[data-action]").on("click", function() {
		            var $this = $(this);
		            var action = $this.attr("data-action");
		            var side = $this.attr("data-side");
		            $(".sidebar." + side).trigger("sidebar:" + action);
		            $("html").toggleClass("overflow-hidden");
		            $(".sidebar-right-mask").toggleClass("active");
		            $("#admset-sidebar-iframe").attr("src", "");
		            return false;
		        });
		        setTimeout(function() {
		            $(".sidebar").show();
		        }, 500);
		        $(window).resize(function() {
		            $(".sidebar").show();
		        });
		    }

		    function handleBackToTop() {
		        $(document).ready(function() {
		            $(".back-to-top").addClass("hidden-top");
		                $(window).scroll(function() {
		                if ($(this).scrollTop() === 0) {
		                    $(".back-to-top").addClass("hidden-top")
		                } else {
		                    $(".back-to-top").removeClass("hidden-top")
		                }
		            });

		            $('.back-to-top').click(function() {
		                $('body,html').animate({scrollTop:0}, 500);
		                return false;
		            });

		            $('.quick-scroll-btn.top-btn').click(function() {
		                $('body,html').animate({scrollTop:0}, 500);
		                return false;
		            });

		            $('.quick-scroll-btn.down-btn').click(function() {
		                $('body,html').animate({scrollTop:$(document).height()}, 500);
		                return false;
		            });
		        });
		    }

		    return {
		        init: function() {
		            handleLayout();
		            handleViewport();
		            handleBootstrap();
		            handleIEFixes();
		            handleToggle();
		            handleSticky();
		            handleSidebar();
		            handleBackToTop();
		        }
		    };

		}();</script>
		<script>
			$(document).ready(function() {
				App.init();
			});
		</script>


		<script>
			$(function() {
				// 폰트 리사이즈 쿠키있으면 실행
				font_resize("container",
						get_cookie("ck_font_resize_rmv_class"),
						get_cookie("ck_font_resize_add_class"));
			});
			$(document).on('click','.alert',function(){

	            $(this).closest('.view-comment-item ').find('.sub_comments').fadeToggle(0);
	        })
		</script>

		<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
		<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->
</body>
</html>
<%@include file="../footer.jsp"%>
<!-- 사용스킨 : basic -->


<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->

</body>
</html>
<!-- 사용스킨 : basic -->
