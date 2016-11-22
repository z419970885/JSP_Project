<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="zhang.GirlFriend" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>接受审判吧骚年！</title>
</head>
<body>
<%
GirlFriend gf = (GirlFriend)session.getAttribute("user");
String phone = request.getParameter("phone");

int shengQi = gf.getShengQi();
int ai = gf.getAi();

if(phone.equals("0")){
	shengQi = shengQi + 10;
}else if(phone.equals("1")){
	shengQi = shengQi+30;
}else if(phone.equals("2")){
	ai = ai + 20;
}else{
	ai = ai + 10;
	shengQi = shengQi + 10;
}
gf.setShengQi(shengQi);
gf.setAi(ai);
if(gf.getShengQi()>20){
	out.print("<h1>恭喜你，你已经狗带了<h1>");
}else{
	out.print("<h1>骚年小心咯，女朋友怒值已经达到"+gf.getShengQi()+"</h1>");
	if(gf.getAi()>30){
		out.print("<h1>哎呦，不错喔，女朋友深深的爱着你~~~<h1>");
		
	}
	out.print("<p><a href='status.jsp'>继续测试！</a></p>");
}
if(gf.getAi()>100){
	out.print("<h1>恭喜你们走进爱情的坟墓~<h1>");
}
%>
</body>
</html>