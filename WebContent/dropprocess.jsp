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
String reading,excessprize,maxdistance,total;
String reqid=request.getParameter("reqid");
String regno=request.getParameter("regno");
String meterreading=request.getParameter("reading");
String pic=request.getParameter("pic");
String date=request.getParameter("datetime");
String check=request.getParameter("check");
String amount=request.getParameter("amount");
if(check==null){
	check="1";
	amount="0";

String a=reqid+"-"+regno+"-"+meterreading+"-"+pic+"-"+date+"-"+check+"-"+amount;



try{
	 Connection con = null;
	String url="jdbc:mysql://localhost:3306/carrental";
	String userName="root";
	String passcode="";
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(url, userName, passcode);
	 PreparedStatement ps=con.prepareStatement("select * from deliverytable where reqid=?");
	 ps.setString(1, reqid);
	 
	 ResultSet rs = ps.executeQuery();
	 while(rs.next())
	   {
		reading= rs.getString("meterreading");
		//out.println(reading);
		session.setAttribute("reading", reading);
		session.setAttribute("a",a);
		session.setAttribute("regno",regno);
		response.sendRedirect("dropprocess1.jsp");
		 }
	
	 response.sendRedirect("newrentalrequest.jsp");
		}catch(Exception e){
		out.print(e);
			} 

}


else{
	

String a=reqid+"-"+regno+"-"+meterreading+"-"+pic+"-"+date+"-"+check+"-"+amount;



try{
	 Connection con = null;
	String url="jdbc:mysql://localhost:3306/carrental";
	String userName="root";
	String passcode="";
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(url, userName, passcode);
	 PreparedStatement ps=con.prepareStatement("select * from deliverytable where reqid=?");
	 ps.setString(1, reqid);
	 
	 ResultSet rs = ps.executeQuery();
	 while(rs.next())
	   {
		reading= rs.getString("meterreading");
		//out.println(reading);
		session.setAttribute("reading", reading);
		session.setAttribute("a",a);
		session.setAttribute("regno",regno);
		response.sendRedirect("dropprocess1.jsp");
		 }
	
	 response.sendRedirect("newrentalrequest.jsp");
		}catch(Exception e){
		out.print(e);
			} 

}


%>


 

 
</body>
</html>

