<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>联系我们</title>

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
<!-- 必须头部引入js文件 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
</head>
<body class="contact-template">
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
				<figure id="site-logo"> <a href="index.jsp"> <img
					src="assets/images/logo.png" alt="Logo"></a> </figure>
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
					<i class="fa fa-mobile"></i> <span> 现在立马打电话预约吧！ <br> <strong>18709523768</strong>
					</span>
				</div>
			</div>
		</div>
	</div>
	</header>
	<div id="site-banner" class="text-center clearfix">
		<div class="container">
			<h1 class="title wow slideInLeft">十分欢迎您前来与我们联系</h1>
			<ol class="breadcrumb wow slideInRight">
				<li><a href="index.jsp">首页</a></li>
				<li class="active">联系我们</li>
			</ol>
		</div>
	</div>
	<div id="contact-page" class="contact-page-var-one">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="contact-form-wrapper">
						<h3 class="entry-title">联系我们</h3>
						<div class="contents">
							<p>我们十分欢迎你可以来联系我们。<br/>
								本网站还处于发展阶段，急需各方人员来向我们积极地提供各种建议，或者及时向我们提出您的不满，我们将及时联系你，并听取您的意见。
							
							</p>
						</div>
						<!-- 表单提交 -->
						<!-- 注：无法从后台跳到前台，但可以从前台传参到后台 -->
						<form action="ContactToUs" method="post" class="contact-form">
							<p class="form-author common">
								<input id="author" name="name" type="text"
									placeholder="例如：张三" aria-required="true"
									required="required">
							</p>
							<p class="form-email common">
								<input id="email" name="email" type="text"
									placeholder="例如：1716794***@qq.com" aria-describedby="email-notes"
									aria-required="true" required="required">
							</p>
							<p class="form-phone common">
								<input id="phone" name="phone" type="text"
									placeholder="例如：187****3768" aria-required="true"
									required="required">
							</p>
							<p class="form-subject common">
								<input id="subject" name="subject" type="text"
									placeholder="例如：主题">
							</p>
							<p class="form-comment">
								<textarea id="message" name="message" placeholder="例如：界面太丑了！"
									cols="45" rows="7"></textarea>
							</p>
								<button type="submit"
									class="submit-btn btn btn-default btn-lg btn-3d"
									onclick="msgReceived()"
									data-hover="提交意见">
									提交意见
								</button>
						</form>
					</div>
				</div>
				<div class="col-md-6">
					<div class="contact-page-contents clearfix">
						<div class="row">
							<div class="col-md-6">
								<i class="fa fa-map-marker"></i>
								<div class="contents">
									<h6 class="title">邮箱地址</h6>
									<address>
									陕西省西安市碑林区太乙路街道16-301
									</address>
								</div>
							</div>
							<div class="col-md-6">
								<i class="fa fa-phone"></i>
								<div class="contents">
									<h5 class="title">联系信息</h5>
									<ul>
										<li>电话：(029) 8461 8864</li>
										<li>邮箱：1716794359@qq.com</li>
										<li>传真地址： +84 962 216 601</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div id="map-canvas">百度地图显示</div>
				</div>
			</div>
		</div>
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
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=QqdgzuOe6bK4PRQKWkQGfz0tmGVratGC"></script>
	<script type="text/javascript">
	/************************************************************
	*百度地图
	*************************************************************/
	//创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
    }
    /*
    ***西安交通大学地址：108.990166,34.252359
    */
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("map-canvas");//在百度地图容器中创建一个地图
        var point = new BMap.Point(108.990166,34.252359);//定义一个中心点坐标
        map.centerAndZoom(point,16);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
        //增加红色标记点
        var marker = new BMap.Marker(point);
        map.addOverlay(marker);
        marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
        var sContent =
        	"<h4 style='margin:0 0 5px 0;padding:0.2em 0'>宜人租房网站</h4>" + 
        	"<img style='float:right;margin:4px' id='imgDemo' src='assets/images/logo.png' width='139' height='104' title='宜人网站'/>" + 
        	"<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>我们是一家新兴网站，有着蓬勃发展的活力，有着无限的希望，希望大家支持！</p>" ; 
        	//"</div>";
        var infoWindow = new BMap.InfoWindow(sContent);// 创建信息窗口对象
        map.openInfoWindow(infoWindow,point);//开启信息窗口
        document.getElementById('imgDemo').innerHTML="地图画布！";
 
        //点击可以刷新描述！
        marker.addEventListener("click", function(){          
     	   this.openInfoWindow(infoWindow);
     	   //图片加载完毕重绘infowindow
     	   document.getElementById('map-canvas').onload = function (){
     		   infoWindow.redraw();   //防止在网速较慢，图片未加载时，生成的信息框高度比图片的总高度小，导致图片部分被隐藏
     	   }
     	});
    }
    
    //地图事件设置函数：
   function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
		var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
		map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
		var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
		map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
		var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
		map.addControl(ctrl_sca);
    }		
    initMap();//创建和初始化地图
	</script>
	<script type="text/javascript">
		function msgReceived(){
			var username=document.getElementById("author").value;
			var title =document.getElementById("subject").value;
			alert("尊敬的"+username+"先生/女士，您关于 ' "+title+" '的建议我们已收到，我们将及时给以反馈！");
		}
	</script>
</body>
</html>
