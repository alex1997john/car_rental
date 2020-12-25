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
String email=(String)session.getAttribute("useremail");

try{
	        	 Connection con = null;
	     		String url="jdbc:mysql://localhost:3306/carrental";
	     		String userName="root";
	     		String passcode="";
	     		Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection(url, userName, passcode);
				
	        	    	String useremail;
	        	    	 PreparedStatement ps1=con.prepareStatement("select * from usertable where email=?");
	        	    	 ps1.setString(1, email);
	        	    	 ResultSet rs = ps1.executeQuery();
	        	    	 if(rs.next()){
	        	    		 useremail = rs.getString("email");
	        	    		 if(email.equals(useremail)){
	        	    			 String name,uid;
	        					 
	        					 name=rs.getString("fname");
	        					 out.print(name);
	        					 uid=String.valueOf(rs.getInt("userid"));
	        					 session.setAttribute("name",name);
	        					 session.setAttribute("userid", uid);
	        					 session.setAttribute("login",useremail);
	        					 response.sendRedirect("reg2.jsp");
	        	    		 }
	        	    	 }
	        	    }catch(Exception e){
	        		 out.print(e);
	                }
				

				
				
				 %>
</body>
</html>