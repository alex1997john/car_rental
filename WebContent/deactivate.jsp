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
<%String userid=request.getParameter("id");
try{
 	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
 	 PreparedStatement ps=con.prepareStatement("update verificationtable,usertable set verificationtable.status=?,usertable.status=? where verificationtable.userid=? AND usertable.userid=?");
 	 ps.setString(1,"inactive");
 	 ps.setString(2, "inactive");
 	 ps.setString(3, userid);
  	ps.setString(4, userid);
	  
	 ps.executeUpdate();
	    out.println("successful...");
	   
	   response.sendRedirect("adminverification.jsp");
	    
	   	        }catch(Exception e){
		 out.print(e);
       } 

%>
</body>
</html>