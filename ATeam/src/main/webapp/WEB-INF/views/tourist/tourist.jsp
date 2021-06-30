<%@page import="com.jayway.jsonpath.JsonPath"%>
<%@page import="com.jayway.jsonpath.DocumentContext"%>
<%@include file="../header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%!public String getPhoto(String json) {
		if (json == null)
			return "";
		DocumentContext document = JsonPath.parse(json);
		String imgpath = document.read("$['photoid']['imgpath']", String.class);
		return imgpath;
	}%>
<%!public String getRegion(String json) {
	if (json == null)
		return "";
	DocumentContext document = JsonPath.parse(json);
	String str = document.read("$['label']", String.class);
	return str;
}%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">

<title> 관광지 </title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
<!-- <link type="text/css" rel="stylesheet"
	href="/resources/tourist/css/default.css"> -->

<link type="text/css" rel="stylesheet"
	href="/resources/tourist/css/eyoom-form.min.css">
<link type="text/css" rel="stylesheet"
	href="/resources/tourist/css/common.css">
<link type="text/css" rel="stylesheet"
	href="/resources/tourist/css/fontawesome-all.min.css">
 <link type="text/css" rel="stylesheet"
	href="/resources/tourist/css/style.css">
<link type="text/css" rel="stylesheet"
	href="/resources/tourist/css/tab_scroll_category.css" type="text/css"
	media="screen">
<link type="text/css" rel="stylesheet"
	href="/resources/tourist/css/sweetalert.min.css" type="text/css"
	media="screen">
<link type="text/css" rel="stylesheet"
	href="/resources/tourist/css/style.css">

<script type="text/javascript"
	src="/resources/tourist/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="/resources/tourist/js/jquery-migrate-1.4.1.min.js"></script>
<script type="text/javascript"
	src="/resources/tourist/js/jquery.menu.js"></script>
<script type="text/javascript" src="/resources/tourist/js/common.js"></script>
<script type="text/javascript" src="/resources/tourist/js/wrest.js"></script>
<script type="text/javascript"
	src="/resources/tourist/js/placeholders.min.js"></script>
<script type="text/javascript"
	src="/resources/tourist/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="/resources/tourist/js/jquery.bootstrap-hover-dropdown.min.js"></script>
<script type="text/javascript"
	src="/resources/tourist/js/jquery.sidebar.min.js"></script>
</head>

<body>

	<div class="wrapper">


		<div class="basic-body container page-padding ft-padding">
			<div class="basic-body-page">

				<div class="row1">


					<style>
.board-list .board-setup {
	position: relative;
	border: 1px solid #d5d5d5;
	height: 30px;
	margin-bottom: 20px
}

.board-list .board-setup .select {
	position: absolute;
	top: -1px;
	left: -1px;
	display: inline-block;
	width: 200px
}

.board-list .board-setup-btn-box {
	position: absolute;
	top: -1px;
	right: -1px;
	display: inline-block;
	width: 420px
}

.board-list .board-setup-btn {
	float: left;
	width: 25%;
	height: 30px;
	line-height: 30px;
	color: #fff;
	text-align: center;
	font-size: 12px
}

.board-list .board-setup-btn:nth-child(odd) {
	background: #59595B
}

.board-list .board-setup-btn:nth-child(even) {
	background: #676769
}

.board-list .board-setup-btn:hover {
	opacity: 0.8
}

.board-list .bo_current {
	color: #FF4848
}

.board-list .board-btn-adm li {
	float: left;
	margin-right: 5px
}

.board-list .board-list-footer {
	margin-top: 20px
}

.board-list .favorite-setup {
	display: inline-block;
	width: 100px;
	margin-left: 15px
}

.board-list .favorite-setup .toggle {
	padding-right: 37px
}

.board-list .multi-btn-wrap {
	position: relative;
	height: 40px;
	margin-bottom: 20px
}

.multi-type-btn-wrap {
	position: absolute;
	top: 0;
	right: 0;
	margin-bottom: 0;
	z-index: 1
}

.multi-type-btn-wrap li {
	position: relative;
	float: left
}

.multi-type-btn-wrap button {
	position: relative;
	margin: 0;
	padding: 0;
	width: 40px;
	height: 40px;
	border: 1px solid #d5d5d5;
	cursor: pointer;
	background: #fff;
	font-size: 15px;
	color: #454545
}

.multi-type-btn-wrap button:hover {
	background: #f5f5f5
}

.multi-type-btn-wrap button .multi-type-on+i {
	color: #E52700
}

.multi-type-btn-wrap button.multi-type-list-btn {
	border-right: 0
}

.multi-type-btn-wrap button.multi-type-webzine-btn {
	border-right: 0
}

.multi-type-btn-wrap button.multi-type-gallery-btn {
	border-right: 0
}

.board-multi .multi-item {
	position: relative;
	font-size: 12px;
	margin-bottom: 10px;
	border-top: 1px solid #e5e5e5;
	background: #fff;
	width: 100%
}

.board-multi .multi-item-in {
	position: relative;
	padding: 20px 0;
	min-height: 170px;
	box-sizing: border-box
}

.board-multi .multi-item-in .multi-img {
	position: absolute;
	top: 20px;
	left: 0;
	width: 200px;
	z-index: 1
}

.board-multi .multi-item-in .multi-desc {
	position: relative
}

.board-multi .multi-item-in .multi-noimg-desc {
	position: relative
}

.board-multi .multi-item-in .multi-img-box {
	position: relative;
	overflow: hidden;
	max-height: 140px
}

.board-multi .multi-item-in .multi-img-box-in {
	position: relative;
	overflow: hidden;
	width: 100%
}

.board-multi .multi-item-in .multi-img-box-in:after {
	content: "";
	text-align: center;
	position: absolute;
	display: block;
	left: 0;
	top: 0;
	opacity: 0;
	-moz-transition: all 0.2s ease 0s;
	-webkit-transition: all 0.2s ease 0s;
	-ms-transition: all 0.2s ease 0s;
	-o-transition: all 0.2s ease 0s;
	transition: all 0.2s ease 0s;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.3)
}

.board-multi .multi-item-in .multi-img-box-in:before {
	content: "";
	display: block;
	padding-top: 60%
}

.board-multi .multi-item-in .multi-img-box-in img {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0
}

.board-multi .multi-item-in .multi-img-box-in .movie-icon {
	display: inline-block;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 10px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	color: #fff;
	font-size: 30px;
	margin-top: -20px;
	margin-left: -20px;
	z-index: 1
}

.board-multi .multi-item:hover .multi-img-box-in:after {
	opacity: 1
}

.board-multi .multi-item-in .multi-desc-ymd {
	position: absolute;
	top: 6px;
	left: 215px;
	overflow: hidden;
	width: 80px;
	height: 80px;
	background: #fff;
	border: 1px solid #d5d5d5;
	text-align: center;
	box-sizing: border-box
}

.board-multi .multi-item-in .multi-desc-ym {
	font-size: 11px;
	color: #959595;
	margin: 12px 0 6px;
	line-height: 1
}

.board-multi .multi-item-in .multi-desc-d {
	font-size: 40px;
	font-weight: bold;
	color: #656565;
	margin: 0;
	line-height: 1
}

.board-multi .multi-item-in .multi-subj-cont {
	position: relative;
	overflow: hidden;
	margin-left: 310px
}

.board-multi .multi-item-in h4 {
	position: relative;
	overflow: hidden;
	font-size: 15px;
	color: #000;
	height: 37px;
	margin-top: 8px;
	margin-bottom: 5px
}

.board-multi .multi-item:hover .multi-item-in h4 {
	text-decoration: underline
}

.board-multi .multi-item-in .multi-checkbox {
	display: inline-block;
	position: absolute;
	top: -5px;
	right: -11px;
	z-index: 1
}

.board-multi .multi-item-in .multi-cont {
	position: relative;
/* 	overflow: hidden;  introduction 2번째 줄도 보이게*/
	height: 36px;
	font-weight: 300;
	color: #757575;
	margin-bottom: 22px
}

.board-multi .multi-item-in .multi-info {
	position: relative;
	border-top: 1px solid #f2f2f2;
	padding-top: 7px;
	margin-left: 215px
}

.board-multi .multi-item-in .multi-photo {
	display: inline-block;
	width: 26px;
	height: 26px;
	margin-right: 2px;
	border: 1px solid #e5e5e5;
	padding: 1px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-border-radius: 50% !important;
	-moz-border-radius: 50% !important;
	border-radius: 50% !important
}

.board-multi .multi-item-in .multi-photo img {
	width: 100%;
	height: auto;
	-webkit-border-radius: 50% !important;
	-moz-border-radius: 50% !important;
	border-radius: 50% !important
}

.board-multi .multi-item-in .multi-photo .multi-user-icon {
	width: 22px;
	height: 22px;
	font-size: 14px;
	line-height: 22px;
	text-align: center;
	background: #959595;
	color: #fff;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	display: inline-block;
	white-space: nowrap;
	vertical-align: baseline;
	-webkit-border-radius: 50% !important;
	-moz-border-radius: 50% !important;
	border-radius: 50% !important
}

.board-multi .multi-item-in .multi-photo .multi-user-icon i {
	margin-right: 0 !important
}

.board-multi .multi-item-in .multi-nick {
	margin-right: 5px
}

.board-multi .multi-item-in .multi-lv-icon {
	display: inline-block;
	margin-left: 2px
}

.board-multi .multi-item-in .multi-info>span {
	color: #959595;
	font-size: 11px
}

.board-multi .multi-item-in .multi-info>span i {
	margin-right: 5px
}

.board-multi .multi-item-in .multi-info>span>strong {
	font-weight: normal;
	margin-right: 10px
}

.board-multi .multi-item-in .multi-noimg-desc .multi-desc-ymd {
	left: 0
}

.board-multi .multi-item-in .multi-noimg-desc .multi-subj-cont {
	margin-left: 95px
}

.board-multi .multi-item-in .multi-noimg-desc .multi-info {
	margin-left: 0
}

.board-multi .multi-item:hover .multi-desc-ymd {
	background: #FF4948;
	border: 1px solid #FF4948
}

.board-multi .multi-item:hover .multi-desc-ym {
	color: #fff
}

.board-multi .multi-item:hover .multi-desc-d {
	color: #fff
}

.board-multi .multi-ratings .star-ratings-list {
	position: absolute;
	top: 10px;
	right: 0;
	width: 60px;
	height: 18px;
	background: #fff
}

.board-multi .multi-ratings .star-ratings-list li {
	padding: 0;
	float: left;
	margin-right: 0
}

.board-multi .multi-ratings .star-ratings-list li .rating {
	color: #a5a5a5;
	font-size: 10px;
	line-height: normal
}

.board-multi .multi-ratings .star-ratings-list li .rating-selected {
	color: #FF4848;
	font-size: 10px
}

.board-multi .multi-item-notice {
	position: relative;
	overflow: hidden;
	border: 1px solid #e5e5e5;
	background: #fff;
	padding: 8px 10px;
	margin-bottom: 30px;
	-webkit-border-radius: 2px !important;
	-moz-border-radius: 2px !important;
	border-radius: 2px !important
}

.board-multi .multi-type-list .multi-item-in {
	min-height: 80px
}

.board-multi .multi-type-list .multi-item-in .multi-img {
	display: none
}

.board-multi .multi-type-list .multi-item-in .multi-desc-ymd {
	left: 0
}

.board-multi .multi-type-list .multi-item-in .multi-subj-cont {
	margin-left: 95px
}

.board-multi .multi-type-list .multi-item-in .multi-subj-cont .multi-cont
	{
	display: none
}

.board-multi .multi-type-list .multi-item-in .multi-info {
	margin-left: 95px
}

.board-multi .multi-type-gallery {
	margin-left: -5px;
	margin-right: -5px
}

.board-multi .multi-type-gallery:after {
	content: "";
	display: block;
	clear: both
}

.board-multi .multi-type-gallery .multi-item {
	margin: 0;
	border: 0;
	padding: 5px;
	background: #fff;
	width: 50%;
	float: left;
	box-sizing: border-box
}

.board-multi .multi-type-gallery .multi-item-in {
	position: relative;
	border: 1px solid #e5e5e5;
	padding: 10px;
	min-height: inherit
}

.board-multi .multi-type-gallery .multi-item-in .multi-img {
	position: relative;
	top: inherit;
	left: inherit;
	width: inherit;
	margin-bottom: 15px
}

.board-multi .multi-type-gallery .multi-item-in .multi-img-box {
	max-height: inherit
}

.board-multi .multi-type-gallery .multi-item-in .multi-desc-ymd {
	left: 0
}

.board-multi .multi-type-gallery .multi-item-in .multi-subj-cont {
	margin-left: 95px
}

.board-multi .multi-type-gallery .multi-item-in .multi-info {
	margin-left: 0
}

.board-multi .multi-type-gallery .multi-item-in .multi-info-rating {
	min-height: 43px
}

.board-multi .multi-type-gallery .multi-ratings .star-ratings-list {
	top: 32px
}

.board-multi .multi-type-gallery .multi-noimg-desc .multi-ratings .star-ratings-list
	{
	top: 32px
}

.board-multi .multi-type-wide .multi-item {
	margin: 0;
	border: 0;
	padding: 10px 0;
	background: #fff;
	width: 100%;
	float: left;
	box-sizing: border-box
}

.board-multi .multi-type-wide .multi-item-in {
	position: relative;
	border: 1px solid #e5e5e5;
	padding: 15px;
	min-height: inherit
}

