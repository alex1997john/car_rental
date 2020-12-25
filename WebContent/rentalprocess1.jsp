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
String useremail=(String)session.getAttribute("login");
String uid=(String)session.getAttribute("userid");
String name=(String)session.getAttribute("name");
session.setAttribute("name",name);
session.setAttribute("userid", uid);
session.setAttribute("login",useremail);
String email1;

		 
String date1=(String)session.getAttribute("date1"); 
String time1=(String)session.getAttribute("time1"); 
String date2=(String)session.getAttribute("date2"); 
String time2=(String)session.getAttribute("time2");
String station=(String)session.getAttribute("station"); 
String regno=request.getParameter("value");


session.setAttribute("date1", date1);
session.setAttribute("time1", time1);
session.setAttribute("date2", date2);
session.setAttribute("time2", time2);
session.setAttribute("station", station);
session.setAttribute("value", regno);


try{
	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(url, userName, passcode);
	 PreparedStatement ps=con.prepareStatement("select * from usertable where status=?");
	 
	 ps.setString(1, "pending");
	
	 ResultSet rs = ps.executeQuery();
	 while(rs.next())
	   {
		 email1 = rs.getString("email");
		 if(email1.equals(useremail))
		 {
			
      	 response.sendRedirect("errorverification.jsp");
		 }
	   }
	 
	 
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
	 PreparedStatement ps=con.prepareStatement("select * from rentalrequesttable where state=? or state=?");
	 
	 ps.setString(1, "pending");
	 ps.setString(2, "running");
	
	 ResultSet rs = ps.executeQuery();
	 while(rs.next())
	   {
		 email1 = rs.getString("email");
		 if(email1.equals(useremail))
		 {
			
       	 response.sendRedirect("errorbooking.jsp");
		 }
	   }
	 response.sendRedirect("payment.jsp");
	 
}catch(Exception e){
	 out.print(e);
  } 


out.println(date1);
out.println(time1);		 
out.println(date2);
out.println(time2);
out.println(station);
	 
 			 
 		   
 		 
         
      
 	
     
       
     
   %>
    

</body>
</html>