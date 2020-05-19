<%@ page import="java.util.*"%>
<%@ page import="xjtu.gp.vo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
body, html {
	height: 100%;
	font-family: "Microsoft YaHei","微软雅黑","Hiragino Sans GB",tahoma,arial,simhei;
	font-size: 14px;
}
.showResult:hover{
	color:#FFF;
	background:#0C0;
}

.showResult{
	width:100%;
	height:15%;
	background-color:white;
	border: 1px solid #C0C0C0;
}
#l-map {
	height: 88%;
	width: 72.5%;
	z-index:1;
	float: right;
}

#r-result {
	position: absolute;
	left: 0.2%;
	top: 0.5%;
	width:18.7%;
	height:7%;
	box-shadow: 5px 4px 5px #C0C0C0;
	border-radius:20px;
}

#rightPanel {
	border: 1px solid #C0C0C0;
	height: 88%;
	width: 27%;
	float: left;
	overflow-y:auto; 
	overflow-x:auto;
	box-shadow: 5px 5px 5px #C0C0C0;
	border-radius:10px;
}

#searchResultPanel {
	border: 1px solid #C0C0C0;
	width: 150px;
	height: 200px;
	display: block;
	position: absolute;
	left: 1500px;
	top: 200px;
	background-color: pink;
	z-index:-1;
}
img{
	 border: 0;
     vertical-align: top;
}
#btn{
	background-image: url(assets/images/sousuo.png);
	background-repeat-x: no-repeat;
	background-repeat-y: no-repeat;
	background-color: rgb(207, 0, 0);
	background-position-x: center;
	background-position-y: center;
    border: none;
    color: white;
    font-family:Arial;
    padding: 10px 24px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 18px;
    margin: 4px 2px;
    cursor: pointer;
    height:40%;
    border-radius:5px;
}
</style>

<title>地图寻房</title>

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
</head>
<body>
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
					src="assets/images/logo.png" alt="Logo"></a> 
				</figure>
			</div>
			<div class="col-md-6 col-sm-8">
				<nav id="site-nav" class="nav navbar-default">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp">首页</a></li>
					<li><a href="<%=request.getContextPath()%>/GetWantedHouse?line=1&station=罗湖站&distance=4&bedrooms=-1&livingrooms=-1&price=-1+-1&area=-1+-1&communityType=-1">精准找房</a></li>
					<li><a href="pricing.jsp">我要问价</a></li>
					<li><a href="<%=request.getContextPath()%>/MaxMoney">画廊</a></li>
					<li><a href="contact.jsp">联系我们</a></li>
				</ul>
				</nav>
			</div>
			<div class="col-md-3 col-sm-4">
				<div class="contact-in-header clearfix">
					<i class="fa fa-mobile"></i> <span> 现在立马打电话预约吧！ <br/> <strong>18709523768</strong>
					</span>
				</div>
			</div>
		</div>
	</div>
	</header>
	<div id="rightPanel">
	<!-- 结果展示 -->
	<%ArrayList har=(ArrayList)request.getAttribute("HouseArr");%>
		<%if((har!=null)&&(har.size()!=0)){ 
			for(int i=0;i<har.size();i++){
				House h=(House)har.get(i);
				%>
		<!-- 第一个结果板块 -->
		<div class="showResult" data-clng="<%=h.getClongtitude() %>" 
				data-clat="<%=h.getClatitude() %>"
				onmouseover="centerTo(this)">
			<img src="<%=h.getImg() %>" 
					style="width:30%;height:88%; position: relative;top:7px;left:3px;float:left;">
			<div style="float:left;font-size:15px;
					position: relative;top:7px;left:8px;
					width:68%;height:88%;">
				<h4 style="font-size:15px;width:100%;
					margin-top: 2px;margin-bottom: 0px;overflow: hidden;white-space: nowrap;
					text-overflow: ellipsis;" title="<%=h.getTitle() %>"><%=h.getTitle() %></h4>
				<p style="margin-top: 5px;margin-bottom: 0px;">
					<span><%=h.getType() %></span>
					<span>|</span>
					<span><%=h.getArea() %>㎡</span>
					<span>|</span>
					<span>一号线</span>
				</p>
				<p style="margin-top: 0px;margin-bottom: 0px;">
					<span><%=h.getAddress() %></span>
				</p>
				<p style="margin-top: 0px;margin-bottom: 0px;">
					<span><%=h.getAddress().split("-")[0]%>区</span>
					<em style="text-align:right;float:right;color:red;font-size:19px;margin-right: 16px;">
						<strong><%=h.getPrice() %>元/月</strong>
					</em>
				</p>
			</div>
		</div>
				<% 
			}
		}
		%>
		<!-- 结果展示截止 -->
	</div>
	<div id="l-map" style="border: #ccc solid 1px;"></div>
	<div id="r-result">
		<input type="text" id="suggestId" size="20" value="百度" name="station"
			placeholder="请输入你的选择" style="width: 100%;" form="simpleForm"> 
		<!-- 表单提交块 -->
    	<div style="float:left;width:100%;height:100%;border-radius:20px;">
    		<form action="ShortList" style="width:100%;height:100%;" id="simpleForm" method="post">
    			<select id="distance" name="distance">
						<option value="-1">距离不限</option>
						<option value="1">一公里内</option>
						<option value="2">两公里内</option>
						<option value="3">三公里内</option>
						<option value="4">四公里内</option>
						<option value="5">五公里内</option>
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
    			<button type="submit" id="btn" style="margin-bottom: 0px;padding-bottom: 8px;"></button>
    		</form>
    	</div>
	</div>
	<div id="searchResultPanel">5961</div>
	<!-- 脚本区域 -->
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
	<script src="assets/js/theme.js"></script>