.board-multi .multi-type-wide .multi-item-in .multi-img {
	position: relative;
	top: inherit;
	left: inherit;
	width: inherit;
	margin-bottom: 15px
}

.board-multi .multi-type-wide .multi-item-in .multi-img-box {
	max-height: inherit
}

.board-multi .multi-type-wide .multi-item-in .multi-desc-ymd {
	left: 0
}

.board-multi .multi-type-wide .multi-item-in .multi-subj-cont {
	margin-left: 95px
}

.board-multi .multi-type-wide .multi-item-in .multi-info {
	margin-left: 0
}

.board-multi .multi-type-wide .multi-item-in .multi-info-rating {
	min-height: 43px
}

.board-multi .multi-type-wide .multi-ratings .star-ratings-list {
	top: 32px
}

.board-multi .multi-type-wide .multi-noimg-desc .multi-ratings .star-ratings-list
	{
	top: 32px
}

.board-multi .multi-item-notice .label {
	font-size: 11px;
	font-weight: normal;
	margin-bottom: 0
}

.board-list .view-infinite-more {
	margin-top: 30px;
	margin-bottom: 40px
}

.board-list .view-infinite-more .btn-e-xlg {
	position: relative;
	height: 40px;
	line-height: 40px;
	padding: 0 100px;
	font-size: 16px !important;
	border: 1px solid #b5b5b5;
	background: #fff;
	color: #757575
}

.board-list .view-infinite-more .btn-e-xlg i {
	position: absolute;
	top: 5px;
	right: 5px;
	font-size: 30px;
	color: #fff;
	transition: all 0.2s ease-in-out
}

.board-list .view-infinite-more .btn-e-xlg:hover {
	border: 1px solid #959595;
	background: #f5f5f5;
	color: #000
}

.board-list .view-infinite-more .btn-e-xlg:hover i {
	color: #b5b5b5
}

#infscr-loading {
	text-align: center;
	z-index: 100;
	position: absolute;
	left: 50%;
	bottom: 0;
	width: 200px;
	margin-left: -100px;
	padding: 8px 0;
	background: #000;
	opacity: 0.8;
	color: #fff
}

@media ( max-width : 650px) {
	.board-list .multi-btn-wrap {
		position: relative;
		height: 70px;
		margin-bottom: 20px
	}
	.multi-type-btn-wrap {
		top: 30px
	}
	.multi-type-btn-wrap button.multi-type-gallery-btn {
		border-right: 1px solid #d5d5d5
	}
	.multi-type-btn-wrap button.multi-type-wide-btn {
		display: none
	}
	.board-multi .multi-item-in .multi-img {
		top: 110px;
		left: 0;
		width: 80px
	}
	.board-multi .multi-item-in .multi-img-box {
		max-height: 60px
	}
	.board-multi .multi-item-in .multi-desc-ymd {
		left: 0
	}
	.board-multi .multi-item-in .multi-subj-cont {
		margin-left: 95px
	}
	.board-multi .multi-item-in .multi-info {
		margin-left: 95px
	}
	.board-multi .multi-ratings .star-ratings-list {
		top: 30px
	}
	.board-multi .multi-noimg-desc .multi-ratings .star-ratings-list {
		top: 10px
	}
	.board-multi .multi-type-list .multi-item-in h4 {
		font-size: 13px;
		line-height: 1.5;
		height: 36px;
		margin-bottom: 10px
	}
	.board-multi .multi-type-list .multi-noimg-desc .multi-ratings .star-ratings-list
		{
		top: 30px
	}
	.board-multi .multi-type-gallery .multi-item {
		padding: 10px 5px;
		width: 100%
	}
	.board-multi .multi-type-wide .multi-item-in {
		padding: 10px
	}
}

@media ( min-width : 768px) {
	.board-view-modal {
		width: 720px;
		margin: 10px auto
	}
	.board-view-modal .modal-header, .board-view-modal .modal-body,
		.board-view-modal .modal-footer {
		padding: 10px 20px
	}
}

@media ( min-width : 992px) {
	.board-view-modal {
		width: 940px
	}
}

@media ( min-width : 1200px) {
	.board-view-modal {
		width: 1140px
	}
}
</style>
<style>
.board-multi .multi-item-in{
    position: relative;
    padding: 10px 0;
    min-height: 144px;
    box-sizing: border-box;
}

.board-multi .multi-item {
    position: relative;
    font-size: 14px;
}
body {
    color: #353535;
/*     font-size: 13px; */
/*     line-height: 1.2; */
/*     font-family: "Roboto",Dotum,Arial,sans-serif; */}
.board-multi .multi-item-in h4 {
    position: relative;
    overflow: hidden;
    font-size: 18px;
    color: #000;
    height: 28px;
/*     margin-top: 12px; */
    margin-bottom: 5px;
}
/* header.css */
.fa {
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
p {
/*     font-size: 16px; */
/*     font-weight: 400; */
/*     line-height: 28px; */
    color: #7A838B;
    margin-bottom: 0px;
/*     font-family: "Rubik", sans-serif; */
}
b, sup, sub, u, del {
    color: #ff5e13;
}
span#nowTimes {

    font-family: 'Roboto', sans-serif;
    font-size: 16px;
    line-height: 24px;

}

/* .modal-header {
    min-height: 16.43px;
    padding: 60px 0px 0px 12px;
    border-bottom: 1px solid #e5e5e5;
} */
</style>
					<div id="fakeloader"></div>

					<div class="board-list">
<!-- 						<div class="board-info margin-bottom-20"></div> -->
							
							<div class="clearfix"></div>
							
							<script>"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"</script>
							<script>"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"</script>
						<script>"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"</script>
						

						<div class="multi-btn-wrap">
							<span class="pull-left"> <a class="btn-e btn-e-dark"
								type="button" data-toggle="modal" data-target=".search-modal">
									<i class="fas fa-search"></i>
							</a>
							</span>
							
							<ul class="list-unstyled multi-type-btn-wrap pull-right">
							
								<li><button type="button"
										class="multi-type-btn multi-type-list-btn" title="리스트뷰">
										<span class="sound_only">리스트뷰</span><i
											class="fas fa-align-justify" aria-hidden="true"></i>
									</button></li>
								<li><button type="button"
										class="multi-type-btn multi-type-webzine-btn" title="웹진뷰">
										<span class="sound_only">웹진뷰</span><i class="fas fa-th-list"
											aria-hidden="true"></i>
									</button></li>
								<li><button type="button"
										class="multi-type-btn multi-type-gallery-btn" title="갤러리뷰">
										<span class="sound_only">갤러리뷰</span><i class="fas fa-th-large"
											aria-hidden="true"></i>
									</button></li>
								<li><button type="button"
										class="multi-type-btn multi-type-wide-btn" title="와이드뷰">
										<span class="sound_only">와이드뷰</span><i
											class="fas fa-square-full" aria-hidden="true"></i>
									</button></li>
								<div class="clearfix"></div>
							</ul>
							<script>var multi_bo_table = "magazine_it";

							$.fn.listType = function(type) {
								var $el = this.find(".multi-item");
								var count = $el.size();
								if (count < 1)
									return;

								var cl = this.attr("class");
								if (cl && !this.data("class")) {
									this.data("class", cl);
								}

								$("button.multi-type-btn span").removeClass(
										"multi-type-on").html("");

								if (type == "webzine") {
									this.removeClass("multi-type-webzine");
									if (this.data("class")) {
										this.attr("class", this.data("class"));
									}

									$("button.multi-type-webzine-btn span").addClass(
											"multi-type-on").html(
											"<b class=\"sound_only\"> 선택됨</b>");
								} else if (type == "gallery") {
									if (this.data("class")) {
										this.removeAttr("class");
									}
									this.addClass("multi-type-gallery");

									$("button.multi-type-gallery-btn span").addClass(
											"multi-type-on").html(
											"<b class=\"sound_only\"> 선택됨</b>");
								} else if (type == "wide") {
									if (this.data("class")) {
										this.removeAttr("class");
									}
									this.addClass("multi-type-wide");

									$("button.multi-type-wide-btn span").addClass(
											"multi-type-on").html(
											"<b class=\"sound_only\"> 선택됨</b>");
								} else if (type == "list") {
									if (this.data("class")) {
										this.removeAttr("class");
									}
									this.addClass("multi-type-list");

									$("button.multi-type-list-btn span").addClass(
											"multi-type-on").html(
											"<b class=\"sound_only\"> 선택됨</b>");
								}

								set_cookie("ck_itemlist" + multi_bo_table + "_type",
										type, 1, g5_cookie_domain);
							}

							$(function() {
								if (itemlist_type = get_cookie("ck_itemlist"
										+ multi_bo_table + "_type")) {
									$("#multi_item_type").listType(itemlist_type);
								}

								$("button.multi-type-btn").on(
										"click",
										function() {
											if ($(this).hasClass(
													"multi-type-webzine-btn")) {
												$("#multi_item_type").listType(
														"webzine");
											} else if ($(this).hasClass(
													"multi-type-gallery-btn")) {
												$("#multi_item_type").listType(
														"gallery");
											} else if ($(this).hasClass(
													"multi-type-wide-btn")) {
												$("#multi_item_type").listType("wide");
											} else if ($(this).hasClass(
													"multi-type-list-btn")) {
												$("#multi_item_type").listType("list");
											}
										});
							});</script>
							<div class="pull-left margin-top-5 font-size-12 color-grey">
								<u>전체 ${pageMaker.total} 건 - ${pageMaker.cri.pageNum} 페이지</u>
							</div>
							<div class="clearfix"></div>
						</div>
						
						<div class="board-multi">
							<div id="multi_item_type" class="multi-type-webzine">
								<c:set var="uri"><%=request.getAttribute("javax.servlet.forward.request_uri")%></c:set>
								<!-- sequnce no -->
								<c:set var="pnum" value="${pageMaker.cri.pageNum}" />
								<c:set var="pnum" value="${pnum<1? 1 :pnum}" />
								<c:set var="amount" value="${pageMaker.cri.amount}" />
								<c:set var="seq_no" value="${(pnum-1)*amount}" />
								
								<!-- FOR Start -->
								<c:forEach items="${tlist}" var="place">
								<c:set var="seq_no" value="${seq_no+1}" />

									<div class="multi-item">
										<div class="multi-item-in">
											<div class="multi-img">
												<a href="${uri}/${place.contentsid}">
													<!-- 첫번째 사진 연결 -->
													<div class="multi-img-box">
														<div class="multi-img-box-in">
															<!--                                 	getPhoto(place.photo) -->
															<c:set var="photo" value="${place.photo}" />
															<img class="img-responsive"
																src="<%=getPhoto((String) (pageContext.getAttribute("photo")))%> "
																alt="">
															<!-- 첫번째 사진 -->
														</div>
													</div>
												</a>
											</div>
											<c:set var="region1" value="${place.region1}" />
											<c:set var="region2" value="${place.region2}" />
											<div class="multi-desc">
												<div class="multi-desc-ymd">
								<%-- 	<%=getRegion((String) (pageContext.getAttribute("region1")))%>	--%>		
								<style>
								.board-multi .multi-item-in .multi-desc-ym {
										    font-size: 16px;
										    color: #959595;
										    margin: 12px 0 0px;
										    line-height: 1;
										}
								</style>		
													<div class="multi-desc-ym">
																${seq_no}
													</div>
													<br>
													<div class="multi-desc-md">
														<%=getRegion((String) (pageContext.getAttribute("region2")))%>
													</div>
												</div>
												<div class="multi-subj-cont">
													<h4>
														<a href="${uri}/${place.contentsid}">
															<!-- 첫번째 글 연결 --> <strong>${place.title}</strong>
														</a><a href="" style='float:right'>
														<i class="fas fa-star" style="color:#ffd700"></i>
														<i class="far fa-star" style="color:gray"></i></a>
													</h4>
													
													<p class="multi-cont">${place.introduction}</p>
												</div>
												<div class="multi-info multi-info-rating">
													<span class="multi-photo"> <img class="user-photo"
														src="/resources/tourist/image/admin.png"
														alt="회원사진">
													</span> <span class="multi-nick"> <span class="sv_wrap">
															<a
															href="http://theme4.eyoom.net/bbs/profile.php?mb_id=admin"
															data-toggle="dropdown" title="최고관리자 자기소개" target="_blank"
															rel="nofollow" onclick="return false;"> 최고관리자</a> <!-- <ul class="sv dropdown-menu" role="menu">
								<li><a href="http://theme4.eyoom.net/?admin"><strong>최고관리자</strong>님의 홈</a></li>
								<li><a href="http://theme4.eyoom.net/bbs/new.php?mb_id=admin">전체게시물</a></li>
								<li><a href="http://theme4.eyoom.net/magazine_it?sca=&amp;sfl=mb_id,1&amp;stx=admin">아이디로 검색</a></li>
								</ul>
								
								<noscript class="sv_nojs"><ul class="sv dropdown-menu" role="menu">
								<li><a href="http://theme4.eyoom.net/?admin"><strong>최고관리자</strong>님의 홈</a></li>
								<li><a href="http://theme4.eyoom.net/bbs/new.php?mb_id=admin">전체게시물</a></li>
								<li><a href="http://theme4.eyoom.net/magazine_it?sca=&amp;sfl=mb_id,1&amp;stx=admin">아이디로 검색</a></li>
								</ul> 
								</noscript>-->
													</span>
													</span> 
