<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>留言板页面</title>
<style type="text/css">
body{
   color:#fff;
}
</style>
</head>

<body background="img/f.jpg" align="center">

      <form action="AddMessageServlet" method="post">
                               &nbsp留言者：&nbsp<input type="text" name="author" size="30"/>
            <br/>
            <br/>
                       &nbsp留言标题：<input type="text" name="title" size="30"/>
            <br/>
            <br/>
            留言内容：<textarea  name="content" rows="8" cols="30"></textarea>
           <p>
           <input type="submit" value="提交"/>
           <input type="reset" value="重置"/>
           <a href="showMessage.jsp">查看留言</a>
      </form>
      </body>
</html>