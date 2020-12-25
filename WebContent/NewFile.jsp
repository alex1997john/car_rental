<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%String a=(String)session.getAttribute("a");
out.println(a);%>



if(tot<=meterreading1 && check=="1")
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
		 out.println("successful...");
	}catch(Exception e){System.out.println(e);}  
}

else if(tot>meterreading1 && check=="1")
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
		 ps.setInt(5,cash);
		 ps.setString(6,"0");
		
		 ps.executeUpdate();
		 out.println("successful...");
	}catch(Exception e){System.out.println(e);}  
}

else if(tot>meterreading1 && check!="1")
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
		 ps.setInt(5,cash);
		 ps.setInt(6,amount1);
		
		 ps.executeUpdate();
		 out.println("successful...");
	}catch(Exception e){System.out.println(e);}  
}


else if(tot<=meterreading1 && check!="1")
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
	}catch(Exception e){System.out.println(e);}  
}


</body>
</html>