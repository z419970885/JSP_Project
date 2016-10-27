<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加数据</title>
<style type="text/css">

</style>
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		String connectSQL = "jdbc:mysql://localhost:3306/student";
		Connection conn = java.sql.DriverManager.getConnection(connectSQL, "root", "1234");
		
		String sql = "update xs set name = ?,age=?,major=? where id =?";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String major = request.getParameter("major");

		ps.setInt(4, id);
		ps.setString(1, name);
		ps.setInt(2, age);
		ps.setString(3, major);
		
		int result = ps.executeUpdate();
		 
		ps.close();
		conn.close();	
		%>
      <h1>
      数据修改成
      <%
      response.sendRedirect("connect-mysql.jsp");
      session.setAttribute("info","数据修改成功");
      
      %>
      
      </h1>
</body>
</html>