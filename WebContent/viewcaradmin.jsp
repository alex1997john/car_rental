<%@page import="java.util.ArrayList"%>
<%@page import="carrental.Car"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import = "java.io.*,java.util.*,java.sql.*,java.lang.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

    <title>Cardoor - Car Rental HTML Template</title>

    <!--=== Bootstrap CSS ===-->
    <link href="assets/css/bootstrap.min12.css" rel="stylesheet">
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
</head>

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
   
    
    <br><br><br><br><br><br>
    
             
           
    
     <section id="blog" class="container">
            <div class="center">
            <center>  <h3>View Cars</h3></center> 
            </div><br><br>
            <div class="blog">
    
    
    
    
    
    
    
    <%@page import="carrental.viewcardao"%>
<jsp:useBean id="u" class="carrental.Car"/>
<jsp:setProperty property="*" name="u"/>

<% 
ArrayList<Car> str=viewcardao.getAllRecords();  
for (Car c : str) {  
%>  
<div class="row car-details">
                    <div class="col-md-3">
                        <%  out.println("<img class='img-responsive' src='" + c.getCarimage() + "'>"); %>
                    </div>
                    <div class="col-md-7">
                        <%
                        out.println("<p><h6>" + c.getDiscription() + "</h6></p>");
                        out.println("<p><em>Register Number: </em>" + c.getRegno() + "</p>");
                        out.println("<p>" + c.getGeartype() + "|" + c.getFueltype() + "|" + c.getSeattype() + " Seater</p>");
                            out.println("<p><em>Station: </em>" +c.getStation() + "  </p>");
                            
                            out.println("<p><em>Maximum Distance: </em>Rs " + c.getMaxdistance() + "KM ||<em>Excess Limit: </em>Rs " + c.getExcessprize() + "/KM</p>");
                            out.println("<p><em>Rental Price: </em>Rs " + c.getRentalprize() + "/KM</p>");
                           
                           
                        %>
                    </div>
                     <div class="col-md-2">
                     <% 
                     out.println("<a class='btn btn-warning' href='editcar.jsp?id=" + c.getRegno() + "' role='button'>Edit</a>");
                            out.println("<a class='btn btn-warning' href='deletecar.jsp?id=" + c.getRegno() + "' role='button'>Delete</a>");
                            out.println("<br><br><p><em>Status: </em> " + c.getState() + "</p>");%>
                     </div>
                </div><br><br>


                <% }%>
                </div><!--/.row-->
        </div>
    </section><!--/#blog-->
<!--== Footer Area Start ==-->
     <%@ include file="footer.jsp" %> 
    <!--== Footer Area End ==-->

    <!--== Scroll Top Area Start ==-->
    <div class="scroll-top">
        <img src="assets/img/scroll-top.png" alt="JSOFT">
    </div>
    <!--== Scroll Top Area End ==-->

    <!--=======================Javascript============================-->
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
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery.datetimepicker.full.js"></script>

</body>

</html>