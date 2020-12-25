<%@page import="java.util.ArrayList"%>
<%@page import="carrental.Car"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="carrental.viewcardao"%>
<jsp:useBean id="u" class="carrental.Car"/>
<jsp:setProperty property="*" name="u"/>

<% 
ArrayList<Car> str=viewcardao.getAllRecords();  
for (Car c : str) {  
%>  
<img src="<%=c.getCarimage() %>">
<% out.println(c.getRegno()); %>
<% }%>
</body>  
</html>  
</body>
</html>