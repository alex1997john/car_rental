<%@page import="java.util.Date"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
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

String date1=(String)session.getAttribute("date1"); 
String time1=(String)session.getAttribute("time1"); 
String date2=(String)session.getAttribute("date2"); 
String time2=(String)session.getAttribute("time2");
String station=(String)session.getAttribute("station"); 
String regno=(String)session.getAttribute("value");

String ary[]=regno.split("-");
out.println(ary[1]);
Date date = Calendar.getInstance().getTime();  
DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
String strDate = dateFormat.format(date);  
out.println("Converted String: " + strDate);

try{
	 Connection con = null;
	String url="jdbc:mysql://localhost:3306/carrental";
	String userName="root";
	String passcode="";
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(url, userName, passcode);
	 PreparedStatement ps=con.prepareStatement("insert into rentalrequesttable values(?,?,?,?,?,?,?,?,?,?,?,?)");
	 
	 ps.setString(1,null);
	 ps.setString(2,useremail);
	 ps.setString(3,ary[0]);
	 ps.setString(4,strDate);
	 ps.setString(5,date1);
	 ps.setString(6,time1);
	 ps.setString(7,date2);
	 ps.setString(8,time2);
	 ps.setString(9,ary[1]);
	 ps.setString(10,"5");
	 ps.setString(11,station);
	 ps.setString(12,"pending");
	 session.setAttribute("regno",ary[0]);
	 session.setAttribute("rentalprize",ary[2]);
	 session.setAttribute("date1",date1);
	 session.setAttribute("station",station);
	 session.setAttribute("time1",time1);
	 session.setAttribute("date2",date2);
	 session.setAttribute("time2",time2);
	 session.setAttribute("date1",date1);
	 
	out.println("successful");
	 
	 ps.executeUpdate();
	 response.sendRedirect("mail1.jsp");
	 
}catch(Exception e){
	 out.print(e);
 } 

%>
</body>
</html>