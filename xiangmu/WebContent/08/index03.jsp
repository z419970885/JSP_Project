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
<title>删除数据</title>
<style type="text/css">

</style>
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		String connectSQL = "jdbc:mysql://localhost:3306/student";
		Connection conn = java.sql.DriverManager.getConnection(connectSQL, "root", "1234");

	    String sql = "delete from xs where id = ?";		
		PreparedStatement st = conn.prepareStatement(sql);		
		
		int id = Integer.parseInt(request.getParameter("id"));
		st.setInt(1, id);
               
		st.executeUpdate();  
		
		st.close();

		
		String sql2="SELECT * FROM student.xs";
	    PreparedStatement st2 = conn.prepareStatement(sql2);
		ResultSet rs=st2.executeQuery();
		
		  
		  while(rs.next())
		  {			 
			out.println("<table>");
		    out.println("<tr>");
		    out.println("<td>"+rs.getInt("id")+"</td>");
		    out.println("<td>"+rs.getString("name")+"</td>");
		    out.println("<td>"+rs.getInt("age")+"</td>");
		    out.println("<td>"+rs.getString("major")+"</td>");	
		    out.print("<td><a href='index03.jsp?id="+rs.getInt("id")+"'>删除</a></td>");
		    out.println("</tr>");
		    out.println("</table>");
		    out.println("</form>");
		  }
		
		
		rs.close();
		st2.close();
		conn.close();
		
		
	%>
	用户信息已删除！
	<br>
	<a href='index01.jsp?id="+rs.getInt("id")+"'>继续添加</a>

</body>
</html>