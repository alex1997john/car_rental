<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import = "java.io.*,java.util.*,java.sql.*,java.lang.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

    <title>Cardoor - Car Rental HTML Template</title>

    <!--=== Bootstrap CSS ===-->
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
    
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
<body class="loader-active">

    <!--== Preloader Area Start ==-->
    <div class="preloader">
        <div class="preloader-spinner">
            <div class="loader-content">
                <img src="assets/img/preloader.gif" alt="JSOFT">
            </div>
        </div>
    </div>
    <!--== Preloader Area End ==-->

   <!--== Header Area Start ==-->
    <%@ include file="adminheader.jsp" %> 
    <!--== Header Area End ==-->

	<br><br><br><br><br>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">request Id</th>
								<th class="column2">User Id</th>
								<th class="column3">RegNo</th>
								<th class="column4">Booking Time</th>
								<th class="column5">Pickup Date</th>
								<th class="column6">Pickup time</th>
								<th class="column6">Drop Date</th>
								<th class="column6">Drop time</th>
								<th class="column6">Rental prize</th>
								<th class="column6">GST</th>
								<th class="column6">Station</th>
								<th class="column6">status</th>
								
							</tr>
						</thead>
						<% 
    
     
     try{
    	 Connection con = null;
 		String url="jdbc:mysql://localhost:3306/carrental";
 		String userName="root";
 		String passcode="";
 		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, userName, passcode);
		 PreparedStatement ps=con.prepareStatement("select * from rentalrequesttable");
		 ResultSet rs = ps.executeQuery();
		 while(rs.next())
		   {
		 
		%>
						<tbody>
								<tr>
									<td class="column1"><%=rs.getString("reqid")%></td>
									<td class="column2"><%=rs.getString("email")%></td>
									<td class="column3"><%=rs.getString("regno")%></td>
									<td class="column4"><%=rs.getString("bookingdate")%></td>
									<td class="column5"><%=rs.getString("pickupdate")%></td>
									<td class="column6"><%=rs.getString("pickuptime")%></td>
									<td class="column6"><%=rs.getString("dropdate")%></td>
									<td class="column6"><%=rs.getString("droptime")%></td>
									<td class="column6"><%=rs.getString("rentalprize")%></td>
									<td class="column6"><%=rs.getString("gst")%></td>
									<td class="column6"><%=rs.getString("station")%></td>
									<td class="column6"><%=rs.getString("state")%></td>
								</tr>
								<% 
								}
								 }catch(Exception e){
		 out.print(e);
        } 
    
     
    
   %>
								
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


	
<!--=== Jquery Min Js ===-->
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <!--=== Jquery Migrate Min Js ===-->
    <script src="assets/js/jquery-migrate.min.js"></script>
    <!--=== Popper Min Js ===-->
    <script src="assets/js/popper.min.js"></script>
    <!--=== Bootstrap Min Js ===-->
    <script src="assets/js/bootstrap.min.js"></script>
    <!--=== Gijgo Min Js ===-->
    <script src="assets/js/plugins/gijgo.js"></script>
    <!--=== Vegas Min Js ===-->
    <script src="assets/js/plugins/vegas.min.js"></script>
    <!--=== Isotope Min Js ===-->
    <script src="assets/js/plugins/isotope.min.js"></script>
    <!--=== Owl Caousel Min Js ===-->
    <script src="assets/js/plugins/owl.carousel.min.js"></script>
    <!--=== Waypoint Min Js ===-->
    <script src="assets/js/plugins/waypoints.min.js"></script>
    <!--=== CounTotop Min Js ===-->
    <script src="assets/js/plugins/counterup.min.js"></script>
    <!--=== YtPlayer Min Js ===-->
    <script src="assets/js/plugins/mb.YTPlayer.js"></script>
    <!--=== Magnific Popup Min Js ===-->
    <script src="assets/js/plugins/magnific-popup.min.js"></script>
    <!--=== Slicknav Min Js ===-->
    <script src="assets/js/plugins/slicknav.min.js"></script>

    <!--=== Mian Js ===-->
    <script src="assets/js/main.js"></script>
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