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

<% String fname1=request.getParameter("fname");
   String lname=request.getParameter("lname");
   String dob=request.getParameter("dob");
   String mobileno=request.getParameter("mobileno");
   String email=request.getParameter("email");
   
   String pass=request.getParameter("password");
   String repass=request.getParameter("repassword");
   String useremail;
   
   try{
   	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
		 PreparedStatement ps=con.prepareStatement("select * from usertable where email=?");
		 ps.setString(1, email);
		
		 ResultSet rs = ps.executeQuery();
		 if(rs.next())
		   {
			 useremail = rs.getString("email");
			
			 if(email.equals(useremail))
			 {
				 %>
				 
				 <jsp:forward page="erroraccount.jsp"> 
<jsp:param name="id" value="<%=email %>" />
</jsp:forward> 
				 <% 
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
  	 PreparedStatement ps=con.prepareStatement("insert into usertable values(?,?,?,?,?,?,?,?)");

  	 ps.setString(1,null);
  	 ps.setString(2,fname1);
  	 ps.setString(3,lname);
  	 ps.setString(4,dob);
  	 ps.setString(5,mobileno);
  	 ps.setString(6,email);
  	 ps.setString(7,pass); 
  	 ps.setString(8,"pending");
  	 ps.executeUpdate();
  	    out.println("successful...");
  	   session.setAttribute("useremail",email);
  	   response.sendRedirect("registrationprocess1.jsp");
  	    
  	   	        }catch(Exception e){
  		 out.print(e);
          } 
   
	         
   %>
  

   
</body>
</html>