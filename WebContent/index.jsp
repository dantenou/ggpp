<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>宜人租房首页</title>

<!-- Styles -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600"
	rel="stylesheet">
<!-- favicon and touch icons -->
<link rel="shortcut icon" href="assets/images/favicon.ico">

<!-- Bootstrap -->
<link href="plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="plugins/slick/slick.css" rel="stylesheet">
<link href="plugins/slick-nav/slicknav.css" rel="stylesheet">
<link href="plugins/wow/animate.css" rel="stylesheet">
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/theme.css" rel="stylesheet">

</head>
<body class="">
	<header id="site-header">
	<div id="site-header-top">
		<div class="container">
			<div class="row">
				<!-- code here -->
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<figure id="site-logo">
					 <a href="index.jsp"> 
						<img
							src="assets/images/logo.png" alt="Logo">
					</a> 
				</figure>
			</div>
			<div class="col-md-6 col-sm-8">
				<nav id="site-nav" class="nav navbar-default">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp">首页</a></li>
					<li><a href="property-listing.jsp">精准找房</a></li>
					<li><a href="pricing.jsp">我要问价</a></li>
					<li><a href="<%=request.getContextPath()%>/MaxMoney">画廊</a></li>
					<li><a href="contact.jsp">联系我们</a></li>
				</ul>
				</nav>
			</div>
			<div class="col-md-3 col-sm-4">
				<div class="contact-in-header clearfix">
					<i class="fa fa-mobile"></i> <span> 现在立马打电话！ <br/> <strong>18709523768</strong>
					</span>
				</div>
			</div>
		</div>
	</div>
	</header>
	<div class="main-slider-wrapper clearfix">
		<!--轮播图 -->
		<div id="main-slider">
			<div class="slide">
				<img src="assets/images/slider/1.jpg" alt="Slide">
			</div>
			<div class="slide">
				<img src="assets/images/slider/2.jpg" alt="Slide">
			</div>
			<div class="slide">
				<img src="assets/images/slider/3.jpg" alt="Slide">
			</div>
			<div class="slide">
				<img src="assets/images/slider/4.jpg" alt="Slide">
			</div>
		</div>
		<div id="slider-contents">
			<div class="container text-center">
				<div class="jumbotron">
					<h1 style="font-size: 600%;
						border: 2px solid #fff;
						padding: 20px;
						display: inline-block;
						letter-spacing: 10px;">
						宜人租房官方推荐网站
					</h1>
					<div class="contents clearfix">
						<p>
							只为给您找出最贴心的租房！
						</p>
					</div>
					<a class="btn btn-warning btn-lg btn-3d" data-hover="为您服务" href="#top" role="button">我们的服务</a> 
					<a class="btn btn-default btn-border btn-lg" href="contact.jsp" role="button">咨询我们</a>
				</div>
			</div>
		</div>
	</div>
	<div id="advance-search" class="main-page clearfix">
		<div class="container"></div>
	</div>

	<footer id="footer">
	<div class="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<section class="widget about-widget clearfix">
					<h4 class="title hide">关于我们</h4>
					<a class="footer-logo" href="#top"> <img
						src="assets/images/footer-logo.png" alt="Footer Logo">
					</a>
					<p>
						本网站历经月余，是一个十分新鲜的网站，本网站提供花式租房信息以及租金推荐。<br />
						本网站所有数据均来自于互联网，如有侵权，请联系我们，我们将在第一时间删除租房消息。<br />
						我们利用百度地图API，十分便于您选择房子。
					</p>
					<ul class="social-icons clearfix">
						<!-- 分享到推特，脸书，油管链接！ -->
						<li><a href="#top"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#top"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#top"><i class="fa fa-pinterest"></i></a></li>
						<li><a href="#top"><i class="fa fa-youtube-play"></i></a></li>
					</ul>
					</section>
				</div>
				<div class="col-md-4 col-sm-6">
					<section class="widget twitter-widget clearfix">
					<h4 class="title">最新消息</h4>
					<p>暂无消息！</p>
					</section>
				</div>
				<div class="col-md-4 col-sm-6">
					<section class="widget address-widget clearfix">
					<h4 class="title">联系电话</h4>
					<ul>
						<li><i class="fa fa-map-marker"></i> 陕西省西安市碑林区太乙街道</li>
						<li><i class="fa fa-phone"></i> 18709523768</li>
						<li><i class="fa fa-envelope"></i> 1716794359@qq.com</li>
						<li><i class="fa fa-fax"></i> +84 8088 8461</li>
						<li><i class="fa fa-clock-o"></i> 周一至周六: 9:00 - 18:00</li>
					</ul>
					</section>
				</div>
			</div>
		</div>
	</div>
	<div class="site-footer-bottom">
		<div class="container">
			<p class="copyright pull-left wow slideInRight">Copyright &copy;
				2020宜人租房保留所有权利</p>
			<nav class="footer-nav pull-right wow slideInLeft">
			<ul>
				<li><a href="#top">独人小组Team</a></li>
				<li><a href="pricing.jsp">定价</a></li>
				<li><a href="contact.jsp">联系我们</a></li>
			</ul>
			</nav>
		</div>
	</div>
	</footer>
	<a href="#top" id="scroll-top"><i class="fa fa-angle-up"></i></a>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.migrate.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="plugins/slick-nav/jquery.slicknav.min.js"></script>
	<script src="plugins/slick/slick.min.js"></script>
	<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="plugins/tweetie/tweetie.js"></script>
	<script src="plugins/forms/jquery.form.min.js"></script>
	<script src="plugins/forms/jquery.validate.min.js"></script>
	<script src="plugins/modernizr/modernizr.custom.js"></script>
	<script src="plugins/wow/wow.min.js"></script>
	<script src="plugins/zoom/zoom.js"></script>
	<script src="plugins/mixitup/mixitup.min.js"></script>
	<!---<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyD2MtZynhsvwI2B40juK6SifR_OSyj4aBA&libraries=places"></script>--->
	<script src="plugins/whats-nearby/source/WhatsNearby.js"></script>
	<script src="assets/js/theme.js"></script>
</body>
</html>