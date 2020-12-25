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
String excessprize=(String)session.getAttribute("excessprize");
String maxdistance=(String)session.getAttribute("maxdistance");
String excess=excessprize;
String distance=maxdistance;
String ary[]=a.split("-");
String reqid=ary[0];
String regno=ary[1];
String meterreading=ary[2];
String pic=ary[3];
String date=ary[4];
String check=ary[5];
String amount=ary[6];

int distance1=Integer.parseInt(distance);
int excess1=Integer.parseInt(excess);
int read1=Integer.parseInt(read);
int meterreading1=Integer.parseInt(meterreading);
int amount1=Integer.parseInt(amount);
int tot=distance1+read1;
out.println(tot);
out.println(meterreading1);
out.println(a);
out.println(check);

if(tot>=meterreading1 &&check.equals("1")){
	session.setAttribute("a",a);
	session.setAttribute("reading", read);
	session.setAttribute("excessprize", excessprize);
	session.setAttribute("maxdistance", maxdistance);
	response.sendRedirect("2.jsp");
	out.println("haii");
}
else if(tot<meterreading1 &&check.equals("1"))
{
	out.println("222");
}
else if(tot<meterreading1 && check.equals("z")){
	out.println("333");
}
else if(tot>=meterreading1 && check.equals("z"))
{
	out.println("444");
}
else{
	out.println("NOO");
}
 %>
</body>
</html>