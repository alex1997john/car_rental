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
String dlno=request.getParameter("dlno");
String dlfront=request.getParameter("dlfront");
String dlback=request.getParameter("dlback");

try{
	 Connection con = null;
	String url="jdbc:mysql://localhost:3306/carrental";
	String userName="root";
	String passcode="";
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(url, userName, passcode);
	con=DriverManager.getConnection(url, userName, passcode);
	 PreparedStatement ps=con.prepareStatement("insert into verificationtable values(?,?,?,?,?,?)");

	 ps.setString(1,uid);
	 ps.setString(2,useremail);
	 ps.setString(3,dlno);
	 ps.setString(4,dlfront);
	 ps.setString(5,dlback);
	 ps.setString(6,"inactive");
	 ps.executeUpdate();
	    out.println("successful...");
	    session.setAttribute("name",name);
		 session.setAttribute("userid", uid);
		 session.setAttribute("login",useremail);
		 response.sendRedirect("index.jsp");
	 
}catch(Exception e){
	 out.print(e);
}


%>
</body>
</html>