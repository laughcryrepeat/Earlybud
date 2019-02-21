<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% session.invalidate();   
response.sendRedirect("login");%>
<!-- 
<form action="/earlybud/logout" method='post' id="form">

<input type="hidden"name="username"value="${email}"/>
<input type="hidden"name="${_csrf.parameterName}"value="${_csrf.token}"/>
</form>
<script type="text/javascript">
		document.getElementById("form").submit();
	</script> -->
</body>
</html>
