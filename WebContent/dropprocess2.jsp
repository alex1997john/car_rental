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
out.println(amount);
out.println(a);
if(tot>=meterreading1 &&check.equals("1"))
{
	try{
   	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
		 PreparedStatement ps=con.prepareStatement("insert into droptable values(?,?,?,?,?,?)");
		 ps.setString(1, reqid);
		 ps.setString(2, regno);
		 ps.setString(3, meterreading);
		 ps.setString(4, pic);
		 ps.setString(5,"0");
		 ps.setString(6,"0");
		
		 ps.executeUpdate();
		 session.setAttribute("reqid", reqid);
		 response.sendRedirect("dropprocess3.jsp");
		 out.println("successful...");
	}catch(Exception e){System.out.println(e);}  
}

else if(tot<meterreading1 &&check.equals("1"))
{
	int dis=meterreading1-tot;
	int cash=dis*excess1;

	try{
   	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
		 PreparedStatement ps=con.prepareStatement("insert into droptable values(?,?,?,?,?,?)");
		 ps.setString(1, reqid);
		 ps.setString(2, regno);
		 ps.setString(3, meterreading);
		 ps.setString(4, pic);
		 ps.setInt(5,cash);
		 ps.setString(6,"0");
		
		 ps.executeUpdate();
		 session.setAttribute("reqid", reqid);
		 response.sendRedirect("dropprocess3.jsp");
		 out.println("successful...");
	}catch(Exception e){System.out.println(e);}  
}

else if(tot<meterreading1 && check.equals("z"))
{
	int dis=meterreading1-tot;
	int cash=dis*excess1;

	try{
   	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
		 PreparedStatement ps=con.prepareStatement("insert into droptable values(?,?,?,?,?,?)");
		 ps.setString(1, reqid);
		 ps.setString(2, regno);
		 ps.setString(3, meterreading);
		 ps.setString(4, pic);
		 ps.setInt(5,cash);
		 ps.setInt(6,amount1);
		
		 ps.executeUpdate();
		 session.setAttribute("reqid", reqid);
		 response.sendRedirect("dropprocess3.jsp");
		 out.println("successful...");
	}catch(Exception e){System.out.println(e);}  
}


else if(tot>=meterreading1 && check.equals("z"))
{
	int dis=tot-meterreading1;
	int cash=dis*excess1;

	try{
   	 Connection con = null;
		String url="jdbc:mysql://localhost:3306/carrental";
		String userName="root";
		String passcode="";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
		 PreparedStatement ps=con.prepareStatement("insert into droptable values(?,?,?,?,?,?)");
		 ps.setString(1, reqid);
		 ps.setString(2, regno);
		 ps.setString(3, meterreading);
		 ps.setString(4, pic);
		 ps.setInt(5,0);
		 ps.setInt(6,amount1);
		
		 ps.executeUpdate();
		 out.println("successful...");
		 session.setAttribute("reqid", reqid);
		 response.sendRedirect("dropprocess3.jsp");
	}catch(Exception e){System.out.println(e);}  
}

%>
</body>
</html>