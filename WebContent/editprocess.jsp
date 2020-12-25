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
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String dob=request.getParameter("dob");
String mobno=request.getParameter("mobileno");
String email=request.getParameter("email");
String email1=(String)session.getAttribute("email1");

out.println(fname);


try{
	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
		PreparedStatement ps=con.prepareStatement("update rentalrequesttable set email=? where email=? ");
	 	 ps.setString(1,email);
	 	ps.setString(2,email1);
	 
	 	
	 	
	 	
	 	
	 	 
	 	 ps.executeUpdate();
	    out.println("successful...");
	   session.setAttribute("id",email);
	   %><% 
	   
	   //response.sendRedirect("profile.jsp?id="");
	   
	   
	    
	   	        }catch(Exception e){
		 out.print(e);
} 

try{
	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
		PreparedStatement ps=con.prepareStatement("update verificationtable set email=? where email=? ");
	 	 ps.setString(1,email);
	 	ps.setString(2,email1);
	 
	 	
	 	
	 	
	 	
	 	 
	 	 ps.executeUpdate();
	    out.println("successful...");
	   session.setAttribute("id",email);
	   %><% 
	   
	   //response.sendRedirect("profile.jsp?id="");
	   
	   
	    
	   	        }catch(Exception e){
		 out.print(e);
 } 



try{
	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
		PreparedStatement ps=con.prepareStatement("update usertable set fname=?,lname=?,email=?,mobno=?,dob=? where email=? ");
	 	 ps.setString(1,fname);
	 	ps.setString(2,lname);
	 	ps.setString(3,email);
	 	ps.setString(4,mobno);
	 	ps.setString(5,dob);
	 	ps.setString(6,email1);
	 	
	 	
	 	
	 	
	 	 
	 	 ps.executeUpdate();
	    out.println("successful...");
	   session.setAttribute("id",email);
	   %><% 
	   
	   //response.sendRedirect("profile.jsp?id="");
	   
	   
	    
	   	        }catch(Exception e){
		 out.print(e);
   } 




%>

<jsp:forward page="profile.jsp"> 
<jsp:param name="id" value="<%=email %>" /> 
</jsp:forward> 


 

</body>
</html>