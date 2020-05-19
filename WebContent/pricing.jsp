<%@ page import="java.util.*"%>
<%@ page import="xjtu.gp.vo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我要问价</title>
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
<style type="text/css">
.hidd {/* 保证只显示一行标题	*/
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}
</style>
</head>
<body class="">
	<div id="page-loader">
		<div class="loaders">
			<img src="assets/images/loader/3.gif" alt="First Loader"> 
			<img
				src="assets/images/loader/4.gif" alt="First Loader">
		</div>
	</div>
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
	<div id="property-single">
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
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-7" >
					<section class="property-meta-wrapper common" >
					<h3 class="entry-title">对您房子的评估:</h3>
					<div class="property-single-meta" style="height:300px;">
						<ul class="clearfix">
						<% HousePricing hp=(HousePricing)request.getAttribute("hp"); %>
						<% if(hp!=null) {
							%>
							<li><span>房屋面积：</span><span><%=hp.getHouseArea() %>㎡</span></li>
							<li><span>房屋类型</span><span><%=hp.getBedrooms() %>室<%=hp.getLivingrooms() %>厅</span></li>
							<li><span>推荐租金:</span><strong style="font-size:25px;color:red;">￥<%=hp.getRentEstimated() %></strong></li>
							<li><span>租房地址：</span><span><%=hp.getAddr() %></span></li>
							<li><span>最近地铁站：</span><span><%=hp.getStation() %></span></li>
							<li><span>距离市中心：</span><span>约为<%=(int)hp.getDisToCenter()/1000 %>公里</span></li>
							<li><span>距离地铁站：</span><span>约为<%=(int)hp.getDisToStat()/1000 %>公里</span></li>
							<%
						}else{
							%>
							<li><span>房屋面积：</span><span>暂不知道</span></li>
							<li><span>房屋类型</span><span>不知</span></li>
							<li><span>推荐租金:</span><strong style="font-size:25px;color:red;">不可知</strong></li>
							<li><span>租房地 址：</span><span>不知</span></li>
							<li><span>最近地铁站：</span><span>不知</span></li>
							<li><span>距离市中心：</span><span>不知</span></li>
							<% 
						}
						%>
						</ul>
					</div>
					</section>				
				</div>
				<div class="col-lg-4 col-md-5">
					<div id="property-sidebar">
						<section class="widget adv-search-widget clearfix">
						<div id="advance-search-widget" class="clearfix">
							<form action="RentPrice" id="adv-search-form" method="post">
								<div id="widget-tabs">
									<div id="tab-1" class="tab-content current">
										<fieldset class="clearfix">
											<div>
												<label for="main-location">租房位置：</label> 
												<input type="text" name="location" id="main-location" 
														placeholder="请输入地址（例：××区××街道××小区××楼）">												
											</div>
											<div>
												<label for="property-min-area">面积：</label> 
												<input type="text" name="area" id="property-beds" 
														placeholder="请输入面积/㎡（例：100）">
											</div>	
											
											<div>
												<label for="property-baths">厅数：</label> 
												<select name="livingrooms" id="livingrooms">
													<option value="-1">选择厅数</option>
													<option value="0">无厅</option>
													<option value="1">一厅</option>
													<option value="2">两厅</option>
													<option value="3">三厅</option>
													<option value="4">三厅以上</option>
												</select> 
											</div>
											<div>
												<label for="property-beds">室数：</label> 
												<select name="bedrooms" id="bedrooms">
													<option value="-1">选择室数</option>
													<option value="0">无室</option>
													<option value="1">一室</option>
													<option value="2">两室</option>
													<option value="3">三室</option>
													<option value="4">四室</option>
													<option value="5">五室</option>
													<option value="6">五室以上</option>
												</select> 
											</div>
																														
										</fieldset>
									</div>
									<button type="submit"
										class="btn btn-default btn-lg text-center btn-3d"
										data-hover="一键估价">一键估价
									</button>
								</div>
							</form>
						</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 相似房屋推荐 -->
		<section id="property-listing"> 
	<%ArrayList har=(ArrayList)request.getAttribute("HouseArr");%>
		<%if((har!=null)&&(har.size()!=0)){ %>
		<header class="section-header text-center">
			<div class="container">
				<h2 class="pull-left">相似房源类比：</h2>
				<div class="pull-right">
					<p class="pull-left layout-view">
						视图模式: <i class="fa fa-th selected" data-layout="4"></i> <i
							class="fa fa-th-large" data-layout="6"></i> <i
							class="fa fa-list-ul" data-layout="12"></i>
					</p>
				</div>
			</div>
		</header>
		<div class="container section-layout">
		<div class="row">
		<%for(int i=0;i<har.size();i++){
				House h=(House)har.get(i);
				%>
				<!-- 房屋列表展示div块 -->
				<div class="col-lg-4 col-sm-6 layout-item-wrap">
				<article class="property layout-item clearfix"> 
					<figure class="feature-image"> 
						<a class="clearfix zoom" href="<%=h.getSrc() %>">
							<img data-action="zoom" style="width:100%;height:100%;"
									src="<%=h.getImg() %>" 
									alt="暂无图片，敬请谅解！">
						</a> 
							<span class="btn btn-warning btn-sale">
								出租中
							</span> 
					</figure>
				<div class="property-contents clearfix">
					<header class="property-header clearfix">
					<div class="pull-left">
						<h6 class="entry-title hidd" style="width: 230px;">
							<a href="<%=h.getSrc() %>" title="<%=h.getTitle() %>">
								<%=h.getTitle() %>
							</a>
						</h6>
						<span class="property-location">
							<i class="fa fa-map-marker"></i>
								<%=h.getAddress() %>
						</span>
					</div>
					<button class="btn btn-default btn-price pull-right btn-3d"
						data-hover="￥<%=h.getPrice() %>">
						<strong>￥<%=h.getPrice() %></strong>
					</button>
					</header>
					<div class="property-meta clearfix">
					<!-- 面积，几室几厅，罗湖站，来源于 -->
						<span>
							<i class="fa fa-arrows-alt">
							</i><%=h.getArea() %>㎡
						</span> 
						<span>
							<i class="fa fa-home">
							</i><%=h.getType() %>
						</span> 
						<span>
							<i class="fa fa-cab">
							</i><%=(int)h.getClongtitude()%>m
						</span> 
						<span>
							<i class="fa fa-tag">
							</i>互联网
						</span>
					</div>
					<div class="contents clearfix">
						<p><%=h.getTitle() %></p>
					</div>
					<div class="author-box clearfix">
						<a href="#" class="author-img"><img
							src="assets/images/agents/1.jpg" alt="Agent Image"></a> 
						<cite class="author-name">出租人：
							<a href="#">佚名</a>
						</cite> 
						<span class="phone">
							<i class="fa fa-phone"></i>暂无联系方式...
						</span>
					</div>
				</div>
				</article>
			</div>
				<% 
			}
		}
		%>		
		</div>
	</div>
	</section>
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
						本网站历经月余，是一个十分新鲜的网站，本网站提供花式租房信息以及租金推荐。<br/>
						本网站所有数据均来自于互联网，如有侵权，请联系我们，我们将在第一时间删除租房消息。<br/> 
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
					<h4 class="title">喜报！中国房价再创新高！</h4>
					<p>据碧桂园知情人士透露，今年房价又是大涨的一年！</p>
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
				<li><a href="#top">定价</a></li>
				<li><a href="#top">联系我们</a></li>
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