</body>
<script type="text/javascript">
	var map = new BMap.Map("l-map");
	map.enableScrollWheelZoom();//启用地图滚轮放大缩小
	map.centerAndZoom("深圳", 19); // 初始化地图,设置城市和地图级别。
	//向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({
		anchor : BMAP_ANCHOR_TOP_LEFT,
		type : BMAP_NAVIGATION_CONTROL_LARGE,
		enableGeolocation : true
	});
	map.addControl(ctrl_nav);//向地图中添加缩放控件
	//向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({
		anchor : BMAP_ANCHOR_BOTTOM_RIGHT,
		isOpen : true
	});
	map.addControl(ctrl_ove);//向地图中添加缩略图控件
	//添加定位控件
	var geolocationControl = new BMap.GeolocationControl();
	geolocationControl.addEventListener("locationSuccess", function(e) {
		// 定位成功事件
		var address = '';
		address += e.addressComponent.province;
		address += e.addressComponent.city;
		address += e.addressComponent.district;
		address += e.addressComponent.street;
		address += e.addressComponent.streetNumber;
		alert("当前定位地址为：" + address);
	});
	geolocationControl.addEventListener("locationError", function(e) {
		// 定位失败事件
		alert(e.message);
	});
	map.addControl(geolocationControl);
	//向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({
		anchor : BMAP_ANCHOR_BOTTOM_LEFT
	});
	map.addControl(ctrl_sca);//向地图中添加比例尺控件
	//2D/3D转换图
	var hyb = new BMap.MapTypeControl({
		mapTypes : [ BMAP_NORMAL_MAP, BMAP_HYBRID_MAP ],
		anchor : BMAP_ANCHOR_TOP_RIGHT
	});
	map.addControl(hyb);
	// 覆盖区域图层测试
	map.addTileLayer(new BMap.PanoramaCoverageLayer());//添加全景图层
	var stCtrl = new BMap.PanoramaControl(); //构造全景控件
	stCtrl.setOffset(new BMap.Size(20, 50));
	map.addControl(stCtrl);//添加全景控件

	// 百度地图API功能
	function G(id) {
		return document.getElementById(id);
	}
	var ac = new BMap.Autocomplete( //建立一个自动完成的对象
	{
		"input" : "suggestId",
		"location" : map
	});
	ac.addEventListener("onhighlight", function(e) { //鼠标放在下拉列表上的事件
		//鼠标放在下拉列表时对查询结果面板进行插入
		var str = "";
		var _value = e.fromitem.value;
		var value = "";
		if (e.fromitem.index > -1) {
			value = _value.province + _value.city + _value.district
					+ _value.street + _value.business;
		}
		str = "FromItem<br/>index = " + e.fromitem.index + "<br/>value = "
				+ value;

		value = "";
		if (e.toitem.index > -1) {
			_value = e.toitem.value;
			value = _value.province + _value.city + _value.district
					+ _value.street + _value.business;
		}
		str += "<br />ToItem<br/>index = " + e.toitem.index + "<br/>value = "
				+ value;
		G("searchResultPanel").innerHTML = str;
	});

	//点击下拉列表时对结果查询面板插入
	var myValue;
	ac.addEventListener("onconfirm", function(e) { //鼠标点击下拉列表后的事件
		var _value = e.item.value;
		myValue = _value.province + _value.city + _value.district
				+ _value.street + _value.business;
		G("searchResultPanel").innerHTML = "onconfirm<br />index = "
				+ e.item.index + "<br />myValue = " + myValue;
		//视光中心转移！
		setPlace();
	});

	function setPlace() {
		map.clearOverlays(); //清除地图上所有覆盖物
		//自定义函数
		function myFun() {
			var pp = local.getResults().getPoi(0).point; //获取第一个智能搜索的结果
			map.centerAndZoom(pp, 18);
			var marker=new BMap.Marker(pp);
			map.addOverlay(marker); //添加标注
			marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
		}
		var local = new BMap.LocalSearch(map, { //智能搜索
			//完成时候进行执行myFun函数
			onSearchComplete : myFun
		});
		local.search(myValue);
	}
</script>
<script type="text/javascript">
	function centerTo(pos){
		map.clearOverlays(); //清除地图上所有覆盖物
		var position=new BMap.Point(pos.getAttribute("data-clng"),pos.getAttribute("data-clat"));
		var marker = new BMap.Marker(position);  // 创建标注
		// 地图加入marker
		map.addOverlay(marker);
		marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
		map.centerAndZoom(position,18);
	}
</script>
<script type="text/javascript">
	window.onload=function(){ 
		<%if((har!=null)&&(har.size()!=0)){ 
			House hh=(House)har.get(0);
			%>
			var pos1=new BMap.Point(<%=hh.getClongtitude() %>,<%=hh.getClatitude() %>);
			map.centerAndZoom(pos1,15);
			<%
			for(int i=0;i<har.size();i++){
				House h=(House)har.get(i);
				%>
				// 加入百度地图marker
				var point = new BMap.Point(<%=h.getClongtitude() %>,<%=h.getClatitude() %>);
				var marker = new BMap.Marker(point);  // 创建标注
				// 地图加入marker
				map.addOverlay(marker);
				marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
				<%
			}
		  }
		%>
	} 
</script>
</html>