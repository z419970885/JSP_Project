<%@ page import="JavaBean.MessageBean" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示留言内容</title>
<style type="text/css">
body{
color:#fff;
font-size: 50px;

}


</style>
</head>
<body background="img/f.jpg"align="center">
  <%
    ArrayList wordlist=(ArrayList) session.getAttribute("wordlist");
    if(wordlist==null||wordlist.size()==0)
    	out.print("没有留言可以显示！");
    	else{
    		for(int i=wordlist.size()-1;i>=0;i--){
    			MessageBean mm=(MessageBean)wordlist.get(i);
    			%>
    			留言者：<%=mm.getAuthor() %>
    			<P>留言时间：<%=mm.getTime() %></P>
    			<P>留言标题：<%=mm.getTitle() %></P>
    			<p>
    			留言内容：
    			<textarea rows="8" cols="30">
    			<%=mm.getContent() %>
    			</textarea>
    			</p>
    			<a href="messageBoard.jsp">我要留言</a>
    			<hr width="90%">
    			<% 
    		}
    	}
    
  %>

</body>
</html>