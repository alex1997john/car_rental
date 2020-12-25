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
 <%String a=request.getParameter("from");
 String ary[]=a.split(" ");
out.println(ary[0]);
 String b=request.getParameter("to");
 String ary1[]=b.split(" ");
 out.println(ary1[0]);
 String c=request.getParameter("station");
 try{
	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/test";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(url, userName, passcode);
	 PreparedStatement ps=con.prepareStatement("SELECT regno FROM cartable WHERE regno NOT IN (SELECT regno FROM rentalrequesttable WHERE ('"+ary[0]+"' BETWEEN pickupdate AND dropdate) OR ('"+ary1[0]+"' BETWEEN pickupdate AND dropdate)) AND station=? UNION ALL SELECT regno FROM cartable WHERE regno NOT IN (SELECT regno FROM rentalrequesttable WHERE ('"+ary[0]+"' BETWEEN pickupdate AND dropdate) OR ('"+ary1[0]+"' BETWEEN pickupdate AND dropdate)) AND station!=?");
	 ps.setString(1, c);
	 ps.setString(2, c);
	 //ps.setString(2, ary1[0]);
	 ResultSet rs = ps.executeQuery();
	 while(rs.next())
	 {
		 out.println(rs.getString("regno"));
	 }
 }catch(Exception e){
	 out.print(e);
    } 

 %>
</body>
</html>