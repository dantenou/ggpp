<%@ page import="java.util.*"%>
<%@ page import="xjtu.gp.vo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>一键精准找房</title>
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
.hidd {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}
.瞎几把写的一个class:hover { 
	overflow:visible; 
	z-index:1000000;
}
</style>
</head>
<body class="listing-template">
	<div id="page-loader">
		<div class="loaders">
			<img src="assets/images/loader/3.gif" alt="First Loader"> 
			<img src="assets/images/loader/4.gif" alt="First Loader">
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
				<figure id="site-logo"> <a href="index.jsp">
				<img
					src="assets/images/logo.png" alt="Logo"></a> </figure>
			</div>
			<div class="col-md-6 col-sm-8">
				<nav id="site-nav" class="nav navbar-default">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp">首页</a></li>
					<li><a href="<%=request.getContextPath()%>/ShortList?line=1&station=&distance=4&bedrooms=-1&livingrooms=-1&price=-1+-1&area=-1+-1">地图找房</a></li>
					<li><a href="pricing.jsp">我要问价</a></li>
					<li><a href="<%=request.getContextPath()%>/MaxMoney">画廊</a></li>
					<li><a href="contact.jsp">联系我们</a></li>
				</ul>
				</nav>
			</div>
			<div class="col-md-3 col-sm-4">
				<div class="contact-in-header clearfix">
					<i class="fa fa-mobile"></i> <span> 现在立马打电话！ <br> 
					<strong>18709523768</strong>
					</span>
				</div>
			</div>
		</div>
	</div>
	</header>
	<div id="site-banner" class="text-center clearfix">
		<div class="container">
			<h1 class="title wow slideInLeft">房屋卡片展示</h1>
			<ol class="breadcrumb wow slideInRight">
				<li><a href="index.jsp">首页</a></li>
				<li><a href="gallery.jsp">房屋列表</a></li>
				<li class="active">房屋展示</li>
			</ol>
		</div>
	</div>
	<!-- 搜索区域 -->
	<div id="advance-search" class="main-page clearfix">
		<div class="container">
			<button class="btn top-btn" style="margin-top: -5%">找寻你的意中屋</button>
			<!-- form表单提交查询 -->
			<form action="GetWantedHouse" id="adv-search-form" class="clearfix" method="get">
				<fieldset>
					<!-- 主市区 -->
					<select name="line" id="line" onchange="getStation()">
						<option value="1">选择乘坐线路</option>
						<option value="1">1号线</option>
						<option value="2">2号线</option>
						<option value="3">3号线</option>
						<option value="4">4号线</option>
						<option value="5">5号线</option>
						<option value="7">7号线</option>
						<option value="9">9号线</option>
						<option value="11">11号线</option>
					</select> 
					<!-- 站名ajax生成 -->
					<select name="station" id="station">
						<option value="">选择乘坐站</option>
					</select>
					<!-- 房屋状态 -->
					<select id="distance" name="distance">
						<option value="-1">距离不限</option>
						<option value="1">一公里内</option>
						<option value="2">两公里内</option>
						<option value="3">三公里内</option>
						<option value="4">四公里内</option>
						<option value="5">五公里内</option>
					</select> 
					<!-- 卧室数量 -->
					</select> 
					<select name="bedrooms" id="bedrooms">
						<option value="-1">室数不限</option>
						<option value="0">无室</option>
						<option value="1">一室</option>
						<option value="2">两室</option>
						<option value="3">三室</option>
						<option value="4">四室</option>
						<option value="5">五室</option>
						<option value="6">五室以上</option>
					</select> 
					<select name="livingrooms" id="livingrooms">
						<option value="-1">厅数不限</option>
						<option value="0">无厅</option>
						<option value="1">一厅</option>
						<option value="2">两厅</option>
						<option value="3">三厅</option>
						<option value="4">三厅以上</option>
					</select> 
					<select name="price" id="price">
						<option value="-1 -1">租金不限</option>
						<option value="0 4000">0-4000元</option>
						<option value="4000 5000">4000-5000元</option>
						<option value="5000 6000">5000-6000元</option>
						<option value="6000 7000">6000-7000元</option>
						<option value="7000 8000">7000-8000元</option>
						<option value="8000 9000">8000-9000元</option>
						<option value="9000-100000">9000元以上</option>
					</select> 
					<select name="area" id="area">
						<option value="-1 -1">面积不限</option>
						<option value="0 40">40㎡以下</option>
						<option value="40 60">40-60㎡</option>
						<option value="60 100">60-100㎡</option>
						<option value="100 120">100-120㎡</option>
						<option value="120 150">120-150㎡</option>
						<option value="150 200">150-200㎡</option>
						<option value="200-3000">200㎡以上</option>
					</select>
					<select name="communityType" id="communityType">
						<option value="-1">小区类型不限</option>
						<option value="0">高档小区</option>
						<option value="1">普通小区</option>
						<option value="2">优质社区</option>
					</select> 
				</fieldset>
				<button type="submit" class="btn btn-default btn-lg text-center">
					一键 <br class="hidden-sm hidden-xs"/> 
					查找租房
				</button>
			</form>
		</div>
	</div>
	<section id="property-listing"> 
	<%ArrayList har=(ArrayList)request.getAttribute("HouseArr");%>
		<%if((har!=null)&&(har.size()!=0)){ %>
		<header class="section-header text-center">
			<div class="container">
				<h2 class="pull-left">可供租房如下：</h2>
				<div class="pull-right">
					<div class="property-sorting pull-left">
						<label for="property-sort-dropdown"> 排序方式：</label> 
						<select name="property-sort-dropdown" id="property-sort-dropdown" onchange="sortByType(this.value)">
							<option value="">综合排序</option>
							<option value="<%=request.getContextPath()%>/ClosestToMe">离我最近</option>
							<option value="<%=request.getContextPath()%>/LeastMoney">租金排序</option>
							<option value="<%=request.getContextPath()%>/MaxArea">面积排序</option>
						</select>
					</div>
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
		}else{
			%>			
			<header class="section-header text-center">
			<div class="container">
				<h2 class="pull-left">暂无合适房屋，请您选择条件筛选！</h2>
			</div>
		</header>			
			<%
		}
		%>		
		</div>
		<ul id="pagination" class="text-center clearfix">
			<li class="disabled"><a href="#">上一页</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">下一页</a></li>

		</ul>
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
	<script type="text/javascript"
		src="http://api.map.baidu.com/api?v=2.0&ak=QqdgzuOe6bK4PRQKWkQGfz0tmGVratGC"></script>
	<!-- js区域 -->
	<script type="text/javascript">
	// 不同排序
	function sortByType(ref){
		window.location=ref;
	}
	</script>
	
	<script type="text/javascript">
		// ajax代码更新线路所经过的车站
		function getStation(){	
			var xmlhttp;
			if(window.XMLHttpRequest){
			  xmlhttp=new XMLHttpRequest();
			  }		
			xmlhttp.onreadystatechange=function(){
			  if (xmlhttp.readyState==4 && xmlhttp.status==200){
				  // js生成选项
				  var objjson = JSON.parse(xmlhttp.responseText);
				  // 保证每次可以更新选项
				  document.getElementById("station").options.length=1;
				  for(var i=0;i<objjson.length;i++){
					  var op=document.createElement('option');
					  op.text=objjson[i];
					  op.value=objjson[i];
					  document.getElementById("station").add(op);				 
				  }
			    }
			  }	
			var ob1=document.getElementById('line');
			var va=ob1.options[ob1.selectedIndex].value;		
			xmlhttp.open("POST","<%=request.getContextPath()%>/GetStation",true);
			xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			xmlhttp.send("line="+va);			
	}
	</script>
	<script type="text/javascript">
	<%if(har==null||har.size()==0){
		%>
		// 创建定位对象
		var geolocation = new BMap.Geolocation();
		geolocation.getCurrentPosition(function(r){
			if(this.getStatus() == BMAP_STATUS_SUCCESS){
				alert('您的坐标位置：'+r.point.lng+','+r.point.lat);
				window.location="<%=request.getContextPath()%>/DefaultAccess?lng="+r.point.lng+"&lat="+r.point.lat;
			}
			else {
				alert('failed'+this.getStatus());
			}        
		},{enableHighAccuracy: true})
		//关于状态码
		//BMAP_STATUS_SUCCESS	检索成功。对应数值“0”。
		//BMAP_STATUS_CITY_LIST	城市列表。对应数值“1”。
		//BMAP_STATUS_UNKNOWN_LOCATION	位置结果未知。对应数值“2”。
		//BMAP_STATUS_UNKNOWN_ROUTE	导航结果未知。对应数值“3”。
		//BMAP_STATUS_INVALID_KEY	非法密钥。对应数值“4”。
		//BMAP_STATUS_INVALID_REQUEST	非法请求。对应数值“5”。
		//BMAP_STATUS_PERMISSION_DENIED	没有权限。对应数值“6”。(自 1.1 新增)
		//BMAP_STATUS_SERVICE_UNAVAILABLE	服务不可用。对应数值“7”。(自 1.1 新增)
		//BMAP_STATUS_TIMEOUT	超时。对应数值“8”。(自 1.1 新增)
		<%
	}
	%>
	</script>
</body>
</html>
