<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/Test" method="get" target="iframe">
	<input type="text" " name="line" />
	<input type="password" " name="password" />
	<input type="submit"  name="submt" value="提交" />
</form>
<iframe id="iframe222" name="iframe" frameborder="no" ></iframe>
</body>
</html>