<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import = "java.io.*,java.util.*,java.sql.*,java.lang.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.io.FileInputStream" %>
 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String dlno=request.getParameter("dlno");
   String dlfront=request.getParameter("dlfront");
   String dlback=request.getParameter("dlback");
   try{
  	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/test";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
  	 PreparedStatement ps=con.prepareStatement("insert into verification values(?,?,?)");

  	 ps.setString(1,dlno);
  	 ps.setString(2,dlfront);
  	 ps.setString(3,dlback);
  	
  	 ps.executeUpdate();
  	    out.println("successful...");
  	   	        }catch(Exception e){
  		 out.print(e);
          } 
   
   
%>


</body>
</html>