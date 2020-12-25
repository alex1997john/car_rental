<%@page import="java.util.ArrayList"%>
<%@page import="carrental.rental"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import = "java.io.*,java.util.*,java.sql.*,java.lang.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>AlexaCarrental</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	 <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!--=== Slicknav CSS ===-->
    <link href="assets/css/plugins/slicknav.min.css" rel="stylesheet">
    <!--=== Magnific Popup CSS ===-->
    <link href="assets/css/plugins/magnific-popup.css" rel="stylesheet">
    <!--=== Owl Carousel CSS ===-->
    <link href="assets/css/plugins/owl.carousel.min.css" rel="stylesheet">
    <!--=== Gijgo CSS ===-->
    <link href="assets/css/plugins/gijgo.css" rel="stylesheet">
    <!--=== FontAwesome CSS ===-->
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <!--=== Theme Reset CSS ===-->
    <link href="assets/css/reset.css" rel="stylesheet">
    <!--=== Main Style CSS ===-->
    <link href="style.css" rel="stylesheet">
    <!--=== Responsive CSS ===-->
    <link href="assets/css/responsive.css" rel="stylesheet">


    <!--[if lt IE 9]>
        <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="assets/img/table-images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/table-vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/table-fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/table-vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/table-vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/table-vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/css/table-css/util.css">
	<link rel="stylesheet" type="text/css" href="assets/css/table-css/main.css">
<!--===============================================================================================-->
</head>
<body>
<%@ include file="adminheader.jsp" %> 
	<br><br>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">reqid</th>
								<th class="column6"></th>
								<th class="column3">regno</th>
								<th class="column4"></th>
								<th class="column5">meterreading</th>
								<th class="column6"></th>
								<th class="column6">Extra ravel</th>
								<th class="column6"></th>
								<th class="column6"></th>
								<th class="column6">extra amount(late drop)</th>
								<th class="column6"></th>
								<th class="column6"></th>
								
							</tr>
						</thead>
						<%  
						String reqid=(String)session.getAttribute("reqid");
						try{
     	 Connection con = null;
  		String url="jdbc:mysql://localhost:3306/carrental";
  		String userName="root";
  		String passcode="";
  		Class.forName("com.mysql.jdbc.Driver");
 		con=DriverManager.getConnection(url, userName, passcode);
 		 PreparedStatement ps=con.prepareStatement("select * from droptable where reqid=?");
 		ps.setString(1,reqid);
 		 ResultSet rs = ps.executeQuery();
 		 while(rs.next())
 		   {
 			%>
<tbody>
								<tr>
									<td class="column1"><%=rs.getInt("reqid")%></td>
									<td class="column6"></td>
									<td class="column3"><%=rs.getString("regno")%></td>
									<td class="column4"></td>
									<td class="column5"><%=rs.getString("meterreading")%></td>
									<td class="column6"></td>
									<td class="column6"><%=rs.getString("damageamount")%></td>
									<td class="column6"></td>
									<td class="column6"></td>
									<td class="column6"><%=rs.getString("lateamount")%></td>
									<td class="column6"></td>
									<td class="column6"></td>
								</tr>





								
<% }
  }catch(Exception e){
 		 out.print(e);
         } %>
						
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


	

<!--===============================================================================================-->	
	<script src="assets/table-vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/table-vendor/bootstrap/js/popper.js"></script>
	<script src="assets/table-vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/table-vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/js/table-js/main.js"></script>

</body>

</html>