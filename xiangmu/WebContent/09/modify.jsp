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
        Statement stmt=conn.createStatement();
        
		String id = request.getParameter("id");
 		String sql = "select * from xs where id = "+id;		
		ResultSet rs = stmt.executeQuery(sql);		
		
		String name = "";
		int age = 0;
		String major="";
		
		while(rs.next()){
			name = rs.getString("name");
			age = rs.getInt("age");
			major = rs.getString("major");
		}
	
	%>
    强势插入
    <form action="updateXs.jsp" method="post">
    <p>学号：<input type="text" name="id" value=<%=id %>></p>
    <p>姓名：<input type="text" name="name" value=<%=name %>></p>
    <p>年龄：<input type="text" name="age" value=<%=age %>></p>
    <p>专业：<input type="text" name="major" value=<%=major%>></p>
    <button type="submit">提交</button>
    
    </form>
	
	

</body>
</html>