<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import = "java.io.*,java.util.*,java.sql.*,java.lang.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String regno=request.getParameter("id");
try{
	 Connection con = null;
	String url="jdbc:mysql://localhost:3306/test";
	String userName="root";
	String passcode="";
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(url, userName, passcode);
	 PreparedStatement ps=con.prepareStatement("delete from cartable WHERE regno=?"); 
	 ps.setString(1, regno);
	 ps.executeUpdate();
	 response.sendRedirect("viewcaradmin.jsp");
}catch(Exception e){
	 out.print(e);
   } 

%>
</body>
</html>