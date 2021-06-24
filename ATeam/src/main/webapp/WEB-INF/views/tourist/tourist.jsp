<%@page import="com.jayway.jsonpath.JsonPath"%>
<%@page import="com.jayway.jsonpath.DocumentContext"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%! public String getPhoto(String json){
	DocumentContext document = JsonPath.parse(json);
	String imgpath = document.read("$['photoid']['imgpath']", String.class); 
	return imgpath;
}
	%>
<%! public String getRegion(String json){
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

<title>흐흐흐</title>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/default.css">
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/eyoom-form.min.css">
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/common.css">
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/fontawesome-all.min.css">
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/style.css">
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/custom.css">
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/tab_scroll_category.css" type="text/css" media="screen">
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/sweetalert.min.css" type="text/css" media="screen">
<link type="text/css" rel="stylesheet" href="/resources/tourist/css/style.css">

<script type="text/javascript" src="/resources/tourist/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/jquery-migrate-1.4.1.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/jquery.menu.js"></script>
<script type="text/javascript" src="/resources/tourist/js/common.js"></script>
<script type="text/javascript" src="/resources/tourist/js/wrest.js"></script>
<script type="text/javascript" src="/resources/tourist/js/placeholders.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/jquery.bootstrap-hover-dropdown.min.js"></script>
<script type="text/javascript" src="/resources/tourist/js/jquery.sidebar.min.js"></script>
</head>

<body>

<div class="wrapper">


<div class="basic-body container page-padding ft-padding">
 <div class="basic-body-page">
                                             
<div class="row">
                                            
            
<style>
.board-list .board-setup {position:relative;border:1px solid #d5d5d5;height:30px;margin-bottom:20px}
.board-list .board-setup .select {position:absolute;top:-1px;left:-1px;display:inline-block;width:200px}
.board-list .board-setup-btn-box {position:absolute;top:-1px;right:-1px;display:inline-block;width:420px}
.board-list .board-setup-btn {float:left;width:25%;height:30px;line-height:30px;color:#fff;text-align:center;font-size:12px}
.board-list .board-setup-btn:nth-child(odd) {background:#59595B}
.board-list .board-setup-btn:nth-child(even) {background:#676769}
.board-list .board-setup-btn:hover {opacity:0.8}
.board-list .bo_current {color:#FF4848}
.board-list .board-btn-adm li {float:left;margin-right:5px}
.board-list .board-list-footer {margin-top:20px}
.board-list .favorite-setup {display:inline-block;width:100px;margin-left:15px}
.board-list .favorite-setup .toggle {padding-right:37px}
.board-list .multi-btn-wrap {position:relative;height:40px;margin-bottom:20px}
.multi-type-btn-wrap {position:absolute;top:0;right:0;margin-bottom:0;z-index:1}
.multi-type-btn-wrap li {position:relative;float:left}
.multi-type-btn-wrap button {position:relative;margin:0;padding:0;width:40px;height:40px;border:1px solid #d5d5d5;cursor:pointer;background:#fff;font-size:15px;color:#454545}
.multi-type-btn-wrap button:hover {background:#f5f5f5}
.multi-type-btn-wrap button .multi-type-on + i {color:#E52700}
.multi-type-btn-wrap button.multi-type-list-btn {border-right:0}
.multi-type-btn-wrap button.multi-type-webzine-btn {border-right:0}
.multi-type-btn-wrap button.multi-type-gallery-btn {border-right:0}
.board-multi .multi-item {position:relative;font-size:12px;margin-bottom:10px;border-top:1px solid #e5e5e5;background:#fff;width:100%}
.board-multi .multi-item-in {position:relative;padding:20px 0;min-height:170px;box-sizing:border-box}
.board-multi .multi-item-in .multi-img {position:absolute;top:20px;left:0;width:200px;z-index:1}
.board-multi .multi-item-in .multi-desc {position:relative}
.board-multi .multi-item-in .multi-noimg-desc {position:relative}
.board-multi .multi-item-in .multi-img-box {position:relative;overflow:hidden;max-height:140px}
.board-multi .multi-item-in .multi-img-box-in {position:relative;overflow:hidden;width:100%}
.board-multi .multi-item-in .multi-img-box-in:after {content:"";text-align:center;position:absolute;display:block;left:0;top:0;opacity:0;-moz-transition:all 0.2s ease 0s;-webkit-transition:all 0.2s ease 0s;-ms-transition:all 0.2s ease 0s;-o-transition:all 0.2s ease 0s;transition:all 0.2s ease 0s;width:100%;height:100%;background:rgba(0,0,0,0.3)}
.board-multi .multi-item-in .multi-img-box-in:before {content:"";display:block;padding-top:60%}
.board-multi .multi-item-in .multi-img-box-in img {position:absolute;top:0;left:0;right:0;bottom:0}
.board-multi .multi-item-in .multi-img-box-in .movie-icon {display:inline-block;position:absolute;top:50%;left:50%;width:40px;height:40px;line-height:40px;text-align:center;color:#fff;font-size:30px;margin-top:-20px;margin-left:-20px;z-index:1}
.board-multi .multi-item:hover .multi-img-box-in:after {opacity:1}
.board-multi .multi-item-in .multi-desc-ymd {position:absolute;top:0;left:215px;overflow:hidden;width:80px;height:80px;background:#fff;border:1px solid #d5d5d5;text-align:center;box-sizing:border-box}
.board-multi .multi-item-in .multi-desc-ym {font-size:11px;color:#959595;margin:12px 0 6px;line-height:1}
.board-multi .multi-item-in .multi-desc-d {font-size:40px;font-weight:bold;color:#656565;margin:0;line-height:1}
.board-multi .multi-item-in .multi-subj-cont {position:relative;overflow:hidden;margin-left:310px}
.board-multi .multi-item-in h4 {position:relative;overflow:hidden;font-size:15px;color:#000;height:37px;margin-top:2px;margin-bottom:5px}
.board-multi .multi-item:hover .multi-item-in h4 {text-decoration:underline}
.board-multi .multi-item-in .multi-checkbox {display:inline-block;position:absolute;top:-5px;right:-11px;z-index:1}
.board-multi .multi-item-in .multi-cont {position:relative;overflow:hidden;height:36px;font-weight:300;color:#757575;margin-bottom:15px}
.board-multi .multi-item-in .multi-info {position:relative;border-top:1px solid #f2f2f2;padding-top:7px;margin-left:215px}
.board-multi .multi-item-in .multi-photo {display:inline-block;width:26px;height:26px;margin-right:2px;border:1px solid #e5e5e5;padding:1px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;-webkit-border-radius:50% !important;-moz-border-radius:50% !important;border-radius:50% !important}
.board-multi .multi-item-in .multi-photo img {width:100%;height:auto;-webkit-border-radius:50% !important;-moz-border-radius:50% !important;border-radius:50% !important}
.board-multi .multi-item-in .multi-photo .multi-user-icon {width:22px;height:22px;font-size:14px;line-height:22px;text-align:center;background:#959595;color:#fff;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;display:inline-block;white-space:nowrap;vertical-align:baseline;-webkit-border-radius:50% !important;-moz-border-radius:50% !important;border-radius:50% !important}
.board-multi .multi-item-in .multi-photo .multi-user-icon i {margin-right:0 !important}
.board-multi .multi-item-in .multi-nick {margin-right:5px}
.board-multi .multi-item-in .multi-lv-icon {display:inline-block;margin-left:2px}
.board-multi .multi-item-in .multi-info > span {color:#959595;font-size:11px}
.board-multi .multi-item-in .multi-info > span i {margin-right:5px}
.board-multi .multi-item-in .multi-info > span > strong {font-weight:normal;margin-right:10px}
.board-multi .multi-item-in .multi-noimg-desc .multi-desc-ymd {left:0}
.board-multi .multi-item-in .multi-noimg-desc .multi-subj-cont {margin-left:95px}
.board-multi .multi-item-in .multi-noimg-desc .multi-info {margin-left:0}
.board-multi .multi-item:hover .multi-desc-ymd {background:#FF4948;border:1px solid #FF4948}
.board-multi .multi-item:hover .multi-desc-ym {color:#fff}
.board-multi .multi-item:hover .multi-desc-d {color:#fff}
.board-multi .multi-ratings .star-ratings-list {position:absolute;top:10px;right:0;width:60px;height:18px;background:#fff}
.board-multi .multi-ratings .star-ratings-list li {padding:0;float:left;margin-right:0}
.board-multi .multi-ratings .star-ratings-list li .rating {color:#a5a5a5;font-size:10px;line-height:normal}
.board-multi .multi-ratings .star-ratings-list li .rating-selected {color:#FF4848;font-size:10px}
.board-multi .multi-item-notice {position:relative;overflow:hidden;border:1px solid #e5e5e5;background:#fff;padding:8px 10px;margin-bottom:30px;-webkit-border-radius:2px !important;-moz-border-radius:2px !important;border-radius:2px !important}
.board-multi .multi-type-list .multi-item-in {min-height:80px}
.board-multi .multi-type-list .multi-item-in .multi-img {display:none}
.board-multi .multi-type-list .multi-item-in .multi-desc-ymd {left:0}
.board-multi .multi-type-list .multi-item-in .multi-subj-cont {margin-left:95px}
.board-multi .multi-type-list .multi-item-in .multi-subj-cont .multi-cont {display:none}
.board-multi .multi-type-list .multi-item-in .multi-info {margin-left:95px}
.board-multi .multi-type-gallery {margin-left:-5px;margin-right:-5px}
.board-multi .multi-type-gallery:after {content:"";display:block;clear:both}
.board-multi .multi-type-gallery .multi-item {margin:0;border:0;padding:5px;background:#fff;width:50%;float:left;box-sizing:border-box}
.board-multi .multi-type-gallery .multi-item-in {position:relative;border:1px solid #e5e5e5;padding:10px;min-height:inherit}
.board-multi .multi-type-gallery .multi-item-in .multi-img {position:relative;top:inherit;left:inherit;width:inherit;margin-bottom:15px}
.board-multi .multi-type-gallery .multi-item-in .multi-img-box {max-height:inherit}
.board-multi .multi-type-gallery .multi-item-in .multi-desc-ymd {left:0}
.board-multi .multi-type-gallery .multi-item-in .multi-subj-cont {margin-left:95px}
.board-multi .multi-type-gallery .multi-item-in .multi-info {margin-left:0}
.board-multi .multi-type-gallery .multi-item-in .multi-info-rating {min-height:43px}
.board-multi .multi-type-gallery .multi-ratings .star-ratings-list {top:32px}
.board-multi .multi-type-gallery .multi-noimg-desc .multi-ratings .star-ratings-list {top:32px}
.board-multi .multi-type-wide .multi-item {margin:0;border:0;padding:10px 0;background:#fff;width:100%;float:left;box-sizing:border-box}
.board-multi .multi-type-wide .multi-item-in {position:relative;border:1px solid #e5e5e5;padding:15px;min-height:inherit}
.board-multi .multi-type-wide .multi-item-in .multi-img {position:relative;top:inherit;left:inherit;width:inherit;margin-bottom:15px}
.board-multi .multi-type-wide .multi-item-in .multi-img-box {max-height:inherit}
.board-multi .multi-type-wide .multi-item-in .multi-desc-ymd {left:0}
.board-multi .multi-type-wide .multi-item-in .multi-subj-cont {margin-left:95px}
.board-multi .multi-type-wide .multi-item-in .multi-info {margin-left:0}
.board-multi .multi-type-wide .multi-item-in .multi-info-rating {min-height:43px}
.board-multi .multi-type-wide .multi-ratings .star-ratings-list {top:32px}
.board-multi .multi-type-wide .multi-noimg-desc .multi-ratings .star-ratings-list {top:32px}
.board-multi .multi-item-notice .label {font-size:11px;font-weight:normal;margin-bottom:0}
.board-list .view-infinite-more {margin-top:30px;margin-bottom:40px}
.board-list .view-infinite-more .btn-e-xlg {position:relative;height:40px;line-height:40px;padding:0 100px;font-size:16px !important;border:1px solid #b5b5b5;background:#fff;color:#757575}
.board-list .view-infinite-more .btn-e-xlg i {position:absolute;top:5px;right:5px;font-size:30px;color:#fff;transition:all 0.2s ease-in-out}
.board-list .view-infinite-more .btn-e-xlg:hover {border:1px solid #959595;background:#f5f5f5;color:#000}
.board-list .view-infinite-more .btn-e-xlg:hover i {color:#b5b5b5}
#infscr-loading {text-align:center;z-index:100;position:absolute;left:50%;bottom:0;width:200px;margin-left:-100px;padding:8px 0;background:#000;opacity:0.8;color:#fff}
@media (max-width: 650px) {
    .board-list .multi-btn-wrap {position:relative;height:70px;margin-bottom:20px}
    .multi-type-btn-wrap {top:30px}
    .multi-type-btn-wrap button.multi-type-gallery-btn {border-right:1px solid #d5d5d5}
    .multi-type-btn-wrap button.multi-type-wide-btn {display:none}
        .board-multi .multi-item-in .multi-img {top:110px;left:0;width:80px}
    .board-multi .multi-item-in .multi-img-box {max-height:60px}
    .board-multi .multi-item-in .multi-desc-ymd {left:0}
    .board-multi .multi-item-in .multi-subj-cont {margin-left:95px}
    .board-multi .multi-item-in .multi-info {margin-left:95px}
    .board-multi .multi-ratings .star-ratings-list {top:30px}
    .board-multi .multi-noimg-desc .multi-ratings .star-ratings-list {top:10px}
        .board-multi .multi-type-list .multi-item-in h4 {font-size:13px;line-height:1.5;height:36px;margin-bottom:10px}
    .board-multi .multi-type-list .multi-noimg-desc .multi-ratings .star-ratings-list {top:30px}
        .board-multi .multi-type-gallery .multi-item {padding:10px 5px;width:100%}
        .board-multi .multi-type-wide .multi-item-in {padding:10px}
}
@media (min-width: 768px) {
    .board-view-modal {width:720px;margin:10px auto}
    .board-view-modal .modal-header, .board-view-modal .modal-body, .board-view-modal .modal-footer {padding:10px 20px}
}
@media (min-width: 992px) {
    .board-view-modal {width:940px}
}
@media (min-width: 1200px) {
    .board-view-modal {width:1140px}
}
</style>

<div id="fakeloader"></div>

<div class="board-list">
	<div class="board-info margin-bottom-20">
        <div class="pull-left margin-top-5 font-size-12 color-grey">
			<u>전체 11 건 - 1 페이지</u>
		</div>
                <div class="clearfix"></div>
    </div>
    
            
	<div class="multi-btn-wrap">
		<span class="pull-left">
			<a class="btn-e btn-e-dark" type="button" data-toggle="modal" data-target=".search-modal">
				<i class="fas fa-search"></i>
			</a>
        </span>
        <ul class="list-unstyled multi-type-btn-wrap pull-right">
            <li><button type="button" class="multi-type-btn multi-type-list-btn" title="리스트뷰"><span class="sound_only">리스트뷰</span><i class="fas fa-align-justify" aria-hidden="true"></i></button></li>
            <li><button type="button" class="multi-type-btn multi-type-webzine-btn" title="웹진뷰"><span class="sound_only">웹진뷰</span><i class="fas fa-th-list" aria-hidden="true"></i></button></li>
            <li><button type="button" class="multi-type-btn multi-type-gallery-btn" title="갤러리뷰"><span class="sound_only">갤러리뷰</span><i class="fas fa-th-large" aria-hidden="true"></i></button></li>
            <li><button type="button" class="multi-type-btn multi-type-wide-btn" title="와이드뷰"><span class="sound_only">와이드뷰</span><i class="fas fa-square-full" aria-hidden="true"></i></button></li>
            <div class="clearfix"></div>
        </ul>
        <div class="clearfix"></div>
    </div>
	<div class="board-multi">
        <div id="multi_item_type" class="multi-type-webzine">
        
				<!-- FOR Start -->
			<c:forEach items="${tlist}" var="place" >
			
			
			<div class="multi-item">
                <div class="multi-item-in">
					<div class="multi-img">
                        <a href="/tourist_view" ><!-- 첫번째 사진 연결 -->
                            <div class="multi-img-box">
                                <div class="multi-img-box-in">
<!--                                 	getPhoto(place.photo) -->
										<c:set var="photo" value="${place.photo}" />
                                    <img class="img-responsive" src="<%=getPhoto((String)(pageContext.getAttribute("photo"))) %> " alt=""> <!-- 첫번째 사진 --> 
								</div>
                            </div>
                        </a>
                    </div>
                    <c:set var="region1" value="${place.region1}" />
                    <c:set var="region2" value="${place.region2}" />
                    <div class="multi-desc">
						<div class="multi-desc-ymd">
                            <div class="multi-desc-ym">
                                <%= getRegion((String)(pageContext.getAttribute("region1"))) %>
                           	</div>
                           	<br>
                            <div class="multi-desc-md">
                                <%= getRegion((String)(pageContext.getAttribute("region2"))) %>
                            </div>
						</div>
                        <div class="multi-subj-cont">
                            <h4>
								<a href="/tourist_view" ><!-- 첫번째 글 연결 -->
									<strong>${place.title}</strong>
								</a>
							</h4>
                            <p class="multi-cont">${place.introduction}</p>
                        </div>
                        <div class="multi-info multi-info-rating">
							<span class="multi-photo">
								<img class="user-photo" src="http://theme4.eyoom.net/data/member/profile/admin.png" alt="회원사진">
							</span>
							<span class="multi-nick">
								<span class="sv_wrap">
								<a href="http://theme4.eyoom.net/bbs/profile.php?mb_id=admin" data-toggle="dropdown" title="최고관리자 자기소개" target="_blank" rel="nofollow" onclick="return false;"> 최고관리자</a>
								<!-- <ul class="sv dropdown-menu" role="menu">
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
							<span class="multi-lv-icon">
								<img src="http://theme4.eyoom.net/theme/eb4_basic/image/level_icon/eyoom/basic/admin.gif" alt="레벨">
							</span><!--레벨 아이콘-->
							<span>
								<i class="far fa-clock"></i>
<!-- 								<strong class="color-black">17시 31분</strong> -->
							</span>
							<span>
								<i class="fas fa-eye"></i>
								<strong class="color-black">조회수 미구현</strong>
							</span>
							<span>
								<i class="far fa-thumbs-up"></i>
								<strong class="color-green">좋아요 junction</strong>
							</span>
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
	    	<span class="pull-left">
	        	<a class="btn-e btn-e-dark" type="button" data-toggle="modal" data-target=".search-modal"><i class="fas fa-search"></i></a>
	        </span>
	    </div>
	   	<div class="pull-right"></div>
	    <div class="clearfix"></div>
	</div>
</div>

</div>
<iframe name="photoframe" id="photoframe" style="display:none;"></iframe>



<div class="board-pagination">
            
<style>
.eb-pagination-wrap {position:relative;text-align:center;padding:7px;margin-top:30px}
.eb-pagination {position:relative;list-style:none;display:inline-block;padding:0;margin:0}
.eb-pagination li {display:inline}
.eb-pagination a {display:inline-block;font-size:12px;text-decoration:none;min-width:28px;height:28px;padding:0 5px;color:#fff;border:1px solid transparent;line-height:26px;text-align:center;color:#757575;position:relative;z-index:1}
.eb-pagination a:active {outline:none}
.eb-pagination a:hover {color:#000;background:#e5e5e5}
.eb-pagination a.active {cursor:default;background:#4B4B4D;color:#fff}
.eb-pagination a.active:hover {color:#fff;background:#4B4B4D}
.eb-pagination a.next,.eb-pagination a.prev {color:#959595}
.eb-pagination a.next:hover,.eb-pagination a.prev:hover {color:#000}
</style>

<div class="eb-pagination-wrap">
    <ul class="eb-pagination">
        <li><a href="#"><i class="fas fa-angle-double-left"></i></a></li><!-- 첫페이지로 가기 -->
        <li><a href="#" class="prev"><i class="fas fa-angle-left"></i></a></li><!-- 이전페이지 -->
                        <li><a href="#" class="active">1<span class="sound_only">페이지</span></a></li>
                <li><a href="#" class="next"><i class="fas fa-angle-right"></i></a></li><!-- 다음페이지 -->
        <li><a href="#"><i class="fas fa-angle-double-right"></i></a></li><!-- 끝페이지 -->
    </ul>
</div>    </div>

<script src="http://theme4.eyoom.net/theme/eb4_basic/plugins/fakeLoader/fakeLoader.min.js"></script>
<script src="http://theme4.eyoom.net/theme/eb4_basic/plugins/sweetalert/sweetalert.min.js"></script>
<script src="http://theme4.eyoom.net/theme/eb4_basic/plugins/imagesloaded/imagesloaded.pkgd.min.js"></script>

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

var multi_bo_table = "magazine_it";

$.fn.listType = function(type) {
    var $el = this.find(".multi-item");
    var count = $el.size();
    if(count < 1)
        return;

    var cl = this.attr("class");
    if(cl && !this.data("class")) {
        this.data("class", cl);
    }

    $("button.multi-type-btn span").removeClass("multi-type-on").html("");

    if(type == "webzine") {
        this.removeClass("multi-type-webzine");
        if(this.data("class")) {
            this.attr("class", this.data("class"));
        }

        $("button.multi-type-webzine-btn span").addClass("multi-type-on").html("<b class=\"sound_only\"> 선택됨</b>");
    } else if(type == "gallery") {
        if(this.data("class")) {
            this.removeAttr("class");
        }
        this.addClass("multi-type-gallery");

        $("button.multi-type-gallery-btn span").addClass("multi-type-on").html("<b class=\"sound_only\"> 선택됨</b>");
    } else if(type == "wide") {
        if(this.data("class")) {
            this.removeAttr("class");
        }
        this.addClass("multi-type-wide");

        $("button.multi-type-wide-btn span").addClass("multi-type-on").html("<b class=\"sound_only\"> 선택됨</b>");
    } else if(type == "list") {
        if(this.data("class")) {
            this.removeAttr("class");
        }
        this.addClass("multi-type-list");

        $("button.multi-type-list-btn span").addClass("multi-type-on").html("<b class=\"sound_only\"> 선택됨</b>");
    }

    set_cookie("ck_itemlist"+multi_bo_table+"_type", type, 1, g5_cookie_domain);
}

$(function() {
    if(itemlist_type = get_cookie("ck_itemlist"+multi_bo_table+"_type")) {
        $("#multi_item_type").listType(itemlist_type);
    }

    $("button.multi-type-btn").on("click", function() {
        if($(this).hasClass("multi-type-webzine-btn")) {
            $("#multi_item_type").listType("webzine");
        } else if($(this).hasClass("multi-type-gallery-btn")) {
            $("#multi_item_type").listType("gallery");
        } else if($(this).hasClass("multi-type-wide-btn")) {
            $("#multi_item_type").listType("wide");
        } else if($(this).hasClass("multi-type-list-btn")) {
            $("#multi_item_type").listType("list");
        }
    });
});

</script>
                </section>
                                    

  
                            
            
<style>
.ol-before {position:relative;display:block;font-size:12px;background:#fff;border:1px solid #e5e5e5;padding:15px 10px 10px;margin-bottom:25px}
.ol-account {font-size:12px;margin-bottom:5px;font-weight:bold}
.ol-account a:hover {text-decoration:underline}
</style>


        
<style>
.ol-social-icons {margin-top:15px}
.ol-social-icons h6 {text-align:center;margin:0 0 10px;padding:0;font-size:12px;color:#757575}
</style>
        <script>
        jQuery(function($){
            $(".sns-wrap").on("click", "a.social_link", function(e){
                e.preventDefault();

                var pop_url = $(this).attr("href");
                var newWin = window.open(
                    pop_url,
                    "social_sing_on",
                    "location=0,status=0,scrollbars=1,width=600,height=500"
                );

                if(!newWin || newWin.closed || typeof newWin.closed=='undefined')
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
        $omi_label.css('visibility','hidden');
    });
    $omp.focus(function() {
        $omp_label.css('visibility','hidden');
    });
    $omi.blur(function() {
        $this = $(this);
        if ($this.attr('id') == "ol_id" && $this.attr('value') == "") $omi_label.css('visibility','visible');
    });
    $omp.blur(function() {
        $this = $(this);
        if ($this.attr('id') == "ol_pw" && $this.attr('value') == "") $omp_label.css('visibility','visible');
    });

    $("#auto_login").click(function(){
        if ($(this).is(":checked")) {
            swal({
                html: true,
                title: "알림",
                text: "<div class='alert alert-warning text-left font-size-12'>자동로그인을 사용하시면 다음부터 회원아이디와 비밀번호를 입력하실 필요가 없습니다.<br>공공장소에서는 개인정보가 유출될 수 있으니 사용을 자제하여 주십시오.</div><strong>자동로그인을 사용하시겠습니까?</strong>",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#FDAB29",
                confirmButtonText: "확인",
                cancelButtonText: "취소",
                closeOnConfirm: true,
                closeOnCancel: true
            },
            function(isConfirm){
                if (isConfirm) {
                    $("#auto_login").attr("checked");
                } else {
                    $("#auto_login").removeAttr("checked");
                }
            });
        }
    });
});

function fhead_submit(f) {
    if (f.mb_id.value == '' || f.mb_id.value == $("#ol_id").attr("placeholder")) {
        alert("아이디를 입력해 주세요.");
        f.mb_id.select();
        f.mb_id.focus();
        return false;
    }
    if (f.mb_password.value == '' || f.mb_password.value == $("#ol_pw").attr("placeholder")) {
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
    $('.eblatest-newpost-tabs li a').hover(function (e) {
        e.preventDefault()
        $(this).tab('show');
    });

    $('.eblatest-newpost-tabs li a').click(function (e) {
        return true;
    });

    $('.eblatest-newpost-tabs li a').on("click",function (e) {
        if ($(this).attr("data-href")) {
            window.location.href = $(this).attr("data-href");
        }
    });
});
</script>
                          

<script src="http://theme4.eyoom.net/theme/eb4_basic/plugins/sly/vendor_plugins.min.js"></script>
<script src="http://theme4.eyoom.net/theme/eb4_basic/plugins/sly/sly.min.js"></script>
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
</script>                                <div class="clearfix"></div>
       
               
            
    <div class="back-to-top">
        <i class="fas fa-angle-up"></i>
    </div>

<div class="sidebar-left-mask sidebar-left-trigger" data-action="toggle" data-side="left"></div>
<div class="sidebar-right-mask sidebar-right-trigger" data-action="toggle" data-side="right"></div>


<div class="modal fade all-search-modal eb-search-modal" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h4 class="modal-title"><i class="fas fa-search color-grey"></i> <strong>전체 게시판 검색</strong></h4>
            </div>
            <div class="modal-body margin-bottom-20">
                <form name="fsearchbox" method="get" action="http://theme4.eyoom.net/bbs/search.php" onsubmit="return fsearchbox_submit(this);" class="eyoom-form">
                <input type="hidden" name="sfl" value="wr_subject||wr_content">
                <input type="hidden" name="sop" value="and">
                <label for="modal_sch_stx" class="sound_only"><strong>검색어 입력 필수</strong></label>
                <div class="input input-button">
                    <input type="text" name="stx" id="modal_sch_stx" class="sch_stx" maxlength="20" placeholder="검색어 입력">
                    <div class="button"><input type="submit">검색</div>
                </div>
                </form>
                <script>
                function fsearchbox_submit(f) {
                    if (f.stx.value.length < 2 || f.stx.value == $(".sch_stx").attr("placeholder")) {
                        alert("검색어는 두글자 이상 입력하십시오.");
                        f.stx.select();
                        f.stx.focus();
                        return false;
                    }
                    var cnt = 0;
                    for (var i=0; i<f.stx.value.length; i++) {
                        if (f.stx.value.charAt(i) == ' ') cnt++;
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
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title"><i class="fas fa-edit color-grey"></i> <strong>사용후기 작성하기</strong></h4>
            </div>
            <div class="modal-body">
                <iframe id="itemuse-iframe" width="100%" frameborder="0"></iframe>
            </div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn-e btn-e-lg btn-e-dark" type="button"><i class="fas fa-times"></i> 닫기</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade itemqa-iframe-modal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title"><i class="fas fa-question-circle color-grey"></i> <strong>상품문의 작성하기</strong></h4>
            </div>
            <div class="modal-body">
                <iframe id="itemqa-iframe" width="100%" frameborder="0"></iframe>
            </div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn-e btn-e-lg btn-e-dark" type="button"><i class="fas fa-times"></i> 닫기</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade coupon-iframe-modal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title"><i class="fas fa-ticket-alt color-grey"></i> <strong>쿠폰 내역</strong></h4>
            </div>
            <div class="modal-body">
                <iframe id="coupon-iframe" width="100%" frameborder="0"></iframe>
            </div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn-e btn-e-lg btn-e-dark" type="button"><i class="fas fa-times"></i> 닫기</button>
            </div>
        </div>
    </div>
</div>
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
    $('.itemuse-iframe-modal').modal('show').on('hidden.bs.modal', function() {
        $("#itemuse-iframe").attr("src", "");
        $('html').css({overflow: ''});
    });
    $('.itemuse-iframe-modal').modal('show').on('shown.bs.modal', function() {
        $("#itemuse-iframe").attr("src", href);
        $('#itemuse-iframe').height(parseInt($(window).height() * 0.7));
        $('html').css({overflow: 'hidden'});
    });
    return false;
}

function itemqa_modal(href) {
    $('.itemqa-iframe-modal').modal('show').on('hidden.bs.modal', function() {
        $("#itemqa-iframe").attr("src", "");
        $('html').css({overflow: ''});
    });
    $('.itemqa-iframe-modal').modal('show').on('shown.bs.modal', function() {
        $("#itemqa-iframe").attr("src", href);
        $('#itemqa-iframe').height(parseInt($(window).height() * 0.7));
        $('html').css({overflow: 'hidden'});
    });
    return false;
}

function coupon_modal(href) {
    $('.coupon-iframe-modal').modal('show').on('hidden.bs.modal', function() {
        $("#coupon-iframe").attr("src", "");
        $('html').css({overflow: ''});
    });
    $('.coupon-iframe-modal').modal('show').on('shown.bs.modal', function() {
        $("#coupon-iframe").attr("src", "http://theme4.eyoom.net/shop/coupon.php");
        $('#coupon-iframe').height(parseInt($(window).height() * 0.7));
        $('html').css({overflow: 'hidden'});
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
        $('.poll-result-iframe-modal').modal('show').on('hidden.bs.modal', function () {
        $("#poll-result-iframe").attr("src", "");
        $('html').css({overflow: ''});
    });
    $('.poll-result-iframe-modal').modal('show').on('shown.bs.modal', function () {
        $("#poll-result-iframe").attr("src", url);
        $('#poll-result-iframe').height(parseInt($(window).height() * 0.7));
        $('html').css({overflow: 'hidden'});
    });
    return false;
}
</script>



<script src="http://theme4.eyoom.net/theme/eb4_basic/js/app.js?ver=191202"></script>
<script>
$(document).ready(function() {
    App.init();
});

</script>


<script>
$(function() {
    // 폰트 리사이즈 쿠키있으면 실행
    font_resize("container", get_cookie("ck_font_resize_rmv_class"), get_cookie("ck_font_resize_add_class"));
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
<!-- 사용스킨 : basic -->
