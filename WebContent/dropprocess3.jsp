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


String reqid=(String)session.getAttribute("reqid"); 

try{
	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
	 PreparedStatement ps=con.prepareStatement("update rentalrequesttable,deliverytable set rentalrequesttable.state=?,deliverytable.status=? where rentalrequesttable.reqid=? AND deliverytable.reqid=?");
	
	 ps.setString(1,"completed");
	 ps.setString(2,"completed");
	 ps.setString(3,reqid);
	 ps.setString(4,reqid);
	
	  
	 ps.executeUpdate();
	 session.setAttribute("reqid", reqid);
	    out.println("successfully inserted...start your journey ...");
	   
	    response.sendRedirect("dropprocess4.jsp");
	    
	   	        }catch(Exception e){
		 out.print(e);
      } %>
</body>
</html>