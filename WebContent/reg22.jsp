<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import = "java.io.*,java.util.*,java.sql.*,java.lang.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.io.FileInputStream" %>
 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String dlno=request.getParameter("dlno");
   String dlfront=request.getParameter("dlfront");
  // String dlback=request.getParameter("dlback");
  FileInputStream fis=null;

   try{
	        	Connection con = null;
	     		String url="jdbc:oracle:thin:@localhost:1521:XE";
	     		String userName="system";
	     		String passcode="alex";
	     		Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection(url,userName,passcode);
				File image= new File(dlfront);
				PreparedStatement pss=con.prepareStatement("insert into VERI values(?,?)");
				pss.setString(1,dlno);
				
				fis=new FileInputStream(image);
	        	pss.setString(2,dlfront);
	        	//pss.setString(3,dlback);
	        	pss.setBinaryStream(2, (InputStream) fis, (int) (image.length()));
	        	pss.executeUpdate();
        	    out.println("successful...");
        	   	        }catch(Exception e){
        		 out.print(e);
                } 
%>
</body>
</html>