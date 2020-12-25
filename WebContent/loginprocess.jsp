<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import = "java.io.*,java.util.*,java.sql.*,java.lang.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
     String email=request.getParameter("email");
     String pass=request.getParameter("password");
     String useremail,userpwd;
     String email1="admin@gmail.com";
     String pass1="123";
     
     if((email1.equals(email)) && (pass1.equals(pass))){
	    	 response.sendRedirect("viewcaradmin.jsp");
	    	 session.setAttribute("login",email1);
			    session.setAttribute("name","admin");
	    	 
	    	 }
   
         try{
     	 Connection con = null;
  		String url="jdbc:mysql://localhost:3306/carrental";
  		String userName="root";
  		String passcode="";
  		Class.forName("com.mysql.jdbc.Driver");
 		con=DriverManager.getConnection(url, userName, passcode);
 		 PreparedStatement ps=con.prepareStatement("select * from usertable where email=? AND psw=?");
 		 ps.setString(1, email);
 		 ps.setString(2, pass);
 		 ResultSet rs = ps.executeQuery();
 		 while(rs.next())
 		   {
 			 useremail = rs.getString("email");
 			 userpwd= rs.getString("psw");
 			 if(email.equals(useremail) && pass.equals(userpwd))
 			   {
 				 String name,uid;
 				 
 				 name=rs.getString("fname");
 				 uid=String.valueOf(rs.getInt("userid"));
 						 
 			    session.setAttribute("login",useremail);
 			    session.setAttribute("name",name);
 			    session.setAttribute("userid",uid);
 			    
 			    response.sendRedirect("index.jsp");
 			   //session name is login and store fetchable database email address
 			    //out.print("succes");
 			    
 			    }
 			 
 		   }
 		 
 		 response.sendRedirect("errorlogin2.jsp");
      
 		 
      }catch(Exception e){
 		 out.print(e);
         } 
     
        
     
   %>
    


</body>
 
</html>