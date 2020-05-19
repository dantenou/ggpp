<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TestServlet</title>
</head>
<body>
	<p></p>
	<h2>AJAX</h2>
	<button type="button" onclick="loadXMLDoc('8')">请求数据</button>
	<div id="myDiv"></div>
	<h3>请在下面的输入框中键入字母（A - Z）：</h3>
	<form action="">
		姓氏：<input type="text" id="txt1" onkeyup="showHint(this.value)" />
	</form>
	<p>
		建议：<span id="txtHint"></span>
	</p>

	<script type="text/javascript">
		function showHint(str) {
			alert("aaa");
			var xmlhttp;
			if (str.length == 0) {
				document.getElementById("txtHint").innerHTML = "";
				return;
			}
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					//成功从后台获取数据 a,b,c,ds,oh,a,adf,e,dfsd,fsdf,r
					var jtxt=JSON.parse(xmlhttp.responseText);
					var s="";
					for(var i=0;i<jtxt.length;i++){						
							s=s+i+jtxt+"-----";
							document.getElementById("txtHint").innerHTML=8;
					}
				}
			}
			xmlhttp.open("GET", "<%=request.getContextPath()%>/Test?line=" + str, true);
			xmlhttp.send();
		}
		
		function loadXMLDoc(str){
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
				}
			}
			xmlhttp.open("POST","<%=request.getContextPath()%>/Test",true);
			xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			xmlhttp.send("line="+Math.random() * 10+"&name="+Math.random() * 10+"&sex="+Math.random() * 10);
		}
	</script>
</body>
</html>