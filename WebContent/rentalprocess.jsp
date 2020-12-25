<%@page import="java.util.ArrayList"%>
<%@page import="carrental.Car"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>

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
    <%@ include file="header.jsp" %> 
    <!--== Header Area End ==-->
   
<%String a=request.getParameter("from");
 String ary1[]=a.split(" ");
 String b=request.getParameter("to");
 String ary2[]=b.split(" ");
 String d=request.getParameter("station");
 final float min;
 String useremail=(String)session.getAttribute("login");
 String uid=(String)session.getAttribute("userid");
 String name=(String)session.getAttribute("name");
 session.setAttribute("name",name);
 session.setAttribute("userid", uid);
 session.setAttribute("login",useremail);
 %>
<%@page import="carrental.rentaldao"%>
<jsp:useBean id="u" class="carrental.Car"/>
<jsp:setProperty property="*" name="u"/>


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

		
		int diffDays = (int) (diff / (24 * 60 * 60 * 1000));
		

		int diffhours = (int) (diff / (60 * 60 * 1000));
		

		int diffmin = (int) (diff / (60 * 1000));
		 min=(float) diffmin;
		
 

%>


<br><br>
<% 
ArrayList<Car> str=rentaldao.getAllRecords(ary1[0],ary2[0],d);  
for (Car c : str) {  
%>  

	<center>
	
<div class="col-md-6 col-12" height="200px">
              <div class="car-item car-item--style2">
               
                <img class="thumb bg_img" src=" <%=c.getCarimage() %>" >
                <div class="car-item-body">
                  <div class="content">
                    <h5 class="title"><%=c.getDiscription() %>(<%=c.getFueltype() %>)</h5>
                    <span class="price"><%=c.getSeattype() %> Seats| <%=c.getFueltype() %> | <%=c.getGeartype() %></span><br>
                    <span class="price">Free KM included:<%=c.getMaxdistance() %>|Fuel  Excess distance @Rs.<%=c.getExcessprize() %>/km</span>
                    
                    <%
                    float gst=(c.getRentalprize()*5)/100;
                   
                    float prize=c.getRentalprize()/(24*60);
                    float total=prize*diffmin;%>
                    <h6><%out.println(total);%></h6>
                    <%
                    if(useremail==null)
                    {%>
                    	<a href="errorlogin.jsp?value=<%=c.getRegno()+"-"+total+"-"+gst%>" class="cmn-btn" role='button'>Book Now</a><% 
                    }
                    else{
                   
                 %>
                    
                    
                    <a href="rentalprocess1.jsp?value=<%=c.getRegno()+"-"+total+"-"+gst%>" class="cmn-btn" role='button'>Book Now</a><%} %>
                  </div>
                  <div class="car-item-meta">
                    <ul class="details-list">
                      <li><i class="fa fa-car"></i><%=c.getDiscription() %></li>
                      <li><i class="fa fa-map-marker"></i><%=c.getStation() %></li>
                      <li><i class="fa fa-sliders"></i><%=c.getGeartype() %></li>
                    </ul>
                  </div>
                </div>
              </div>
            </center>


	
	
	<% }%>
	<%session.setAttribute("date1", ary1[0]); 
	session.setAttribute("date2", ary2[0]);
	session.setAttribute("time1", ary1[1]);
	session.setAttribute("time2", ary2[1]);
	session.setAttribute("station", d);%>
	

</div>
</div>
</div>
</div>


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
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery.datetimepicker.full.js"></script>

</body>


</html>