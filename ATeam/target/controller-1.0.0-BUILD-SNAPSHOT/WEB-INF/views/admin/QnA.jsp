<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" sizes="16x16"
	href="../plugins/images/favicon.png">
<title>RENTAL BYCICLE COMPANY</title>
<!-- Bootstrap Core CSS -->
<link href="/resources/admin/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.9/css/all.css">
<script src="/resources/write/js/jquery-3.3.1.min.js"></script>
<!-- Menu CSS -->
<link
	href="/resources/admin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"
	rel="stylesheet">
<!-- animation CSS -->
<link href="/resources/admin/css/animate.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="/resources/admin/css/style.css" rel="stylesheet">
<!-- color CSS -->
<link href="/resources/admin/css/colors/blue-dark.css" id="theme"
	rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<link href="/resources/admin/css/index.qna.css" rel="stylesheet">
</head>
<body>
	<!-- Preloader -->
	<div class="preloader">
		<div class="cssload-speeding-wheel"></div>
	</div>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top m-b-0">
			<div class="navbar-header">
				<a class="navbar-toggle hidden-sm hidden-md hidden-lg "
					href="javascript:void(0)" data-toggle="collapse"
					data-target=".navbar-collapse"><i class="fa fa-bars"></i></a>


				<ul class="nav navbar-top-links navbar-right pull-right">
					<li><a class="profile-pic" href="#"> </a></li>
				</ul>
			</div>
		</nav>
		<!-- Left navbar-header -->
		<%@include file="navi.jsp"%>
		<!-- Left navbar-header end -->
		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row bg-title">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">Q&A / ConTact Us TableSheet</h4>
					</div>
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
						<ol class="breadcrumb">
							<li><a href="#">Dashboard</a></li>
							<li class="active">Q&A / ConTact Us</li>
						</ol>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="white-box">
							<h3 class="box-title">Q&A テーブル</h3>
							<div class="table-responsive" style="margin-bottom: 30px;">
								<table class="table table-striped" id="QNAtable" style="text-align: center;">
									<thead style="border-bottom: 2px double">
										<tr>
											<th style="text-align: center;" scope="row">#</th>
											<th style="text-align: center;" scope="row">タイトル</th>
											<th style="text-align: center;" scope="row">内容</th>
											<th style="text-align: center;" scope="row">作成者</th>
											<th style="text-align: center;" scope="row">作成日</th>
										</tr>
									</thead>
									<tbody style="text-align: center;">
										<c:set
											value="${pageMaker.total - (pageMaker.cri.pageNum - 1) * pageMaker.cri.amount}"
											var="bno"></c:set>
										<c:forEach items="${qa }" var="no">

											<tr>
												<td>${bno}</td>
												<td><a href="${no.num }" id="num">${no.title }</a></td>
												<td style="white-space: nowrap; overflow: hidden;  text-overflow: ellipsis; height: 20px;">${fn:substring(no.content,0,30) }...</td>
												<td class="${no.writer }" id="userid">管理者</td>
												<td><fmt:formatDate value="${no.regdate }" pattern="YY-MM-dd HH:MM"/></td>
												<td><button class="btn btn-dangerous" id="delete">削除</button></td>
											</tr>
											<c:set value="${bno-1 }" var="bno"></c:set>
										</c:forEach>

									</tbody>
								</table>
							</div>

							<div class="flex paging">
								<ul>
									<c:if test="${pageMaker.prev }">
										<li><a href="${pageMaker.startPage - 1 }"><i
												class="fa  fa-arrow-left"></i></a></li>
									</c:if>
									<c:forEach var="num" begin="${pageMaker.startPage }"
										end="${pageMaker.endPage }">
										<li><a href="${num }"
											class="${pageMaker.cri.pageNum == num ? 'active':''  }">${num }</a></li>
									</c:forEach>
									<c:if test="${pageMaker.next }">
										<li><a href="${pageMaker.endPage+1}"><i
												class="fa  fa-arrow-right"></i></a></li>
									</c:if>
									<input type="button" value="글쓰기" class="btn"
										style="position: relative; top: 10px; right: -140px;"
										onclick="movewrite()">

								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

				<!-- Contact Us  -->
				<!-- /row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="white-box">
							<h3 class="box-title">ConTactUs テーブル</h3>

							<div class="table-responsive" style="margin-bottom: 30px;">
								<table class="table table-striped" id="contable"
									style="text-align: center;">
									<thead style="border-bottom: 2px double">
										<tr >
											<th style="text-align: center;" scope="row">#</th>
											<th style="text-align: center;" scope="row">タイトル</th>
											<th style="text-align: center;" scope="row">メッセージ</th>
											<th style="text-align: center;" scope="row">メール</th>
											<th style="text-align: center;" scope="row">作成日</th>
											<th style="text-align: center;" scope="row">状態</th>
										</tr>
									</thead>
									<tbody style="text-align: center;">
										<c:set
											value="${pageMaker_c.total - (pageMaker_c.cri_c.pageNum_c - 1) * pageMaker_c.cri_c.amount_c}"
											var="bno"></c:set>
										<c:forEach items="${cs }" var="no">

											<tr>
												<td>${bno}</td>
												<td><a href="${no.num }" id="num">${no.title }</a></td>
												<td>${no.message }</td>
												<td class="${no.email }" id="userid">${no.email }</td>
												<td><fmt:formatDate value="${no.regdate }" pattern="YY-MM-dd HH:MM" /></td>
												<td>${no.status == '1' ? '未読' : '読む'}</td>
											</tr>
											<c:set value="${bno-1 }" var="bno"></c:set>
										</c:forEach>

									</tbody>
								</table>
							</div>
							<div class="flex pagings">
								<ul>
									<c:if test="${pageMaker_c.prev }">
										<li><a href="${pageMaker_c.startPage - 1 }"><i
												class="fa  fa-arrow-left"></i></a></li>
									</c:if>
									<c:forEach var="num" begin="${pageMaker_c.startPage }"
										end="${pageMaker_c.endPage }">
										<li><a href="${num }"
											class="${pageMaker_c.cri_c.pageNum_c == num ? 'active':''  }">${num }</a></li>
									</c:forEach>
									<c:if test="${pageMaker_c.next }">
										<li><a href="${pageMaker_c.endPage+1}"><i
												class="fa  fa-arrow-right"></i></a></li>
									</c:if>


								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
			<footer class="footer text-center"> 2017 &copy; Pixel Admin
				brought to you by wrappixel.com </footer>
		</div>
		<!-- /#page-wrapper -->
	</div>
	<form id="actionForm" action="/QnA/write" method="get"></form>
	<!-- /#wrapper -->
	<!-- jQuery -->
	<script
		src="/resources/admin/plugins/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="/resources/admin/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Menu Plugin JavaScript -->
	<script
		src="/resources/admin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
	<!--slimscroll JavaScript -->
	<script src="/resources/admin/js/jquery.slimscroll.js"></script>
	<!--Wave Effects -->
	<script src="/resources/admin/js/waves.js"></script>
	<!-- Custom Theme JavaScript -->
	<script src="/resources/admin/js/custom.min.js"></script>
	<script type="text/javascript">
		function movewrite() {
	let userid = '<%=request.getParameter("userid")%>';
			var form = $("#actionForm");
			form
					.append("<input type='hidden' name='userid' value='"+userid+"'>")
			form.submit();
		}
	</script>
	<script type="text/javascript">
	let userid = '<%=request.getParameter("userid")%>';
		$(".paging a").on("click", function(e) {
			e.preventDefault();
			var num = $(this).attr("href");
			var form = $("#actionForm");
			$(form).attr("action", "/admin/QnA");
			$(form).attr("method", "get");
			form.append("<input type='hidden' name='pageNum' value='"+num+"'>");
			form.append("<input type='hidden' name='userid' value='"+userid+"'>");
			form.submit();

		})
		$(".pagings a").on("click", function(e) {
			e.preventDefault();
			var num = $(this).attr("href");
			var form = $("#actionForm");
			$(form).attr("action", "/admin/QnA");
			$(form).attr("method", "get");
			form.append("<input type='hidden' name='pageNum_c' value='"+num+"'>");
			form.append("<input type='hidden' name='userid' value='"+userid+"'>");
			form.submit();

		})
		$("#contable tbody tr #num").on("click", function(e) {
			e.preventDefault();
			let num = $(this).attr("href");
			let email = $(this).parent().parent().parent().find("#userid").attr("class");
			console.log(email);
			var form = $("#actionForm");
			$(form).attr("action", "/contact/view");
			form.append("<input type='hidden' name='num' value='"+num+"'>");
			form.append("<input type='hidden' name='email' value='"+email+"'>");
			form.submit();

		})
		$("#QNAtable tbody tr #num").on("click", function(e) {
			e.preventDefault();
			let num = $(this).attr("href");
			let email = $(this).parent().parent().parent().find("#userid").attr("class");
			console.log(email);
			var form = $("#actionForm");
			$(form).attr("action", "/QnA/view");
			form.append("<input type='hidden' name='num' value='"+num+"'>");
			form.append("<input type='hidden' name='writer' value='"+email+"'>");
			form.submit();

		})
	</script>
	<script type="text/javascript">
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
		$(document).ajaxSend(function(e, xhr, options) {
			xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		})
		$(".table tbody #delete").on(
				"click",
				function() {

					var sequence = $(this).parent().parent().find("#num").attr(
							"href");
					var userid = $(this).parent().parent().find("#userid")
							.attr('class');
					console.log(sequence);
					console.log(userid);
					$.ajax({
						url : "/QnA/delete",
						type : 'POST',
						data : JSON.stringify({
							"sequence" : sequence,
							"userid" : userid
						}),
						contentType : "application/json; charset=UTF-8",
						processData : false,
						success : function(result) {
							if (result) {
								alert(sequence + "번쨰 글이 성공적으로 삭제 되었습니다.");
								window.location.href = window.location.href
								return;
							}
						},
						error : function(req, status, error) {
							console.log(error);
						}
					})
				})
	</script>
</body>

</html>

