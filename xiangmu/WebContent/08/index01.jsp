<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page import="java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
    
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>填写信息</title>
</head>
<body>
<form action="index02.jsp" method="post" >
<p align="center">学号：<input name="id"></p>
<p align="center">姓名：<input name="name"></p>
<p align="center">年龄：<input name="age"></p>
<p align="center">专业：<input name="major"></p>
<p align="center"><button type="submit">提交信息</button></p>
</form>

</body>
</html>