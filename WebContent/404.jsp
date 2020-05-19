<%@ page language="java" contentType="text/html; charset=UTF-8"
	isErrorPage="true" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>错误界面</title>
<link rel="shortcut icon" href="assets/images/favicon.ico">
<style type="text/css">
.head404 {
	width: 580px;
	height: 234px;
	margin: 50px auto 0 auto;
	background: url(assets/images/head404.png) no-repeat;
}

.txtbg404 {
	width: 499px;
	height: 169px;
	margin: 10px auto 0 auto;
	background: url(assets/images/txtbg404.png) no-repeat;
}

.txtbg404 .txtbox {
	width: 390px;
	position: relative;
	top: 30px;
	left: 60px;
	color: #eee;
	font-size: 14px;
}

.txtbg404 .txtbox p {
	margin: 5px 0;
	line-height: 18px;
}

.txtbg404 .txtbox .paddingbox {
	padding-top: 15px;
}

.txtbg404 .txtbox p a {
	color: #eee;
	text-decoration: none;
}

.txtbg404 .txtbox p a:hover {
	color: #FC9D1D;
	text-decoration: underline;
}
</style>
</head>

<body bgcolor="#494949">
	<div class="head404"></div>
	<div class="txtbg404">
		<div class="txtbox">
			<p>对不起，您请求的页面不存在、或已被删除、或暂时不可用</p>
			<p class="paddingbox">请点击以下链接继续浏览网页</p>
			<p>
				》 <a href="url" onclick="javascript:history.back();return false;">返回上一个页面</a>
				<br>
			</p>
			<p>
				》 <a href="index.jsp">返回网站首页</a>
			</p>
		</div>
	</div>
</body>
</html>