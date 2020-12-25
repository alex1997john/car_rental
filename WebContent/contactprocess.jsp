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
String name=request.getParameter("name");
String email=request.getParameter("email");
String sub=request.getParameter("sub");
String msg=request.getParameter("review");
try{
 	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
 	 PreparedStatement ps=con.prepareStatement("insert into querytable values(?,?,?,?,?)");

 	 ps.setString(1,null);
 	 ps.setString(2,name);
 	 ps.setString(3,email);
 	 ps.setString(4,sub);
 	 ps.setString(5,msg);
 	
 	 ps.executeUpdate();
 	    out.println("successful...");
 	   
 	   response.sendRedirect("index.jsp");
 	    
 	   	        }catch(Exception e){
 		 out.print(e);
         } 
  
	         
  %>



</body>
</html>