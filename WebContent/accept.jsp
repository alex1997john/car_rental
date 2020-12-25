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

<%String a=request.getParameter("id") ;
String ary[]= a.split("-");%>
<%

try{
 	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
 	 PreparedStatement ps=con.prepareStatement("update rentalrequesttable set state=? where reqid=?");
 	 ps.setString(1,"accepted");
 	ps.setString(2,ary[0]);
 	 
 	 ps.executeUpdate();
	    out.println("successfully inserted...start your journey ...");
	   
	   response.sendRedirect("newrentalrequest.jsp");
	    
	   	        }catch(Exception e){
		 out.print(e);
    } 


 	 %>
</body>
</html>