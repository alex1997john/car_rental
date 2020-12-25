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
String regno=request.getParameter("regno");
String reqid=request.getParameter("rentalid");

String reading=request.getParameter("reading");
String pic=request.getParameter("pic");


try{
 	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
 	 PreparedStatement ps=con.prepareStatement("insert into deliverytable values(?,?,?,?,?)");
 	 ps.setString(1,reqid);
	 ps.setString(2,regno);
	 ps.setString(3,reading);
	 ps.setString(4,pic);
	 ps.setString(5,"running");
	
	
	  
	 ps.executeUpdate();
	    out.println("successfully inserted...start your journey ...");
	   
	  
	    
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
	 PreparedStatement ps=con.prepareStatement("update rentalrequesttable set state=? where reqid=?");
	
	 ps.setString(1,"running");
	 ps.setString(2,reqid);
	
	  
	 ps.executeUpdate();
	    out.println("successfully inserted...start your journey ...");
	   
	    response.sendRedirect("newrentalrequest.jsp");
	    
	   	        }catch(Exception e){
		 out.print(e);
      } 



%>
</body>
</html>