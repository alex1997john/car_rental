<%@page import="java.util.Date"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String a=request.getParameter("from");
String ary1[]=a.split(" ");
String b=request.getParameter("to");
String ary2[]=b.split(" ");
out.println(ary1[0]);
out.println(ary2[0]);

%>

 <%
 
		String date1 = ary1[0];
		String time1 = ary1[1];
		String date2 = ary2[0];
		String time2 = ary2[1];

		String format = "yyyy/mm/dd HH:mm";

		SimpleDateFormat sdf = new SimpleDateFormat(format);

		Date dateObj1 = sdf.parse(date1 + " " + time1);
		Date dateObj2 = sdf.parse(date2 + " " + time2);
		//out.println(dateObj1);
		//out.println(dateObj2 + "\n");

		DecimalFormat crunchifyFormatter = new DecimalFormat("###,###");

		// getTime() returns the number of milliseconds since January 1, 1970, 00:00:00 GMT represented by this Date object
		long diff = dateObj2.getTime() - dateObj1.getTime();

		out.println(diff);
		int diffDays = (int) (diff / (24 * 60 * 60 * 1000));
		out.println("difference between days: " + diffDays);

		int diffhours = (int) (diff / (60 * 60 * 1000));
		out.println("difference between hours: " + crunchifyFormatter.format(diffhours));

		int diffmin = (int) (diff / (60 * 1000));
		out.println("difference between minutues: " + crunchifyFormatter.format(diffmin));
		out.println(diffmin);
		int diffsec = (int) (diff / (1000));
		out.println("difference between seconds: " + crunchifyFormatter.format(diffsec));

		
		out.println("difference between milliseconds: " + crunchifyFormatter.format(diff));

	
 %>


</body>
</html>