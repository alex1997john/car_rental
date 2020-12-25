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
<% String carimage=request.getParameter("carimage1");
String carimg=request.getParameter("carimage");
String regno=request.getParameter("regno");
String station=request.getParameter("station");
String discription=request.getParameter("discription");
String rentalprize=request.getParameter("rentalprize");
String maxdistance=request.getParameter("maxdistance");
String excessprize=request.getParameter("excessprize");
String geartype=request.getParameter("geartype");
String fueltype=request.getParameter("fueltype");
String seattype=request.getParameter("seattype");
try{
 	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
 	 PreparedStatement ps=con.prepareStatement("update cartable set regno=?,station=?,carimage=?,discription=?,rentalprize=?,maxdistance=?,excessprize=?,geartype=?,fueltype=?,seattype=?,status=? where regno=?");

 	 ps.setString(1,regno);
 	 ps.setString(2,station);
 	 ps.setString(3,carimage);
 	 ps.setString(4,discription);
 	 ps.setString(5,rentalprize);
 	 ps.setString(6,maxdistance);
 	 ps.setString(7,excessprize); 
 	 ps.setString(8,geartype);
 	ps.setString(9,fueltype);
 	ps.setString(10,seattype);
 	ps.setString(11,"active");
 	ps.setString(12,regno);
 	 ps.executeUpdate();
 	
	   
	   response.sendRedirect("viewcaradmin.jsp");
	    
	   	        }catch(Exception e){
		 out.print(e);
       } %>

</body>
</html>