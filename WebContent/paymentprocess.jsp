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
session.setAttribute("date1", date1);
session.setAttribute("time1", time1);
session.setAttribute("date2", date2);
session.setAttribute("time2", time2);
session.setAttribute("station", station);
session.setAttribute("value", regno);



String cardnumber=request.getParameter("cardnumber");
String validupto=request.getParameter("validupto");
String cvv=request.getParameter("cvv");
String holdername=request.getParameter("holdername");
String cardnumber1,validupto1,cvv1,holdername1; 
try{
	 Connection con = null;
	String url="jdbc:mysql://localhost:3306/carrental";
	String userName="root";
	String passcode="";
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(url, userName, passcode);
	 PreparedStatement ps=con.prepareStatement("select * from payment");
	
	 ResultSet rs = ps.executeQuery();
	 while(rs.next())
	   {
		 cardnumber1 = rs.getString("cardnumber");
		 validupto1= rs.getString("validto");
		 cvv1= rs.getString("cvv");
		 holdername1= rs.getString("holdername");
		 
		 if(cardnumber.equals(cardnumber1) && validupto.equals(validupto1) && cvv.equals(cvv1) && holdername1.equals(holdername.toUpperCase()))
		 {
			 response.sendRedirect("booknow.jsp");
		 }

		 else{
			 %><center><h3>Your card details is incorrect please check and enter valid details. Please Wait....</h3></center><%
			 //response.sendRedirect("payment.jsp"); 
			 %>
			 <script type="text/javascript">
			   
			    setTimeout(function(){
			        window.location.href = 'payment.jsp';
			     }, 1500);
			</script><%
		 }
	   }
}catch(Exception e){
	out.println(e);
}
		 
%>
</body>
</html>