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


String read=(String)session.getAttribute("reading"); 
String a=(String)session.getAttribute("a");
String regno=(String)session.getAttribute("regno"); 
String excessprize,maxdistance;
try{
	 Connection con = null;
	String url="jdbc:mysql://localhost:3306/carrental";
	String userName="root";
	String passcode="";
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(url, userName, passcode);
	 PreparedStatement ps=con.prepareStatement("select * from cartable where regno=?");
	 ps.setString(1, regno);
	 
	 ResultSet rs = ps.executeQuery();
	 if(rs.next())
	   {
		 excessprize= rs.getString("excessprize");
		 maxdistance=rs.getString("maxdistance");
		//out.println(excessprize);
		 session.setAttribute("excessprize", excessprize);
		 session.setAttribute("maxdistance", maxdistance);
		 session.setAttribute("a", a);
		 session.setAttribute("read", read);
		 response.sendRedirect("dropprocess2.jsp");
		 }
	 response.sendRedirect("dropadmin.jsp");

		}catch(Exception e){
		out.print(e);
			} 


%>


</body>
</html>