<!-- 													<span class="multi-lv-icon"> <img -->
<!-- 														src="http://theme4.eyoom.net/theme/eb4_basic/image/level_icon/eyoom/basic/admin.gif" -->
<!-- 														alt="레벨"> -->
<!-- 													</span> -->
													<!--레벨 아이콘-->
													<span> <i class="far fa-clock"></i> <!-- 								<strong class="color-black">17시 31분</strong> -->
													</span> <span> <i class="fas fa-eye"></i> <strong
														class="color-black">${place.views }</strong>
													</span> <span> <i class="far fa-thumbs-up"></i> <strong
														class="color-green">좋아요 junction</strong>
													</span>
													<i class="fas fa-tags" style="color:gray"></i>
													<span>${fn:length(place.tag.split(","))}.</span>
													<span>${fn:substring(place.tag,0,45)}${ place.tag.length() > 45 ? "...":""}</span>
													<div class="multi-ratings">
														<ul class="list-unstyled star-ratings-list">
															<li><i class="rating far fa-star"></i></li>
															<li><i class="rating far fa-star"></i></li>
															<li><i class="rating far fa-star"></i></li>
															<li><i class="rating far fa-star"></i></li>
															<li><i class="rating far fa-star"></i></li>
														</ul>
														
													</div>
												</div>
											</div>
										</div>
									</div>

								</c:forEach>

							</div>
						</div>
						<div class="board-list-footer">
							<div class="pull-left">
								<span class="pull-left"> <a class="btn-e btn-e-dark"
									type="button" data-toggle="modal" data-target=".search-modal"><i
										class="fas fa-search"></i></a>
								</span>
							</div>
							<div class="pull-right"></div>
							<div class="clearfix"></div>
						</div>
					</div>

				</div>
				<iframe name="photoframe" id="photoframe" style="display: none;"></iframe>



				<div class="board-pagination">

					<style>
.eb-pagination-wrap {
	position: relative;
	text-align: center;
	padding: 7px;
	margin-top: 30px
}

.eb-pagination {
	position: relative;
	list-style: none;
	display: inline-block;
	padding: 0;
	margin: 0
}

.eb-pagination li {
	display: inline
}

.eb-pagination a {
    display: inline-block;
    font-size: 18px;
    text-decoration: none;
    min-width: 28px;
    height: 30px;
    padding: 0 8px;
    color: #fff;
    border: 1px solid transparent;
    line-height: 24px;
    text-align: center;
    color: #757575;
    position: relative;
    z-index: 1;
}

.eb-pagination a:active {
	outline: none
}

.eb-pagination a:hover {
	color: #000;
	background: #e5e5e5
}

.eb-pagination a.active {
	cursor: default;
	background: #4B4B4D;
	color: #fff
}

.eb-pagination a.active:hover {
	color: #fff;
	background: #4B4B4D
}

.eb-pagination a.next, .eb-pagination a.prev {
	color: #959595
}

