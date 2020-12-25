<%@page import="java.util.ArrayList"%>
<%@page import="carrental.Car"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
-<!DOCTYPE html>
<html class="no-js" lang="zxx">

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
    <%@page import="carrental.editcardao"%>
<jsp:useBean id="u" class="carrental.Car"/>
<jsp:setProperty property="*" name="u"/>
<% Car c= editcardao.editcar(u,request.getParameter("id"));%>
    <!--== Login Page Content Start ==-->
    <section id="lgoin-page-wrap" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-8 m-auto">
                	<div class="login-page-content">
                		<div class="login-form">
                			<h3>ADD A CAR </h3>
							<form action="editcarprocess.jsp">
							
                                <div class="regno">
                                    <input type="text" name="regno" value="<%=c.getRegno() %>" placeholder="Enter register number" required>
								</div>
								<div class="cartype">
									<select class="select" name="station" value="<%=c.getRegno() %>" >
									<option selected><%=c.getStation() %></option>
                                      <option value="Koramangala">Koramangala</option>
                                      <option value="Electronacity">Electronacity</option>
                                      <option value="Hennur">Hennur</option>
                                      <option value="Madiwala">Madiwala</option>
									</select>
									<style>
									.select{
									background-color:#ffd000;
									border-color:#333;
									width:407px;
									height:40px
							       
									}
									.select1{
									background-color:#ffd000;
									border-color:#333;
									}
									
									</style>
                                </div>
                                <div class="carimage">
									<input type="file" name="carimage" value="<%=c.getCarimage()%>">
									<input type="hidden" name="carimage1" value="<%=c.getCarimage()%>">
                                </div>
								<div class="discription">
									<input type="text" name="discription" value="<%=c.getDiscription()%>" placeholder="Enter discription" required>
                                </div>
                                <div class="rentalprize">
									<input type="float" name="rentalprize" value="<%=c.getRentalprize() %>"placeholder="Enter rental prize" required>
                                </div>
                               <div class="name">
									<div class="row">
										<div class="col-md-6">
											<input type="float" name="maxdistance"  value="<%=c.getMaxdistance() %>" placeholder="Free KM" required>
										</div>
										<div class="col-md-6">
											<input type="float" name="excessprize"  value="<%=c.getExcessprize() %>" placeholder="Exces Prize" required>
										</div>
									</div>
                                </div><br>
                                <div class="name">
									<div class="row">
										<div class="col-md-6">
											<select class="select1" name="geartype" >
											<option selected><%=c.getGeartype() %></option>
                                      <option value="Manual">Manual</option>
                                      <option value="Auto">Auto</option>
                                     </select>
										</div>
										<div class="col-md-6">
											<select class="select1" name="fueltype">
											<option selected><%=c.getFueltype() %></option>
                                      <option value="Disel">Disel</option>
                                      <option value="Petrol">Petrol</option>
                                     
											
											</select>
										</div>
									</div>
                                </div><br>
                                <div class="cartype">
                                <select class="select" name="seattype" >
									<option selected><%=c.getSeattype() %></option>
                                      <option value="4">4</option>
                                      <option value="6">6</option>
                                      <option value="7">7</option>
                                      
									</select></div>
								<div class="log-btn">
									<button type="submit"><i class="fa fa-check-square"></i> UPLOAD</button>
								</div>
								
							</form>
                		</div>
                		
                		
                		
                	</div>
                </div>
        	</div>
        </div>
    </section>
    <!--== Footer Area Start ==-->
    <section id="footer-area">
        <!-- Footer Widget Start -->
        <div class="footer-widget-area">
            <div class="container">
                <div class="row">
                    <!-- Single Footer Widget Start -->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-footer-widget">
                            <h2>About Us</h2>
                            <div class="widget-body">
                                <img src="assets/img/alexacar.png" alt="JSOFT">
                                <p>Transportation and mobility solutions is one of the least understood and most unorganized markets. We see this as an unexplored opportunity to build a system that can be trusted by everyone beyond barriers.</p>

                                <div class="newsletter-area">
                                    <form action="index.html">
                                        <input type="email" placeholder="Subscribe Our Newsletter">
                                        <button type="submit" class="newsletter-btn"><i class="fa fa-send"></i></button>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- Single Footer Widget End -->

                    <!-- Single Footer Widget Start -->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-footer-widget">
                            <h2>Recent Posts</h2>
                            <div class="widget-body">
                                <ul class="recent-post">
                                    <li>
                                        <a href="#">
                                           Hello Bangladesh! 
                                           <i class="fa fa-long-arrow-right"></i>
                                       </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                          Lorem ipsum dolor sit amet
                                           <i class="fa fa-long-arrow-right"></i>
                                       </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                           Hello Bangladesh! 
                                           <i class="fa fa-long-arrow-right"></i>
                                       </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            consectetur adipisicing elit?
                                           <i class="fa fa-long-arrow-right"></i>
                                       </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Single Footer Widget End -->

                    <!-- Single Footer Widget Start -->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-footer-widget">
                            <h2>get touch</h2>
                            <div class="widget-body">
                                <p>we believe everyone should have access to mobility.
                                    A simple solution to the most complex challenges of the world.</p>

                                <ul class="get-touch">
                                    <li><i class="fa fa-map-marker"></i> Alexa-CarRental,kothanur,Bangalore </li>
                                    <li><i class="fa fa-mobile"></i> +91 9847156154</li>
                                    <li><i class="fa fa-envelope"></i> alexacarrental@gmail.com</li>
                                </ul>
                                <a href="https://www.google.com.bd/maps/place/Livesta/@13.0605871,77.6395125,17z/data=!3m1!4b1!4m5!3m4!1s0x3bae19487b01e9cb:0xe25b5207dc9d34a9!8m2!3d13.0605819!4d77.6417012?hl=en" class="map-show" target="_blank">Show Location</a>
                            </div>
                        </div>
                    </div>
                    <!-- Single Footer Widget End -->
                </div>
            </div>
        </div>
        <!-- Footer Widget End -->

        <!-- Footer Bottom Start -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="index.html" target="_blank">Alexa-CarRental</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Bottom End -->
    </section>
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

</body>
</html>