.eb-pagination a.next:hover, .eb-pagination a.prev:hover {
	color: #000
}
</style>

					<div class="eb-pagination-wrap">
						<ul class="eb-pagination">
							<c:if test="${pageMaker.prev }">
								<li><a href="1"><i class="fas fa-angle-double-left"></i></a></li>
								<!--  -->
								<li><a href="${pageMaker.startPage - 1 }" class="prev"><i
										class="fas fa-angle-left"></i></a></li>
								<!-- 이전페이지 -->
							</c:if>
							<c:forEach var="num" begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }">
								<li><a href="${num}"
									class="${pageMaker.cri.pageNum == num ? 'active':''  }">
										${num}<span class="sound_only">페이지</span>
								</a></li>
							</c:forEach>
							<c:if test="${pageMaker.next }">
								<li><a href="${pageMaker.endPage + 1 }" class="next"><i
										class="fas fa-angle-right"></i></a></li>
								<!-- 다음페이지 -->
								<li><a href="${pageMaker.lastPage}"><i
										class="fas fa-angle-double-right"></i></a></li>
								<!-- 끝페이지 -->
							</c:if>
						</ul>
					</div>
				</div>

				<form id="actionForm" action="/tourist" method="get"></form>
				<script type="text/javascript">
					$(".eb-pagination li  a")
							.on(
									"click",
									function(e) {
										e.preventDefault();
										var numh = $(this).attr("href");
										var amount = <c:out value="${pageMaker.cri.amount}" />
										console.log(numh);
										var form = $("#actionForm");
										form
												.append("<input name='pageNum' value='"+numh+"'>");
										form
												.append("<input name='amount' value='"+ amount +"'>");

										form.submit();

									})
				</script>
				<script>!function(i){function s(){var s=i(window).width(),c=i(window).height(),d=i(".fl").outerWidth(),e=i(".fl").outerHeight();i(".fl").css({position:"absolute",left:s/2-d/2,top:c/2-e/2})}i.fn.fakeLoader=function(c){var d=i.extend({timeToHide:1200,pos:"fixed",top:"0px",left:"0px",width:"100%",height:"100%",zIndex:"999",bgColor:"#2ecc71",spinner:"spinner7",imagePath:""},c),e='<div class="fl spinner1"><div class="double-bounce1"></div><div class="double-bounce2"></div></div>',l='<div class="fl spinner2"><div class="spinner-container container1"><div class="circle1"></div><div class="circle2"></div><div class="circle3"></div><div class="circle4"></div></div><div class="spinner-container container2"><div class="circle1"></div><div class="circle2"></div><div class="circle3"></div><div class="circle4"></div></div><div class="spinner-container container3"><div class="circle1"></div><div class="circle2"></div><div class="circle3"></div><div class="circle4"></div></div></div>',n='<div class="fl spinner3"><div class="dot1"></div><div class="dot2"></div></div>',v='<div class="fl spinner4"></div>',a='<div class="fl spinner5"><div class="cube1"></div><div class="cube2"></div></div>',r='<div class="fl spinner6"><div class="rect1"></div><div class="rect2"></div><div class="rect3"></div><div class="rect4"></div><div class="rect5"></div></div>',t='<div class="fl spinner7"><div class="circ1"></div><div class="circ2"></div><div class="circ3"></div><div class="circ4"></div></div>',o=i(this),h={position:d.pos,width:d.width,height:d.height,top:d.top,left:d.left};return o.css(h),o.each(function(){var i=d.spinner;switch(i){case"spinner1":o.html(e);break;case"spinner2":o.html(l);break;case"spinner3":o.html(n);break;case"spinner4":o.html(v);break;case"spinner5":o.html(a);break;case"spinner6":o.html(r);break;case"spinner7":o.html(t);break;default:o.html(e)}""!=d.imagePath&&o.html('<div class="fl"><img src="'+d.imagePath+'"></div>'),s()}),setTimeout(function(){i(o).fadeOut()},d.timeToHide),this.css({backgroundColor:d.bgColor,zIndex:d.zIndex})},i(window).load(function(){s(),i(window).resize(function(){s()})})}(jQuery);</script>
				<script>!function(e,t,n){"use strict";!function o(e,t,n){function a(s,l){if(!t[s]){if(!e[s]){var i="function"==typeof require&&require;if(!l&&i)return i(s,!0);if(r)return r(s,!0);var u=new Error("Cannot find module '"+s+"'");throw u.code="MODULE_NOT_FOUND",u}var c=t[s]={exports:{}};e[s][0].call(c.exports,function(t){var n=e[s][1][t];return a(n?n:t)},c,c.exports,o,e,t,n)}return t[s].exports}for(var r="function"==typeof require&&require,s=0;s<n.length;s++)a(n[s]);return a}({1:[function(o,a,r){var s=function(e){return e&&e.__esModule?e:{"default":e}};Object.defineProperty(r,"__esModule",{value:!0});var l,i,u,c,d=o("./modules/handle-dom"),f=o("./modules/utils"),p=o("./modules/handle-swal-dom"),m=o("./modules/handle-click"),v=o("./modules/handle-key"),y=s(v),h=o("./modules/default-params"),b=s(h),g=o("./modules/set-params"),w=s(g);r["default"]=u=c=function(){function o(e){var t=a;return t[e]===n?b["default"][e]:t[e]}var a=arguments[0];if(d.addClass(t.body,"stop-scrolling"),p.resetInput(),a===n)return f.logStr("SweetAlert expects at least 1 attribute!"),!1;var r=f.extend({},b["default"]);switch(typeof a){case"string":r.title=a,r.text=arguments[1]||"",r.type=arguments[2]||"";break;case"object":if(a.title===n)return f.logStr('Missing "title" argument!'),!1;r.title=a.title;for(var s in b["default"])r[s]=o(s);r.confirmButtonText=r.showCancelButton?"Confirm":b["default"].confirmButtonText,r.confirmButtonText=o("confirmButtonText"),r.doneFunction=arguments[1]||null;break;default:return f.logStr('Unexpected type of argument! Expected "string" or "object", got '+typeof a),!1}w["default"](r),p.fixVerticalPosition(),p.openModal(arguments[1]);for(var u=p.getModal(),v=u.querySelectorAll("button"),h=["onclick","onmouseover","onmouseout","onmousedown","onmouseup","onfocus"],g=function(e){return m.handleButton(e,r,u)},C=0;C<v.length;C++)for(var S=0;S<h.length;S++){var x=h[S];v[C][x]=g}p.getOverlay().onclick=g,l=e.onkeydown;var k=function(e){return y["default"](e,r,u)};e.onkeydown=k,e.onfocus=function(){setTimeout(function(){i!==n&&(i.focus(),i=n)},0)},c.enableButtons()},u.setDefaults=c.setDefaults=function(e){if(!e)throw new Error("userParams is required");if("object"!=typeof e)throw new Error("userParams has to be a object");f.extend(b["default"],e)},u.close=c.close=function(){var o=p.getModal();d.fadeOut(p.getOverlay(),5),d.fadeOut(o,5),d.removeClass(o,"showSweetAlert"),d.addClass(o,"hideSweetAlert"),d.removeClass(o,"visible");var a=o.querySelector(".sa-icon.sa-success");d.removeClass(a,"animate"),d.removeClass(a.querySelector(".sa-tip"),"animateSuccessTip"),d.removeClass(a.querySelector(".sa-long"),"animateSuccessLong");var r=o.querySelector(".sa-icon.sa-error");d.removeClass(r,"animateErrorIcon"),d.removeClass(r.querySelector(".sa-x-mark"),"animateXMark");var s=o.querySelector(".sa-icon.sa-warning");return d.removeClass(s,"pulseWarning"),d.removeClass(s.querySelector(".sa-body"),"pulseWarningIns"),d.removeClass(s.querySelector(".sa-dot"),"pulseWarningIns"),setTimeout(function(){var e=o.getAttribute("data-custom-class");d.removeClass(o,e)},300),d.removeClass(t.body,"stop-scrolling"),e.onkeydown=l,e.previousActiveElement&&e.previousActiveElement.focus(),i=n,clearTimeout(o.timeout),!0},u.showInputError=c.showInputError=function(e){var t=p.getModal(),n=t.querySelector(".sa-input-error");d.addClass(n,"show");var o=t.querySelector(".sa-error-container");d.addClass(o,"show"),o.querySelector("p").innerHTML=e,setTimeout(function(){u.enableButtons()},1),t.querySelector("input").focus()},u.resetInputError=c.resetInputError=function(e){if(e&&13===e.keyCode)return!1;var t=p.getModal(),n=t.querySelector(".sa-input-error");d.removeClass(n,"show");var o=t.querySelector(".sa-error-container");d.removeClass(o,"show")},u.disableButtons=c.disableButtons=function(){var e=p.getModal(),t=e.querySelector("button.confirm"),n=e.querySelector("button.cancel");t.disabled=!0,n.disabled=!0},u.enableButtons=c.enableButtons=function(){var e=p.getModal(),t=e.querySelector("button.confirm"),n=e.querySelector("button.cancel");t.disabled=!1,n.disabled=!1},"undefined"!=typeof e?e.sweetAlert=e.swal=u:f.logStr("SweetAlert is a frontend module!"),a.exports=r["default"]},{"./modules/default-params":2,"./modules/handle-click":3,"./modules/handle-dom":4,"./modules/handle-key":5,"./modules/handle-swal-dom":6,"./modules/set-params":8,"./modules/utils":9}],2:[function(e,t,n){Object.defineProperty(n,"__esModule",{value:!0});var o={title:"",text:"",type:null,allowOutsideClick:!1,showConfirmButton:!0,showCancelButton:!1,closeOnConfirm:!0,closeOnCancel:!0,confirmButtonText:"OK",confirmButtonColor:"#8CD4F5",cancelButtonText:"Cancel",imageUrl:null,imageSize:null,timer:null,customClass:"",html:!1,animation:!0,allowEscapeKey:!0,inputType:"text",inputPlaceholder:"",inputValue:"",showLoaderOnConfirm:!1};n["default"]=o,t.exports=n["default"]},{}],3:[function(t,n,o){Object.defineProperty(o,"__esModule",{value:!0});var a=t("./utils"),r=(t("./handle-swal-dom"),t("./handle-dom")),s=function(t,n,o){function s(e){m&&n.confirmButtonColor&&(p.style.backgroundColor=e)}var u,c,d,f=t||e.event,p=f.target||f.srcElement,m=-1!==p.className.indexOf("confirm"),v=-1!==p.className.indexOf("sweet-overlay"),y=r.hasClass(o,"visible"),h=n.doneFunction&&"true"===o.getAttribute("data-has-done-function");switch(m&&n.confirmButtonColor&&(u=n.confirmButtonColor,c=a.colorLuminance(u,-.04),d=a.colorLuminance(u,-.14)),f.type){case"mouseover":s(c);break;case"mouseout":s(u);break;case"mousedown":s(d);break;case"mouseup":s(c);break;case"focus":var b=o.querySelector("button.confirm"),g=o.querySelector("button.cancel");m?g.style.boxShadow="none":b.style.boxShadow="none";break;case"click":var w=o===p,C=r.isDescendant(o,p);if(!w&&!C&&y&&!n.allowOutsideClick)break;m&&h&&y?l(o,n):h&&y||v?i(o,n):r.isDescendant(o,p)&&"BUTTON"===p.tagName&&sweetAlert.close()}},l=function(e,t){var n=!0;r.hasClass(e,"show-input")&&(n=e.querySelector("input").value,n||(n="")),t.doneFunction(n),t.closeOnConfirm&&sweetAlert.close(),t.showLoaderOnConfirm&&sweetAlert.disableButtons()},i=function(e,t){var n=String(t.doneFunction).replace(/\s/g,""),o="function("===n.substring(0,9)&&")"!==n.substring(9,10);o&&t.doneFunction(!1),t.closeOnCancel&&sweetAlert.close()};o["default"]={handleButton:s,handleConfirm:l,handleCancel:i},n.exports=o["default"]},{"./handle-dom":4,"./handle-swal-dom":6,"./utils":9}],4:[function(n,o,a){Object.defineProperty(a,"__esModule",{value:!0});var r=function(e,t){return new RegExp(" "+t+" ").test(" "+e.className+" ")},s=function(e,t){r(e,t)||(e.className+=" "+t)},l=function(e,t){var n=" "+e.className.replace(/[\t\r\n]/g," ")+" ";if(r(e,t)){for(;n.indexOf(" "+t+" ")>=0;)n=n.replace(" "+t+" "," ");e.className=n.replace(/^\s+|\s+$/g,"")}},i=function(e){var n=t.createElement("div");return n.appendChild(t.createTextNode(e)),n.innerHTML},u=function(e){e.style.opacity="",e.style.display="block"},c=function(e){if(e&&!e.length)return u(e);for(var t=0;t<e.length;++t)u(e[t])},d=function(e){e.style.opacity="",e.style.display="none"},f=function(e){if(e&&!e.length)return d(e);for(var t=0;t<e.length;++t)d(e[t])},p=function(e,t){for(var n=t.parentNode;null!==n;){if(n===e)return!0;n=n.parentNode}return!1},m=function(e){e.style.left="-9999px",e.style.display="block";var t,n=e.clientHeight;return t="undefined"!=typeof getComputedStyle?parseInt(getComputedStyle(e).getPropertyValue("padding-top"),10):parseInt(e.currentStyle.padding),e.style.left="",e.style.display="none","-"+parseInt((n+t)/2)+"px"},v=function(e,t){if(+e.style.opacity<1){t=t||16,e.style.opacity=0,e.style.display="block";var n=+new Date,o=function(e){function t(){return e.apply(this,arguments)}return t.toString=function(){return e.toString()},t}(function(){e.style.opacity=+e.style.opacity+(new Date-n)/100,n=+new Date,+e.style.opacity<1&&setTimeout(o,t)});o()}e.style.display="block"},y=function(e,t){t=t||16,e.style.opacity=1;var n=+new Date,o=function(e){function t(){return e.apply(this,arguments)}return t.toString=function(){return e.toString()},t}(function(){e.style.opacity=+e.style.opacity-(new Date-n)/100,n=+new Date,+e.style.opacity>0?setTimeout(o,t):e.style.display="none"});o()},h=function(n){if("function"==typeof MouseEvent){var o=new MouseEvent("click",{view:e,bubbles:!1,cancelable:!0});n.dispatchEvent(o)}else if(t.createEvent){var a=t.createEvent("MouseEvents");a.initEvent("click",!1,!1),n.dispatchEvent(a)}else t.createEventObject?n.fireEvent("onclick"):"function"==typeof n.onclick&&n.onclick()},b=function(t){"function"==typeof t.stopPropagation?(t.stopPropagation(),t.preventDefault()):e.event&&e.event.hasOwnProperty("cancelBubble")&&(e.event.cancelBubble=!0)};a.hasClass=r,a.addClass=s,a.removeClass=l,a.escapeHtml=i,a._show=u,a.show=c,a._hide=d,a.hide=f,a.isDescendant=p,a.getTopMargin=m,a.fadeIn=v,a.fadeOut=y,a.fireClick=h,a.stopEventPropagation=b},{}],5:[function(t,o,a){Object.defineProperty(a,"__esModule",{value:!0});var r=t("./handle-dom"),s=t("./handle-swal-dom"),l=function(t,o,a){var l=t||e.event,i=l.keyCode||l.which,u=a.querySelector("button.confirm"),c=a.querySelector("button.cancel"),d=a.querySelectorAll("button[tabindex]");if(-1!==[9,13,32,27].indexOf(i)){for(var f=l.target||l.srcElement,p=-1,m=0;m<d.length;m++)if(f===d[m]){p=m;break}9===i?(f=-1===p?u:p===d.length-1?d[0]:d[p+1],r.stopEventPropagation(l),f.focus(),o.confirmButtonColor&&s.setFocusStyle(f,o.confirmButtonColor)):13===i?("INPUT"===f.tagName&&(f=u,u.focus()),f=-1===p?u:n):27===i&&o.allowEscapeKey===!0?(f=c,r.fireClick(f,l)):f=n}};a["default"]=l,o.exports=a["default"]},{"./handle-dom":4,"./handle-swal-dom":6}],6:[function(n,o,a){var r=function(e){return e&&e.__esModule?e:{"default":e}};Object.defineProperty(a,"__esModule",{value:!0});var s=n("./utils"),l=n("./handle-dom"),i=n("./default-params"),u=r(i),c=n("./injected-html"),d=r(c),f=".sweet-alert",p=".sweet-overlay",m=function(){var e=t.createElement("div");for(e.innerHTML=d["default"];e.firstChild;)t.body.appendChild(e.firstChild)},v=function(e){function t(){return e.apply(this,arguments)}return t.toString=function(){return e.toString()},t}(function(){var e=t.querySelector(f);return e||(m(),e=v()),e}),y=function(){var e=v();return e?e.querySelector("input"):void 0},h=function(){return t.querySelector(p)},b=function(e,t){var n=s.hexToRgb(t);e.style.boxShadow="0 0 2px rgba("+n+", 0.8), inset 0 0 0 1px rgba(0, 0, 0, 0.05)"},g=function(n){var o=v();l.fadeIn(h(),10),l.show(o),l.addClass(o,"showSweetAlert"),l.removeClass(o,"hideSweetAlert"),e.previousActiveElement=t.activeElement;var a=o.querySelector("button.confirm");a.focus(),setTimeout(function(){l.addClass(o,"visible")},500);var r=o.getAttribute("data-timer");if("null"!==r&&""!==r){var s=n;o.timeout=setTimeout(function(){var e=(s||null)&&"true"===o.getAttribute("data-has-done-function");e?s(null):sweetAlert.close()},r)}},w=function(){var e=v(),t=y();l.removeClass(e,"show-input"),t.value=u["default"].inputValue,t.setAttribute("type",u["default"].inputType),t.setAttribute("placeholder",u["default"].inputPlaceholder),C()},C=function(e){if(e&&13===e.keyCode)return!1;var t=v(),n=t.querySelector(".sa-input-error");l.removeClass(n,"show");var o=t.querySelector(".sa-error-container");l.removeClass(o,"show")},S=function(){var e=v();e.style.marginTop=l.getTopMargin(v())};a.sweetAlertInitialize=m,a.getModal=v,a.getOverlay=h,a.getInput=y,a.setFocusStyle=b,a.openModal=g,a.resetInput=w,a.resetInputError=C,a.fixVerticalPosition=S},{"./default-params":2,"./handle-dom":4,"./injected-html":7,"./utils":9}],7:[function(e,t,n){Object.defineProperty(n,"__esModule",{value:!0});var o='<div class="sweet-overlay" tabIndex="-1"></div><div class="sweet-alert"><div class="sa-icon sa-error">\n      <span class="sa-x-mark">\n        <span class="sa-line sa-left"></span>\n        <span class="sa-line sa-right"></span>\n      </span>\n    </div><div class="sa-icon sa-warning">\n      <span class="sa-body"></span>\n      <span class="sa-dot"></span>\n    </div><div class="sa-icon sa-info"></div><div class="sa-icon sa-success">\n      <span class="sa-line sa-tip"></span>\n      <span class="sa-line sa-long"></span>\n\n      <div class="sa-placeholder"></div>\n      <div class="sa-fix"></div>\n    </div><div class="sa-icon sa-custom"></div><h2>Title</h2>\n    <p>Text</p>\n    <fieldset>\n      <input type="text" tabIndex="3" />\n      <div class="sa-input-error"></div>\n    </fieldset><div class="sa-error-container">\n      <div class="icon">!</div>\n      <p>Not valid!</p>\n    </div><div class="sa-button-container">\n      <button class="cancel" tabIndex="2">Cancel</button>\n      <div class="sa-confirm-button-container">\n        <button class="confirm" tabIndex="1">OK</button><div class="la-ball-fall">\n          <div></div>\n          <div></div>\n          <div></div>\n        </div>\n      </div>\n    </div></div>';n["default"]=o,t.exports=n["default"]},{}],8:[function(e,t,o){Object.defineProperty(o,"__esModule",{value:!0});var a=e("./utils"),r=e("./handle-swal-dom"),s=e("./handle-dom"),l=["error","warning","info","success","input","prompt"],i=function(e){var t=r.getModal(),o=t.querySelector("h2"),i=t.querySelector("p"),u=t.querySelector("button.cancel"),c=t.querySelector("button.confirm");if(o.innerHTML=e.html?e.title:s.escapeHtml(e.title).split("\n").join("<br>"),i.innerHTML=e.html?e.text:s.escapeHtml(e.text||"").split("\n").join("<br>"),e.text&&s.show(i),e.customClass)s.addClass(t,e.customClass),t.setAttribute("data-custom-class",e.customClass);else{var d=t.getAttribute("data-custom-class");s.removeClass(t,d),t.setAttribute("data-custom-class","")}if(s.hide(t.querySelectorAll(".sa-icon")),e.type&&!a.isIE8()){var f=function(){for(var o=!1,a=0;a<l.length;a++)if(e.type===l[a]){o=!0;break}if(!o)return logStr("Unknown alert type: "+e.type),{v:!1};var i=["success","error","warning","info"],u=n;-1!==i.indexOf(e.type)&&(u=t.querySelector(".sa-icon.sa-"+e.type),s.show(u));var c=r.getInput();switch(e.type){case"success":s.addClass(u,"animate"),s.addClass(u.querySelector(".sa-tip"),"animateSuccessTip"),s.addClass(u.querySelector(".sa-long"),"animateSuccessLong");break;case"error":s.addClass(u,"animateErrorIcon"),s.addClass(u.querySelector(".sa-x-mark"),"animateXMark");break;case"warning":s.addClass(u,"pulseWarning"),s.addClass(u.querySelector(".sa-body"),"pulseWarningIns"),s.addClass(u.querySelector(".sa-dot"),"pulseWarningIns");break;case"input":case"prompt":c.setAttribute("type",e.inputType),c.value=e.inputValue,c.setAttribute("placeholder",e.inputPlaceholder),s.addClass(t,"show-input"),setTimeout(function(){c.focus(),c.addEventListener("keyup",swal.resetInputError)},400)}}();if("object"==typeof f)return f.v}if(e.imageUrl){var p=t.querySelector(".sa-icon.sa-custom");p.style.backgroundImage="url("+e.imageUrl+")",s.show(p);var m=80,v=80;if(e.imageSize){var y=e.imageSize.toString().split("x"),h=y[0],b=y[1];h&&b?(m=h,v=b):logStr("Parameter imageSize expects value with format WIDTHxHEIGHT, got "+e.imageSize)}p.setAttribute("style",p.getAttribute("style")+"width:"+m+"px; height:"+v+"px")}t.setAttribute("data-has-cancel-button",e.showCancelButton),e.showCancelButton?u.style.display="inline-block":s.hide(u),t.setAttribute("data-has-confirm-button",e.showConfirmButton),e.showConfirmButton?c.style.display="inline-block":s.hide(c),e.cancelButtonText&&(u.innerHTML=s.escapeHtml(e.cancelButtonText)),e.confirmButtonText&&(c.innerHTML=s.escapeHtml(e.confirmButtonText)),e.confirmButtonColor&&(c.style.backgroundColor=e.confirmButtonColor,c.style.borderLeftColor=e.confirmLoadingButtonColor,c.style.borderRightColor=e.confirmLoadingButtonColor,r.setFocusStyle(c,e.confirmButtonColor)),t.setAttribute("data-allow-outside-click",e.allowOutsideClick);var g=e.doneFunction?!0:!1;t.setAttribute("data-has-done-function",g),e.animation?"string"==typeof e.animation?t.setAttribute("data-animation",e.animation):t.setAttribute("data-animation","pop"):t.setAttribute("data-animation","none"),t.setAttribute("data-timer",e.timer)};o["default"]=i,t.exports=o["default"]},{"./handle-dom":4,"./handle-swal-dom":6,"./utils":9}],9:[function(t,n,o){Object.defineProperty(o,"__esModule",{value:!0});var a=function(e,t){for(var n in t)t.hasOwnProperty(n)&&(e[n]=t[n]);return e},r=function(e){var t=/^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(e);return t?parseInt(t[1],16)+", "+parseInt(t[2],16)+", "+parseInt(t[3],16):null},s=function(){return e.attachEvent&&!e.addEventListener},l=function(t){e.console&&e.console.log("SweetAlert: "+t)},i=function(e,t){e=String(e).replace(/[^0-9a-f]/gi,""),e.length<6&&(e=e[0]+e[0]+e[1]+e[1]+e[2]+e[2]),t=t||0;var n,o,a="#";for(o=0;3>o;o++)n=parseInt(e.substr(2*o,2),16),n=Math.round(Math.min(Math.max(0,n+n*t),255)).toString(16),a+=("00"+n).substr(n.length);return a};o.extend=a,o.hexToRgb=r,o.isIE8=s,o.logStr=l,o.colorLuminance=i},{}]},{},[1]),"function"==typeof define&&define.amd?define(function(){return sweetAlert}):"undefined"!=typeof module&&module.exports&&(module.exports=sweetAlert)}(window,document);</script>
				<script>/*!
				 * imagesLoaded PACKAGED v4.1.4
				 * JavaScript is all like "You images are done yet or what?"
				 * MIT License
				 */

				!function(e,t){"function"==typeof define&&define.amd?define("ev-emitter/ev-emitter",t):"object"==typeof module&&module.exports?module.exports=t():e.EvEmitter=t()}("undefined"!=typeof window?window:this,function(){function e(){}var t=e.prototype;return t.on=function(e,t){if(e&&t){var i=this._events=this._events||{},n=i[e]=i[e]||[];return n.indexOf(t)==-1&&n.push(t),this}},t.once=function(e,t){if(e&&t){this.on(e,t);var i=this._onceEvents=this._onceEvents||{},n=i[e]=i[e]||{};return n[t]=!0,this}},t.off=function(e,t){var i=this._events&&this._events[e];if(i&&i.length){var n=i.indexOf(t);return n!=-1&&i.splice(n,1),this}},t.emitEvent=function(e,t){var i=this._events&&this._events[e];if(i&&i.length){i=i.slice(0),t=t||[];for(var n=this._onceEvents&&this._onceEvents[e],o=0;o<i.length;o++){var r=i[o],s=n&&n[r];s&&(this.off(e,r),delete n[r]),r.apply(this,t)}return this}},t.allOff=function(){delete this._events,delete this._onceEvents},e}),function(e,t){"use strict";"function"==typeof define&&define.amd?define(["ev-emitter/ev-emitter"],function(i){return t(e,i)}):"object"==typeof module&&module.exports?module.exports=t(e,require("ev-emitter")):e.imagesLoaded=t(e,e.EvEmitter)}("undefined"!=typeof window?window:this,function(e,t){function i(e,t){for(var i in t)e[i]=t[i];return e}function n(e){if(Array.isArray(e))return e;var t="object"==typeof e&&"number"==typeof e.length;return t?d.call(e):[e]}function o(e,t,r){if(!(this instanceof o))return new o(e,t,r);var s=e;return"string"==typeof e&&(s=document.querySelectorAll(e)),s?(this.elements=n(s),this.options=i({},this.options),"function"==typeof t?r=t:i(this.options,t),r&&this.on("always",r),this.getImages(),h&&(this.jqDeferred=new h.Deferred),void setTimeout(this.check.bind(this))):void a.error("Bad element for imagesLoaded "+(s||e))}function r(e){this.img=e}function s(e,t){this.url=e,this.element=t,this.img=new Image}var h=e.jQuery,a=e.console,d=Array.prototype.slice;o.prototype=Object.create(t.prototype),o.prototype.options={},o.prototype.getImages=function(){this.images=[],this.elements.forEach(this.addElementImages,this)},o.prototype.addElementImages=function(e){"IMG"==e.nodeName&&this.addImage(e),this.options.background===!0&&this.addElementBackgroundImages(e);var t=e.nodeType;if(t&&u[t]){for(var i=e.querySelectorAll("img"),n=0;n<i.length;n++){var o=i[n];this.addImage(o)}if("string"==typeof this.options.background){var r=e.querySelectorAll(this.options.background);for(n=0;n<r.length;n++){var s=r[n];this.addElementBackgroundImages(s)}}}};var u={1:!0,9:!0,11:!0};return o.prototype.addElementBackgroundImages=function(e){var t=getComputedStyle(e);if(t)for(var i=/url\((['"])?(.*?)\1\)/gi,n=i.exec(t.backgroundImage);null!==n;){var o=n&&n[2];o&&this.addBackground(o,e),n=i.exec(t.backgroundImage)}},o.prototype.addImage=function(e){var t=new r(e);this.images.push(t)},o.prototype.addBackground=function(e,t){var i=new s(e,t);this.images.push(i)},o.prototype.check=function(){function e(e,i,n){setTimeout(function(){t.progress(e,i,n)})}var t=this;return this.progressedCount=0,this.hasAnyBroken=!1,this.images.length?void this.images.forEach(function(t){t.once("progress",e),t.check()}):void this.complete()},o.prototype.progress=function(e,t,i){this.progressedCount++,this.hasAnyBroken=this.hasAnyBroken||!e.isLoaded,this.emitEvent("progress",[this,e,t]),this.jqDeferred&&this.jqDeferred.notify&&this.jqDeferred.notify(this,e),this.progressedCount==this.images.length&&this.complete(),this.options.debug&&a&&a.log("progress: "+i,e,t)},o.prototype.complete=function(){var e=this.hasAnyBroken?"fail":"done";if(this.isComplete=!0,this.emitEvent(e,[this]),this.emitEvent("always",[this]),this.jqDeferred){var t=this.hasAnyBroken?"reject":"resolve";this.jqDeferred[t](this)}},r.prototype=Object.create(t.prototype),r.prototype.check=function(){var e=this.getIsImageComplete();return e?void this.confirm(0!==this.img.naturalWidth,"naturalWidth"):(this.proxyImage=new Image,this.proxyImage.addEventListener("load",this),this.proxyImage.addEventListener("error",this),this.img.addEventListener("load",this),this.img.addEventListener("error",this),void(this.proxyImage.src=this.img.src))},r.prototype.getIsImageComplete=function(){return this.img.complete&&this.img.naturalWidth},r.prototype.confirm=function(e,t){this.isLoaded=e,this.emitEvent("progress",[this,this.img,t])},r.prototype.handleEvent=function(e){var t="on"+e.type;this[t]&&this[t](e)},r.prototype.onload=function(){this.confirm(!0,"onload"),this.unbindEvents()},r.prototype.onerror=function(){this.confirm(!1,"onerror"),this.unbindEvents()},r.prototype.unbindEvents=function(){this.proxyImage.removeEventListener("load",this),this.proxyImage.removeEventListener("error",this),this.img.removeEventListener("load",this),this.img.removeEventListener("error",this)},s.prototype=Object.create(r.prototype),s.prototype.check=function(){this.img.addEventListener("load",this),this.img.addEventListener("error",this),this.img.src=this.url;var e=this.getIsImageComplete();e&&(this.confirm(0!==this.img.naturalWidth,"naturalWidth"),this.unbindEvents())},s.prototype.unbindEvents=function(){this.img.removeEventListener("load",this),this.img.removeEventListener("error",this)},s.prototype.confirm=function(e,t){this.isLoaded=e,this.emitEvent("progress",[this,this.element,t])},o.makeJQueryPlugin=function(t){t=t||e.jQuery,t&&(h=t,h.fn.imagesLoaded=function(e,t){var i=new o(this,e,t);return i.jqDeferred.promise(h(this))})},o.makeJQueryPlugin(),o});</script>

				<script>
				var target_view = document.querySelector('button[title="와이드뷰"]')
				var a = document.querySelectorAll('.eb-pagination > li')
					$('#fakeloader').fakeLoader({
						timeToHide : 3000,
						zIndex : "11",
						spinner : "spinner6",
						bgColor : "#fff",
					});

					$(window).load(function() {
						$('#fakeloader').fadeOut(300);
						var window_width = $(window).width();
						if(window_width < 600) {
							console.log(target_view)
							target_view.click()
							
							a.forEach((i,idx)=>
					          {console.log(idx,i);
							if(a.length/2 -1==idx){
							var br = document.createElement("br");
							i.appendChild(br)}})
							} 
							
					});

					
				</script>
				</section>





				<style>
.ol-before {
	position: relative;
	display: block;
	font-size: 12px;
	background: #fff;
	border: 1px solid #e5e5e5;
	padding: 15px 10px 10px;
	margin-bottom: 25px
}

.ol-account {
	font-size: 12px;
	margin-bottom: 5px;
	font-weight: bold
}

.ol-account a:hover {
	text-decoration: underline
}
</style>



				<style>
.ol-social-icons {
	margin-top: 15px
}

.ol-social-icons h6 {
	text-align: center;
	margin: 0 0 10px;
	padding: 0;
	font-size: 12px;
	color: #757575
}
</style>
				<script>
					jQuery(function($) {
						$(".sns-wrap")
								.on(
										"click",
										"a.social_link",
										function(e) {
											e.preventDefault();

											var pop_url = $(this).attr("href");
											var newWin = window
													.open(pop_url,
															"social_sing_on",
															"location=0,status=0,scrollbars=1,width=600,height=500");

											if (!newWin
													|| newWin.closed
													|| typeof newWin.closed == 'undefined')
												alert('브라우저에서 팝업이 차단되어 있습니다. 팝업 활성화 후 다시 시도해 주세요.');

											return false;
										});
					});
				</script>
			</div>
		</div>


		<script>
			$omi = $('#ol_id');
			$omp = $('#ol_pw');
			$omi_label = $('#ol_idlabel');
			$omi_label.addClass('ol_idlabel');
			$omp_label = $('#ol_pwlabel');
			$omp_label.addClass('ol_pwlabel');

			$(function() {
				$omi.focus(function() {
					$omi_label.css('visibility', 'hidden');
				});
				$omp.focus(function() {
					$omp_label.css('visibility', 'hidden');
				});
				$omi.blur(function() {
					$this = $(this);
					if ($this.attr('id') == "ol_id"
							&& $this.attr('value') == "")
						$omi_label.css('visibility', 'visible');
				});
				$omp.blur(function() {
					$this = $(this);
					if ($this.attr('id') == "ol_pw"
							&& $this.attr('value') == "")
						$omp_label.css('visibility', 'visible');
				});

				$("#auto_login")
						.click(
								function() {
									if ($(this).is(":checked")) {
										swal(
												{
													html : true,
													title : "알림",
													text : "<div class='alert alert-warning text-left font-size-12'>자동로그인을 사용하시면 다음부터 회원아이디와 비밀번호를 입력하실 필요가 없습니다.<br>공공장소에서는 개인정보가 유출될 수 있으니 사용을 자제하여 주십시오.</div><strong>자동로그인을 사용하시겠습니까?</strong>",
													type : "warning",
													showCancelButton : true,
													confirmButtonColor : "#FDAB29",
													confirmButtonText : "확인",
													cancelButtonText : "취소",
													closeOnConfirm : true,
													closeOnCancel : true
												},
												function(isConfirm) {
													if (isConfirm) {
														$("#auto_login").attr(
																"checked");
													} else {
														$("#auto_login")
																.removeAttr(
																		"checked");
													}
												});
									}
								});
			});

			function fhead_submit(f) {
				if (f.mb_id.value == ''
						|| f.mb_id.value == $("#ol_id").attr("placeholder")) {
					alert("아이디를 입력해 주세요.");
					f.mb_id.select();
					f.mb_id.focus();
					return false;
				}
				if (f.mb_password.value == ''
						|| f.mb_password.value == $("#ol_pw").attr(
								"placeholder")) {
					alert("비밀번호를 입력해 주세요.");
					f.mb_password.select();
					f.mb_password.focus();
					return false;
				}
				return true;
			}
		</script>


		<script>
			$(document).ready(function() {
				$('.eblatest-newpost-tabs li a').hover(function(e) {
					e.preventDefault()
					$(this).tab('show');
				});

				$('.eblatest-newpost-tabs li a').click(function(e) {
					return true;
				});

				$('.eblatest-newpost-tabs li a').on("click", function(e) {
					if ($(this).attr("data-href")) {
						window.location.href = $(this).attr("data-href");
					}
				});
			});
		</script>


		<script>// jQuery easing 1.3
		jQuery.easing.jswing=jQuery.easing.swing;jQuery.extend(jQuery.easing,{def:"easeOutQuad",easeInBack:function(e,a,c,b,d,f){void 0==f&&(f=1.70158);return b*(a/=d)*a*((f+1)*a-f)+c},easeInBounce:function(e,a,c,b,d){return b-jQuery.easing.easeOutBounce(e,d-a,0,b,d)+c},easeInCirc:function(e,a,c,b,d){return-b*(Math.sqrt(1-(a/=d)*a)-1)+c},easeInCubic:function(e,a,c,b,d){return b*(a/=d)*a*a+c},easeInElastic:function(e,a,c,b,d){var e=1.70158,f=0,g=b;if(0==a){return c}if(1==(a/=d)){return c+b}f||(f=0.3*d);g<Math.abs(b)?(g=b,e=f/4):e=f/(2*Math.PI)*Math.asin(b/g);return-(g*Math.pow(2,10*(a-=1))*Math.sin((a*d-e)*2*Math.PI/f))+c},easeInExpo:function(e,a,c,b,d){return 0==a?c:b*Math.pow(2,10*(a/d-1))+c},easeInOutBack:function(e,a,c,b,d,f){void 0==f&&(f=1.70158);return 1>(a/=d/2)?b/2*a*a*(((f*=1.525)+1)*a-f)+c:b/2*((a-=2)*a*(((f*=1.525)+1)*a+f)+2)+c},easeInOutBounce:function(e,a,c,b,d){return a<d/2?0.5*jQuery.easing.easeInBounce(e,2*a,0,b,d)+c:0.5*jQuery.easing.easeOutBounce(e,2*a-d,0,b,d)+0.5*b+c},easeInOutCirc:function(e,a,c,b,d){return 1>(a/=d/2)? -b/2*(Math.sqrt(1-a*a)-1)+c:b/2*(Math.sqrt(1-(a-=2)*a)+1)+c},easeInOutCubic:function(e,a,c,b,d){return 1>(a/=d/2)?b/2*a*a*a+c:b/2*((a-=2)*a*a+2)+c},easeInOutElastic:function(e,a,c,b,d){var e=1.70158,f=0,g=b;if(0==a){return c}if(2==(a/=d/2)){return c+b}f||(f=d*0.3*1.5);g<Math.abs(b)?(g=b,e=f/4):e=f/(2*Math.PI)*Math.asin(b/g);return 1>a?-0.5*g*Math.pow(2,10*(a-=1))*Math.sin((a*d-e)*2*Math.PI/f)+c:0.5*g*Math.pow(2,-10*(a-=1))*Math.sin((a*d-e)*2*Math.PI/f)+b+c},easeInOutExpo:function(e,a,c,b,d){return 0==a?c:a==d?c+b:1>(a/=d/2)?b/2*Math.pow(2,10*(a-1))+c:b/2*(-Math.pow(2,-10* --a)+2)+c},easeInOutQuad:function(e,a,c,b,d){return 1>(a/=d/2)?b/2*a*a+c: -b/2*(--a*(a-2)-1)+c},easeInOutQuart:function(e,a,c,b,d){return 1>(a/=d/2)?b/2*a*a*a*a+c: -b/2*((a-=2)*a*a*a-2)+c},easeInOutQuint:function(e,a,c,b,d){return 1>(a/=d/2)?b/2*a*a*a*a*a+c:b/2*((a-=2)*a*a*a*a+2)+c},easeInOutSine:function(e,a,c,b,d){return-b/2*(Math.cos(Math.PI*a/d)-1)+c},easeInQuad:function(e,a,c,b,d){return b*(a/=d)*a+c},easeInQuart:function(e,a,c,b,d){return b*(a/=d)*a*a*a+c},easeInQuint:function(e,a,c,b,d){return b*(a/=d)*a*a*a*a+c},easeInSine:function(e,a,c,b,d){return-b*Math.cos(a/d*(Math.PI/2))+b+c},easeOutBack:function(e,a,c,b,d,f){void 0==f&&(f=1.70158);return b*((a=a/d-1)*a*((f+1)*a+f)+1)+c},easeOutBounce:function(e,a,c,b,d){return(a/=d)<1/2.75?b*7.5625*a*a+c:a<2/2.75?b*(7.5625*(a-=1.5/2.75)*a+0.75)+c:a<2.5/2.75?b*(7.5625*(a-=2.25/2.75)*a+0.9375)+c:b*(7.5625*(a-=2.625/2.75)*a+0.984375)+c},easeOutCirc:function(e,a,c,b,d){return b*Math.sqrt(1-(a=a/d-1)*a)+c},easeOutCubic:function(e,a,c,b,d){return b*((a=a/d-1)*a*a+1)+c},easeOutElastic:function(e,a,c,b,d){var e=1.70158,f=0,g=b;if(0==a){return c}if(1==(a/=d)){return c+b}f||(f=0.3*d);g<Math.abs(b)?(g=b,e=f/4):e=f/(2*Math.PI)*Math.asin(b/g);return g*Math.pow(2,-10*a)*Math.sin((a*d-e)*2*Math.PI/f)+b+c},easeOutExpo:function(e,a,c,b,d){return a==d?c+b:b*(-Math.pow(2,-10*a/d)+1)+c},easeOutQuad:function(e,a,c,b,d){return-b*(a/=d)*(a-2)+c},easeOutQuart:function(e,a,c,b,d){return-b*((a=a/d-1)*a*a*a-1)+c},easeOutQuint:function(e,a,c,b,d){return b*((a=a/d-1)*a*a*a*a+1)+c},easeOutSine:function(e,a,c,b,d){return b*Math.sin(a/d*(Math.PI/2))+c},swing:function(e,a,c,b,d){return jQuery.easing[jQuery.easing.def](e,a,c,b,d)}});

		// jQuery throttle / debounce - v1.1 - 3/7/2010
		(function(b,c){var $=b.jQuery||b.Cowboy||(b.Cowboy={}),a;$.throttle=a=function(e,f,j,i){var h,d=0;if(typeof f!=="boolean"){i=j;j=f;f=c}function g(){var o=this,m= +new Date()-d,n=arguments;function l(){d= +new Date();j.apply(o,n)}function k(){h=c}if(i&&!h){l()}h&&clearTimeout(h);if(i===c&&m>e){l()}else{if(f!==true){h=setTimeout(i?k:l,i===c?e-m:e)}}}if($.guid){g.guid=j.guid=j.guid||$.guid++}return g};$.debounce=function(d,e,f){return f===c?a(d,e,false):a(d,f,e!==false)}})(this);</script>
		<script>/*! sly 1.6.1 - 8th Aug 2015 | https://github.com/darsain/sly */
		!function(a,b,c){"use strict";function d(b,p,q){function K(c){var d=0,e=Gb.length;if(yb.old=a.extend({},yb),wb=tb?0:ub[rb.horizontal?"width":"height"](),Bb=zb[rb.horizontal?"width":"height"](),xb=tb?b:vb[rb.horizontal?"outerWidth":"outerHeight"](),Gb.length=0,yb.start=0,yb.end=H(xb-wb,0),Rb){d=Ib.length,Hb=vb.children(rb.itemSelector),Ib.length=0;var f,g=j(vb,rb.horizontal?"paddingLeft":"paddingTop"),h=j(vb,rb.horizontal?"paddingRight":"paddingBottom"),i="border-box"===a(Hb).css("boxSizing"),l="none"!==Hb.css("float"),m=0,n=Hb.length-1;xb=0,Hb.each(function(b,c){var d=a(c),e=c.getBoundingClientRect(),i=G(rb.horizontal?e.width||e.right-e.left:e.height||e.bottom-e.top),k=j(d,rb.horizontal?"marginLeft":"marginTop"),o=j(d,rb.horizontal?"marginRight":"marginBottom"),p=i+k+o,q=!k||!o,r={};r.el=c,r.size=q?i:p,r.half=r.size/2,r.start=xb+(q?k:0),r.center=r.start-G(wb/2-r.size/2),r.end=r.start-wb+r.size,b||(xb+=g),xb+=p,rb.horizontal||l||o&&k&&b>0&&(xb-=I(k,o)),b===n&&(r.end+=h,xb+=h,m=q?o:0),Ib.push(r),f=r}),vb[0].style[rb.horizontal?"width":"height"]=(i?xb:xb-g-h)+"px",xb-=m,Ib.length?(yb.start=Ib[0][Pb?"center":"start"],yb.end=Pb?f.center:xb>wb?f.end:yb.start):yb.start=yb.end=0}if(yb.center=G(yb.end/2+yb.start/2),V(),Ab.length&&Bb>0&&(rb.dynamicHandle?(Cb=yb.start===yb.end?Bb:G(Bb*wb/xb),Cb=k(Cb,rb.minHandleSize,Bb),Ab[0].style[rb.horizontal?"width":"height"]=Cb+"px"):Cb=Ab[rb.horizontal?"outerWidth":"outerHeight"](),Db.end=Bb-Cb,ec||N()),!tb&&wb>0){var o=yb.start,p="";if(Rb)a.each(Ib,function(a,b){Pb?Gb.push(b.center):b.start+b.size>o&&o<=yb.end&&(o=b.start,Gb.push(o),o+=wb,o>yb.end&&o<yb.end+wb&&Gb.push(yb.end))});else for(;o-wb<yb.end;)Gb.push(o),o+=wb;if(Eb[0]&&e!==Gb.length){for(var q=0;q<Gb.length;q++)p+=rb.pageBuilder.call(sb,q);Fb=Eb.html(p).children(),Fb.eq(Jb.activePage).addClass(rb.activeClass)}}if(Jb.slideeSize=xb,Jb.frameSize=wb,Jb.sbSize=Bb,Jb.handleSize=Cb,Rb){c&&null!=rb.startAt&&(T(rb.startAt),sb[Qb?"toCenter":"toStart"](rb.startAt));var r=Ib[Jb.activeItem];L(Qb&&r?r.center:k(yb.dest,yb.start,yb.end))}else c?null!=rb.startAt&&L(rb.startAt,1):L(k(yb.dest,yb.start,yb.end));ob("load")}function L(a,b,c){if(Rb&&cc.released&&!c){var d=U(a),e=a>yb.start&&a<yb.end;Qb?(e&&(a=Ib[d.centerItem].center),Pb&&rb.activateMiddle&&T(d.centerItem)):e&&(a=Ib[d.firstItem].start)}cc.init&&cc.slidee&&rb.elasticBounds?a>yb.end?a=yb.end+(a-yb.end)/6:a<yb.start&&(a=yb.start+(a-yb.start)/6):a=k(a,yb.start,yb.end),ac.start=+new Date,ac.time=0,ac.from=yb.cur,ac.to=a,ac.delta=a-yb.cur,ac.tweesing=cc.tweese||cc.init&&!cc.slidee,ac.immediate=!ac.tweesing&&(b||cc.init&&cc.slidee||!rb.speed),cc.tweese=0,a!==yb.dest&&(yb.dest=a,ob("change"),ec||M()),Z(),V(),W(),O()}function M(){if(sb.initialized){if(!ec)return ec=t(M),void(cc.released&&ob("moveStart"));ac.immediate?yb.cur=ac.to:ac.tweesing?(ac.tweeseDelta=ac.to-yb.cur,D(ac.tweeseDelta)<.1?yb.cur=ac.to:yb.cur+=ac.tweeseDelta*(cc.released?rb.swingSpeed:rb.syncSpeed)):(ac.time=I(+new Date-ac.start,rb.speed),yb.cur=ac.from+ac.delta*a.easing[rb.easing](ac.time/rb.speed,ac.time,0,1,rb.speed)),ac.to===yb.cur?(yb.cur=ac.to,cc.tweese=ec=0):ec=t(M),ob("move"),tb||(m?vb[0].style[m]=n+(rb.horizontal?"translateX":"translateY")+"("+-yb.cur+"px)":vb[0].style[rb.horizontal?"left":"top"]=-G(yb.cur)+"px"),!ec&&cc.released&&ob("moveEnd"),N()}}function N(){Ab.length&&(Db.cur=yb.start===yb.end?0:((cc.init&&!cc.slidee?yb.dest:yb.cur)-yb.start)/(yb.end-yb.start)*Db.end,Db.cur=k(G(Db.cur),Db.start,Db.end),_b.hPos!==Db.cur&&(_b.hPos=Db.cur,m?Ab[0].style[m]=n+(rb.horizontal?"translateX":"translateY")+"("+Db.cur+"px)":Ab[0].style[rb.horizontal?"left":"top"]=Db.cur+"px"))}function O(){Fb[0]&&_b.page!==Jb.activePage&&(_b.page=Jb.activePage,Fb.removeClass(rb.activeClass).eq(Jb.activePage).addClass(rb.activeClass),ob("activePage",_b.page))}function P(){bc.speed&&yb.cur!==(bc.speed>0?yb.end:yb.start)||sb.stop(),hc=cc.init?t(P):0,bc.now=+new Date,bc.pos=yb.cur+(bc.now-bc.lastTime)/1e3*bc.speed,L(cc.init?bc.pos:G(bc.pos)),cc.init||yb.cur!==yb.dest||ob("moveEnd"),bc.lastTime=bc.now}function Q(a,b,d){if("boolean"===e(b)&&(d=b,b=c),b===c)L(yb[a],d);else{if(Qb&&"center"!==a)return;var f=sb.getPos(b);f&&L(f[a],d,!Qb)}}function R(a){return null!=a?i(a)?a>=0&&a<Ib.length?a:-1:Hb.index(a):-1}function S(a){return R(i(a)&&0>a?a+Ib.length:a)}function T(a,b){var c=R(a);return!Rb||0>c?!1:((_b.active!==c||b)&&(Hb.eq(Jb.activeItem).removeClass(rb.activeClass),Hb.eq(c).addClass(rb.activeClass),_b.active=Jb.activeItem=c,W(),ob("active",c)),c)}function U(a){a=k(i(a)?a:yb.dest,yb.start,yb.end);var b={},c=Pb?0:wb/2;if(!tb)for(var d=0,e=Gb.length;e>d;d++){if(a>=yb.end||d===Gb.length-1){b.activePage=Gb.length-1;break}if(a<=Gb[d]+c){b.activePage=d;break}}if(Rb){for(var f=!1,g=!1,h=!1,j=0,l=Ib.length;l>j;j++)if(f===!1&&a<=Ib[j].start+Ib[j].half&&(f=j),h===!1&&a<=Ib[j].center+Ib[j].half&&(h=j),j===l-1||a<=Ib[j].end+Ib[j].half){g=j;break}b.firstItem=i(f)?f:0,b.centerItem=i(h)?h:b.firstItem,b.lastItem=i(g)?g:b.centerItem}return b}function V(b){a.extend(Jb,U(b))}function W(){var a=yb.dest<=yb.start,b=yb.dest>=yb.end,c=(a?1:0)|(b?2:0);if(_b.slideePosState!==c&&(_b.slideePosState=c,Yb.is("button,input")&&Yb.prop("disabled",a),Zb.is("button,input")&&Zb.prop("disabled",b),Yb.add(Vb)[a?"addClass":"removeClass"](rb.disabledClass),Zb.add(Ub)[b?"addClass":"removeClass"](rb.disabledClass)),_b.fwdbwdState!==c&&cc.released&&(_b.fwdbwdState=c,Vb.is("button,input")&&Vb.prop("disabled",a),Ub.is("button,input")&&Ub.prop("disabled",b)),Rb&&null!=Jb.activeItem){var d=0===Jb.activeItem,e=Jb.activeItem>=Ib.length-1,f=(d?1:0)|(e?2:0);_b.itemsButtonState!==f&&(_b.itemsButtonState=f,Wb.is("button,input")&&Wb.prop("disabled",d),Xb.is("button,input")&&Xb.prop("disabled",e),Wb[d?"addClass":"removeClass"](rb.disabledClass),Xb[e?"addClass":"removeClass"](rb.disabledClass))}}function X(a,b,c){if(a=S(a),b=S(b),a>-1&&b>-1&&a!==b&&(!c||b!==a-1)&&(c||b!==a+1)){Hb.eq(a)[c?"insertAfter":"insertBefore"](Ib[b].el);var d=b>a?a:c?b:b-1,e=a>b?a:c?b+1:b,f=a>b;null!=Jb.activeItem&&(a===Jb.activeItem?_b.active=Jb.activeItem=c?f?b+1:b:f?b:b-1:Jb.activeItem>d&&Jb.activeItem<e&&(_b.active=Jb.activeItem+=f?1:-1)),K()}}function Y(a,b){for(var c=0,d=$b[a].length;d>c;c++)if($b[a][c]===b)return c;return-1}function Z(){cc.released&&!sb.isPaused&&sb.resume()}function $(a){return G(k(a,Db.start,Db.end)/Db.end*(yb.end-yb.start))+yb.start}function _(){cc.history[0]=cc.history[1],cc.history[1]=cc.history[2],cc.history[2]=cc.history[3],cc.history[3]=cc.delta}function ab(a){cc.released=0,cc.source=a,cc.slidee="slidee"===a}function bb(b){var c="touchstart"===b.type,d=b.data.source,e="slidee"===d;cc.init||!c&&eb(b.target)||("handle"!==d||rb.dragHandle&&Db.start!==Db.end)&&(!e||(c?rb.touchDragging:rb.mouseDragging&&b.which<2))&&(c||f(b),ab(d),cc.init=0,cc.$source=a(b.target),cc.touch=c,cc.pointer=c?b.originalEvent.touches[0]:b,cc.initX=cc.pointer.pageX,cc.initY=cc.pointer.pageY,cc.initPos=e?yb.cur:Db.cur,cc.start=+new Date,cc.time=0,cc.path=0,cc.delta=0,cc.locked=0,cc.history=[0,0,0,0],cc.pathToLock=e?c?30:10:0,u.on(c?x:w,cb),sb.pause(1),(e?vb:Ab).addClass(rb.draggedClass),ob("moveStart"),e&&(fc=setInterval(_,10)))}function cb(a){if(cc.released="mouseup"===a.type||"touchend"===a.type,cc.pointer=cc.touch?a.originalEvent[cc.released?"changedTouches":"touches"][0]:a,cc.pathX=cc.pointer.pageX-cc.initX,cc.pathY=cc.pointer.pageY-cc.initY,cc.path=E(F(cc.pathX,2)+F(cc.pathY,2)),cc.delta=rb.horizontal?cc.pathX:cc.pathY,cc.released||!(cc.path<1)){if(!cc.init){if(cc.path<rb.dragThreshold)return cc.released?db():c;if(!(rb.horizontal?D(cc.pathX)>D(cc.pathY):D(cc.pathX)<D(cc.pathY)))return db();cc.init=1}f(a),!cc.locked&&cc.path>cc.pathToLock&&cc.slidee&&(cc.locked=1,cc.$source.on(z,g)),cc.released&&(db(),rb.releaseSwing&&cc.slidee&&(cc.swing=(cc.delta-cc.history[0])/40*300,cc.delta+=cc.swing,cc.tweese=D(cc.swing)>10)),L(cc.slidee?G(cc.initPos-cc.delta):$(cc.initPos+cc.delta))}}function db(){clearInterval(fc),cc.released=!0,u.off(cc.touch?x:w,cb),(cc.slidee?vb:Ab).removeClass(rb.draggedClass),setTimeout(function(){cc.$source.off(z,g)}),yb.cur===yb.dest&&cc.init&&ob("moveEnd"),sb.resume(1),cc.init=0}function eb(b){return~a.inArray(b.nodeName,B)||a(b).is(rb.interactive)}function fb(){sb.stop(),u.off("mouseup",fb)}function gb(a){switch(f(a),this){case Ub[0]:case Vb[0]:sb.moveBy(Ub.is(this)?rb.moveBy:-rb.moveBy),u.on("mouseup",fb);break;case Wb[0]:sb.prev();break;case Xb[0]:sb.next();break;case Yb[0]:sb.prevPage();break;case Zb[0]:sb.nextPage()}}function hb(a){return dc.curDelta=(rb.horizontal?a.deltaY||a.deltaX:a.deltaY)||-a.wheelDelta,dc.curDelta/=1===a.deltaMode?3:100,Rb?(o=+new Date,dc.last<o-dc.resetTime&&(dc.delta=0),dc.last=o,dc.delta+=dc.curDelta,D(dc.delta)<1?dc.finalDelta=0:(dc.finalDelta=G(dc.delta/1),dc.delta%=1),dc.finalDelta):dc.curDelta}function ib(a){a.originalEvent[r]=sb;var b=+new Date;if(J+rb.scrollHijack>b&&Sb[0]!==document&&Sb[0]!==window)return void(J=b);if(rb.scrollBy&&yb.start!==yb.end){var c=hb(a.originalEvent);(rb.scrollTrap||c>0&&yb.dest<yb.end||0>c&&yb.dest>yb.start)&&f(a,1),sb.slideBy(rb.scrollBy*c)}}function jb(a){rb.clickBar&&a.target===zb[0]&&(f(a),L($((rb.horizontal?a.pageX-zb.offset().left:a.pageY-zb.offset().top)-Cb/2)))}function kb(a){if(rb.keyboardNavBy)switch(a.which){case rb.horizontal?37:38:f(a),sb["pages"===rb.keyboardNavBy?"prevPage":"prev"]();break;case rb.horizontal?39:40:f(a),sb["pages"===rb.keyboardNavBy?"nextPage":"next"]()}}function lb(a){return eb(this)?void(a.originalEvent[r+"ignore"]=!0):void(this.parentNode!==vb[0]||a.originalEvent[r+"ignore"]||sb.activate(this))}function mb(){this.parentNode===Eb[0]&&sb.activatePage(Fb.index(this))}function nb(a){rb.pauseOnHover&&sb["mouseenter"===a.type?"pause":"resume"](2)}function ob(a,b){if($b[a]){for(qb=$b[a].length,C.length=0,pb=0;qb>pb;pb++)C.push($b[a][pb]);for(pb=0;qb>pb;pb++)C[pb].call(sb,a,b)}}if(!(this instanceof d))return new d(b,p,q);var pb,qb,rb=a.extend({},d.defaults,p),sb=this,tb=i(b),ub=a(b),vb=rb.slidee?a(rb.slidee).eq(0):ub.children().eq(0),wb=0,xb=0,yb={start:0,center:0,end:0,cur:0,dest:0},zb=a(rb.scrollBar).eq(0),Ab=zb.children().eq(0),Bb=0,Cb=0,Db={start:0,end:0,cur:0},Eb=a(rb.pagesBar),Fb=0,Gb=[],Hb=0,Ib=[],Jb={firstItem:0,lastItem:0,centerItem:0,activeItem:null,activePage:0},Kb=new l(ub[0]),Lb=new l(vb[0]),Mb=new l(zb[0]),Nb=new l(Ab[0]),Ob="basic"===rb.itemNav,Pb="forceCentered"===rb.itemNav,Qb="centered"===rb.itemNav||Pb,Rb=!tb&&(Ob||Qb||Pb),Sb=rb.scrollSource?a(rb.scrollSource):ub,Tb=rb.dragSource?a(rb.dragSource):ub,Ub=a(rb.forward),Vb=a(rb.backward),Wb=a(rb.prev),Xb=a(rb.next),Yb=a(rb.prevPage),Zb=a(rb.nextPage),$b={},_b={},ac={},bc={},cc={released:1},dc={last:0,delta:0,resetTime:200},ec=0,fc=0,gc=0,hc=0;tb||(b=ub[0]),sb.initialized=0,sb.frame=b,sb.slidee=vb[0],sb.pos=yb,sb.rel=Jb,sb.items=Ib,sb.pages=Gb,sb.isPaused=0,sb.options=rb,sb.dragging=cc,sb.reload=function(){K()},sb.getPos=function(a){if(Rb){var b=R(a);return-1!==b?Ib[b]:!1}var c=vb.find(a).eq(0);if(c[0]){var d=rb.horizontal?c.offset().left-vb.offset().left:c.offset().top-vb.offset().top,e=c[rb.horizontal?"outerWidth":"outerHeight"]();return{start:d,center:d-wb/2+e/2,end:d-wb+e,size:e}}return!1},sb.moveBy=function(a){bc.speed=a,!cc.init&&bc.speed&&yb.cur!==(bc.speed>0?yb.end:yb.start)&&(bc.lastTime=+new Date,bc.startPos=yb.cur,ab("button"),cc.init=1,ob("moveStart"),s(hc),P())},sb.stop=function(){"button"===cc.source&&(cc.init=0,cc.released=1)},sb.prev=function(){sb.activate(null==Jb.activeItem?0:Jb.activeItem-1)},sb.next=function(){sb.activate(null==Jb.activeItem?0:Jb.activeItem+1)},sb.prevPage=function(){sb.activatePage(Jb.activePage-1)},sb.nextPage=function(){sb.activatePage(Jb.activePage+1)},sb.slideBy=function(a,b){a&&(Rb?sb[Qb?"toCenter":"toStart"](k((Qb?Jb.centerItem:Jb.firstItem)+rb.scrollBy*a,0,Ib.length)):L(yb.dest+a,b))},sb.slideTo=function(a,b){L(a,b)},sb.toStart=function(a,b){Q("start",a,b)},sb.toEnd=function(a,b){Q("end",a,b)},sb.toCenter=function(a,b){Q("center",a,b)},sb.getIndex=R,sb.activate=function(a,b){var c=T(a);rb.smart&&c!==!1&&(Qb?sb.toCenter(c,b):c>=Jb.lastItem?sb.toStart(c,b):c<=Jb.firstItem?sb.toEnd(c,b):Z())},sb.activatePage=function(a,b){i(a)&&L(Gb[k(a,0,Gb.length-1)],b)},sb.resume=function(a){rb.cycleBy&&rb.cycleInterval&&("items"!==rb.cycleBy||Ib[0]&&null!=Jb.activeItem)&&!(a<sb.isPaused)&&(sb.isPaused=0,gc?gc=clearTimeout(gc):ob("resume"),gc=setTimeout(function(){switch(ob("cycle"),rb.cycleBy){case"items":sb.activate(Jb.activeItem>=Ib.length-1?0:Jb.activeItem+1);break;case"pages":sb.activatePage(Jb.activePage>=Gb.length-1?0:Jb.activePage+1)}},rb.cycleInterval))},sb.pause=function(a){a<sb.isPaused||(sb.isPaused=a||100,gc&&(gc=clearTimeout(gc),ob("pause")))},sb.toggle=function(){sb[gc?"pause":"resume"]()},sb.set=function(b,c){a.isPlainObject(b)?a.extend(rb,b):rb.hasOwnProperty(b)&&(rb[b]=c)},sb.add=function(b,c){var d=a(b);Rb?(null==c||!Ib[0]||c>=Ib.length?d.appendTo(vb):Ib.length&&d.insertBefore(Ib[c].el),null!=Jb.activeItem&&c<=Jb.activeItem&&(_b.active=Jb.activeItem+=d.length)):vb.append(d),K()},sb.remove=function(b){if(Rb){var c=S(b);if(c>-1){Hb.eq(c).remove();var d=c===Jb.activeItem;null!=Jb.activeItem&&c<Jb.activeItem&&(_b.active=--Jb.activeItem),K(),d&&(_b.active=null,sb.activate(Jb.activeItem))}}else a(b).remove(),K()},sb.moveAfter=function(a,b){X(a,b,1)},sb.moveBefore=function(a,b){X(a,b)},sb.on=function(a,b){if("object"===e(a))for(var c in a)a.hasOwnProperty(c)&&sb.on(c,a[c]);else if("function"===e(b))for(var d=a.split(" "),f=0,g=d.length;g>f;f++)$b[d[f]]=$b[d[f]]||[],-1===Y(d[f],b)&&$b[d[f]].push(b);else if("array"===e(b))for(var h=0,i=b.length;i>h;h++)sb.on(a,b[h])},sb.one=function(a,b){function c(){b.apply(sb,arguments),sb.off(a,c)}sb.on(a,c)},sb.off=function(a,b){if(b instanceof Array)for(var c=0,d=b.length;d>c;c++)sb.off(a,b[c]);else for(var e=a.split(" "),f=0,g=e.length;g>f;f++)if($b[e[f]]=$b[e[f]]||[],null==b)$b[e[f]].length=0;else{var h=Y(e[f],b);-1!==h&&$b[e[f]].splice(h,1)}},sb.destroy=function(){return d.removeInstance(b),Sb.add(Ab).add(zb).add(Eb).add(Ub).add(Vb).add(Wb).add(Xb).add(Yb).add(Zb).off("."+r),u.off("keydown",kb),Wb.add(Xb).add(Yb).add(Zb).removeClass(rb.disabledClass),Hb&&null!=Jb.activeItem&&Hb.eq(Jb.activeItem).removeClass(rb.activeClass),Eb.empty(),tb||(ub.off("."+r),Kb.restore(),Lb.restore(),Mb.restore(),Nb.restore(),a.removeData(b,r)),Ib.length=Gb.length=0,_b={},sb.initialized=0,sb},sb.init=function(){if(!sb.initialized){if(d.getInstance(b))throw new Error("There is already a Sly instance on this element");d.storeInstance(b,sb),sb.on(q);var a=["overflow","position"],c=["position","webkitTransform","msTransform","transform","left","top","width","height"];Kb.save.apply(Kb,a),Mb.save.apply(Mb,a),Lb.save.apply(Lb,c),Nb.save.apply(Nb,c);var e=Ab;return tb||(e=e.add(vb),ub.css("overflow","hidden"),m||"static"!==ub.css("position")||ub.css("position","relative")),m?n&&e.css(m,n):("static"===zb.css("position")&&zb.css("position","relative"),e.css({position:"absolute"})),rb.forward&&Ub.on(A,gb),rb.backward&&Vb.on(A,gb),rb.prev&&Wb.on(z,gb),rb.next&&Xb.on(z,gb),rb.prevPage&&Yb.on(z,gb),rb.nextPage&&Zb.on(z,gb),Sb.on(y,ib),zb[0]&&zb.on(z,jb),Rb&&rb.activateOn&&ub.on(rb.activateOn+"."+r,"*",lb),Eb[0]&&rb.activatePageOn&&Eb.on(rb.activatePageOn+"."+r,"*",mb),Tb.on(v,{source:"slidee"},bb),Ab&&Ab.on(v,{source:"handle"},bb),u.on("keydown",kb),tb||(ub.on("mouseenter."+r+" mouseleave."+r,nb),ub.on("scroll."+r,h)),sb.initialized=1,K(!0),rb.cycleBy&&!tb&&sb[rb.startPaused?"pause":"resume"](),sb}}}function e(a){return null==a?String(a):"object"==typeof a||"function"==typeof a?Object.prototype.toString.call(a).match(/\s([a-z]+)/i)[1].toLowerCase()||"object":typeof a}function f(a,b){a.preventDefault(),b&&a.stopPropagation()}function g(b){f(b,1),a(this).off(b.type,g)}function h(){this.scrollLeft=0,this.scrollTop=0}function i(a){return!isNaN(parseFloat(a))&&isFinite(a)}function j(a,b){return 0|G(String(a.css(b)).replace(/[^\-0-9.]/g,""))}function k(a,b,c){return b>a?b:a>c?c:a}function l(a){var b={};return b.style={},b.save=function(){if(a&&a.nodeType){for(var c=0;c<arguments.length;c++)b.style[arguments[c]]=a.style[arguments[c]];return b}},b.restore=function(){if(a&&a.nodeType){for(var c in b.style)b.style.hasOwnProperty(c)&&(a.style[c]=b.style[c]);return b}},b}var m,n,o,p="sly",q="Sly",r=p,s=b.cancelAnimationFrame||b.cancelRequestAnimationFrame,t=b.requestAnimationFrame,u=a(document),v="touchstart."+r+" mousedown."+r,w="mousemove."+r+" mouseup."+r,x="touchmove."+r+" touchend."+r,y=(document.implementation.hasFeature("Event.wheel","3.0")?"wheel.":"mousewheel.")+r,z="click."+r,A="mousedown."+r,B=["INPUT","SELECT","BUTTON","TEXTAREA"],C=[],D=Math.abs,E=Math.sqrt,F=Math.pow,G=Math.round,H=Math.max,I=Math.min,J=0;u.on(y,function(a){var b=a.originalEvent[r],c=+new Date;(!b||b.options.scrollHijack<c-J)&&(J=c)}),d.getInstance=function(b){return a.data(b,r)},d.storeInstance=function(b,c){return a.data(b,r,c)},d.removeInstance=function(b){return a.removeData(b,r)},function(a){function b(a){var b=(new Date).getTime(),d=Math.max(0,16-(b-c)),e=setTimeout(a,d);return c=b,e}t=a.requestAnimationFrame||a.webkitRequestAnimationFrame||b;var c=(new Date).getTime(),d=a.cancelAnimationFrame||a.webkitCancelAnimationFrame||a.clearTimeout;s=function(b){d.call(a,b)}}(window),function(){function a(a){for(var d=0,e=b.length;e>d;d++){var f=b[d]?b[d]+a.charAt(0).toUpperCase()+a.slice(1):a;if(null!=c.style[f])return f}}var b=["","Webkit","Moz","ms","O"],c=document.createElement("div");m=a("transform"),n=a("perspective")?"translateZ(0) ":""}(),b[q]=d,a.fn[p]=function(b,c){var f,g;return a.isPlainObject(b)||(("string"===e(b)||b===!1)&&(f=b===!1?"destroy":b,g=Array.prototype.slice.call(arguments,1)),b={}),this.each(function(a,e){var h=d.getInstance(e);h||f?h&&f&&h[f]&&h[f].apply(h,g):h=new d(e,b,c).init()})},d.defaults={slidee:null,horizontal:!1,itemNav:null,itemSelector:null,smart:!1,activateOn:null,activateMiddle:!1,scrollSource:null,scrollBy:0,scrollHijack:300,scrollTrap:!1,dragSource:null,mouseDragging:!1,touchDragging:!1,releaseSwing:!1,swingSpeed:.2,elasticBounds:!1,dragThreshold:3,interactive:null,scrollBar:null,dragHandle:!1,dynamicHandle:!1,minHandleSize:50,clickBar:!1,syncSpeed:.5,pagesBar:null,activatePageOn:null,pageBuilder:function(a){return"<li>"+(a+1)+"</li>"},forward:null,backward:null,prev:null,next:null,prevPage:null,nextPage:null,cycleBy:null,cycleInterval:5e3,pauseOnHover:!1,startPaused:!1,moveBy:300,speed:0,easing:"swing",startAt:null,keyboardNavBy:null,draggedClass:"dragged",activeClass:"active",disabledClass:"disabled"}}(jQuery,window);</script>
		<script>
			$(function() {
				var $frame = $('#tab-page-category');
				var $wrap = $frame.parent();
				$frame.sly({
					horizontal : 1,
					itemNav : 'centered',
					smart : 1,
					activateOn : 'click',
					mouseDragging : 1,
					touchDragging : 1,
					releaseSwing : 1,
					scrollBar : $wrap.find('.scrollbar'),
					scrollBy : 1,
					startAt : $frame.find('.active'),
					speed : 300,
					elasticBounds : 1,
					easing : 'easeOutExpo',
					dragHandle : 1,
					dynamicHandle : 1,
					clickBar : 1,
					prev : $wrap.find('.prev'),
					next : $wrap.find('.next')
				});
				var tabWidth = $('#tab-page-category').width();
				var categoryWidth = $('.page-category-list').width();
				if (tabWidth < categoryWidth) {
					$('.controls').show();
				}
			});
		</script>
		<div class="clearfix"></div>



		<div class="back-to-top">
			<i class="fas fa-angle-up"></i>
		</div>

		<div class="sidebar-left-mask sidebar-left-trigger"
			data-action="toggle" data-side="left"></div>
		<div class="sidebar-right-mask sidebar-right-trigger"
			data-action="toggle" data-side="right"></div>


		<div class="modal fade all-search-modal eb-search-modal"
			aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h4 class="modal-title">
							<i class="fas fa-search color-grey"></i> <strong>전체 게시판
								검색</strong>
						</h4>
					</div>
					<div class="modal-body margin-bottom-20">
						<form name="fsearchbox" method="get"
							action="https://theme4.eyoom.net/bbs/search.php"
							onsubmit="return fsearchbox_submit(this);" class="eyoom-form">
							<input type="hidden" name="sfl" value="wr_subject||wr_content">
							<input type="hidden" name="sop" value="and"> <label
								for="modal_sch_stx" class="sound_only"><strong>검색어
									입력 필수</strong></label>
							<div class="input input-button">
								<input type="text" name="stx" id="modal_sch_stx" class="sch_stx"
									maxlength="20" placeholder="검색어 입력">
								<div class="button">
									<input type="submit">검색
								</div>
							</div>
						</form>
						<script>
							function fsearchbox_submit(f) {
								if (f.stx.value.length < 2
										|| f.stx.value == $(".sch_stx").attr(
												"placeholder")) {
									alert("검색어는 두글자 이상 입력하십시오.");
									f.stx.select();
									f.stx.focus();
									return false;
								}
								var cnt = 0;
								for (var i = 0; i < f.stx.value.length; i++) {
									if (f.stx.value.charAt(i) == ' ')
										cnt++;
								}
								if (cnt > 1) {
									alert("빠른 검색을 위하여 검색어에 공백은 한개만 입력할 수 있습니다.");
									f.stx.select();
									f.stx.focus();
									return false;
								}
								return true;
							}
						</script>
					</div>
				</div>
			</div>
		</div>


		<div class="modal fade itemuse-iframe-modal" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button aria-hidden="true" data-dismiss="modal" class="close"
							type="button">×</button>
						<h4 class="modal-title">
							<i class="fas fa-edit color-grey"></i> <strong>사용후기 작성하기</strong>
						</h4>
					</div>
					<div class="modal-body">
						<iframe id="itemuse-iframe" width="100%" frameborder="0"></iframe>
					</div>
					<div class="modal-footer">
						<button data-dismiss="modal" class="btn-e btn-e-lg btn-e-dark"
							type="button">
							<i class="fas fa-times"></i> 닫기
						</button>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade itemqa-iframe-modal" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button aria-hidden="true" data-dismiss="modal" class="close"
							type="button">×</button>
						<h4 class="modal-title">
							<i class="fas fa-question-circle color-grey"></i> <strong>상품문의
								작성하기</strong>
						</h4>
					</div>
					<div class="modal-body">
						<iframe id="itemqa-iframe" width="100%" frameborder="0"></iframe>
					</div>
					<div class="modal-footer">
						<button data-dismiss="modal" class="btn-e btn-e-lg btn-e-dark"
							type="button">
							<i class="fas fa-times"></i> 닫기
						</button>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade coupon-iframe-modal" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button aria-hidden="true" data-dismiss="modal" class="close"
							type="button">×</button>
						<h4 class="modal-title">
							<i class="fas fa-ticket-alt color-grey"></i> <strong>쿠폰
								내역</strong>
						</h4>
					</div>
					<div class="modal-body">
						<iframe id="coupon-iframe" width="100%" frameborder="0"></iframe>
					</div>
					<div class="modal-footer">
						<button data-dismiss="modal" class="btn-e btn-e-lg btn-e-dark"
							type="button">
							<i class="fas fa-times"></i> 닫기
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade search-modal" aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button aria-hidden="true" data-dismiss="modal" class="close"
							type="button">×</button>
							<style>
							.modal-title {line-height: 1.82857143;}
							h5.modal-title {font-size: 18px;}
							</style>
						<h5 class="modal-title">
							<i class="fas fa-search color-grey"></i> <strong> 검색 </strong>
						</h5>
					</div>
					<div class="modal-body">
						<fieldset id="bo_sch" class="eyoom-form">
							<form name="fsearch" method="get">
								<input type="hidden" name="bo_table" value="magazine_it">
								<input type="hidden" name="sca" value=""> <input
									type="hidden" name="sop" value="and"> <label for="sfl"
									class="sound_only">검색대상</label>
								<section class="margin-top-10">
									<label class="select"> <select name="sfl" id="sfl"
										class="form-control">
											<option value="wr_subject">제목</option>
											<option value="wr_content">내용</option>
											<option value="wr_subject||wr_content">제목+내용</option>
											<option value="mb_id,1">회원아이디</option>
											<option value="mb_id,0">회원아이디(코)</option>
											<option value="wr_name,1">글쓴이</option>
											<option value="wr_name,0">글쓴이(코)</option>
									</select> <i></i>
									</label>
								</section>
								<section>
									<label for="stx" class="sound_only">검색어<strong
										class="sound_only"> 필수</strong></label>
									<div class="input input-button">
										<input type="text" name="stx" value="" required id="stx">
										<div class="button">
											<input type="submit" value="검색">검색
										</div>
									</div>
								</section>
							</form>
						</fieldset>
					</div>
					<div class="modal-footer">
						<button data-dismiss="modal" class="btn-e btn-e-lg btn-e-dark"
							type="button">
							<i class="fas fa-times"></i> 닫기
						</button>
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
