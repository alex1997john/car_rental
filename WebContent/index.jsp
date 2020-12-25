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
<script type = "text/javascript" >
        function validate() {
        	if( document.form1.station.value==" " ) {
                alert( "Please provide your 10 digit mobile number!" );
                document.form1.station.focus() ;
                return false;

            var date1=document.getElementById("startDate1");
            var date2=document.getElementById("endDate1");
            var dif=date2..getTime()-date1..getTime();
        	if( dif <=10 ) {
                alert( "Please provide your 10 digit mobile number!" );
                document.form1.endDate1.focus() ;
                return false;
                
                return( true );
            }
                </script> 
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
 <!--== Slider Area Start ==-->
 
 
 
 
 
 <%
 String useremail=(String)session.getAttribute("login");
 String uid=(String)session.getAttribute("userid");
 String name=(String)session.getAttribute("name");
 session.setAttribute("name",name);
 session.setAttribute("userid", uid);
 session.setAttribute("login",useremail);
 
 %>
    <section id="slider-area">
        <!--== slide Item One ==-->
        <div class="single-slide-item overlay">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="book-a-car">
                            <form action="rentalprocess.jsp" name="form1" onsubmit = "return(validate());">
                                <!--== Pick Up Location ==-->
                                <div class="pickup-location book-item">
                                    <h4>PICK-UP LOCATION:</h4>
                                    <select class="custom-select" name="station">
                                      <option selected>Select</option>
                                      <option value="Koramangala">Koramangala</option>
                                      <option value="Electronacity">Electronacity</option>
                                      <option value="Hennur">Hennur</option>
                                      <option value="Madiwala">Madiwala</option>
                                    </select>
                                </div>
                                <!--== Pick Up Location ==-->
                                
                                
                                
                                



                    <link rel="stylesheet" href="assets/js/jquery.datetimepicker.min.css" />
                                <!--== Pick Up Date ==-->
                                <div class="pick-up-date book-item">
                                    <h4>PICK-UP DATE:</h4>
                                    <input id="startDate1" name="from" placeholder="Pick Up Date" >
                                   
                                     
                                    <div class="return-car">
                                        <h4>Return DATE:</h4>
                                        <input id="endDate1" name="to" placeholder="Return Date" />
                                    </div>
                                </div>
                                <!--== Pick Up Location ==-->

                                <!--== Car Choose ==-->
                                
                                <!--== Car Choose ==-->
                                
                                
                                
                                <div class="book-button text-center">
                                    <button class="book-now-btn">SEARCH</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="col-lg-7 text-right">
                        <div class="display-table">
                            <div class="display-table-cell">
                                <div class="slider-right-text">
                                    <h1>BOOK A CAR TODAY!</h1>
                                    <p>FOR THE FIRST 10 BOOKING  <br> GET 40% FLAT CASHBACK</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--== slide Item One ==-->
    </section>
    <!--== Slider Area End ==-->


    <!--== What We Do Area Start ==-->
    <section id="what-do-area" class="section-padding">
        <div class="container">
            <div class="row">
                <!-- Section Title Start -->
                <div class="col-lg-12">
                    <div class="section-title  text-center">
                        <h2>WHAT WE DO</h2>
                        <span class="title-line"><i class="fa fa-car"></i></span>
                        <p></p>
                    </div>
                </div>
                <!-- Section Title End -->
            </div>

            <div class="row">
                <!-- Single We Do Start -->
                <div class="col-lg-4 col-md-4">
                    <div class="single-we-do we-do-bg-1">
                        <div class="we-do-content">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <h3>AlexaCarRental</h3>
                                    <p></p>
                                    <a href="#"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single We Do End -->

                <!-- Single We Do Start -->
                <div class="col-lg-4 col-md-4">
                    <div class="single-we-do we-do-bg-2">
                        <div class="we-do-content">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <h3>AlexaCarRental</h3>
                                    <p></p>
                                    <a href="#"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single We Do End -->

                <!-- Single We Do Start -->
                <div class="col-lg-4 col-md-4">
                    <div class="single-we-do we-do-bg-3">
                        <div class="we-do-content">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <h3>AlexaCarRental</h3>
                                    <p></p>
                                    <a href="#"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single We Do End -->
            </div>
        </div>
    </section>
    <!--== What We Do Area End ==-->
    
    
    <!--== Partner Area Start ==-->
    <div id="partner-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="partner-content-wrap">
                        <!-- Single Partner Start -->
                        <div class="single-partner">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <img src="assets/img/partner/partner5.png" alt="JSOFT">
                                </div>
                            </div>
                        </div>
                        <!-- Single Partner End -->

                        <!-- Single Partner Start -->
                        <div class="single-partner">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <img src="assets/img/partner/partner4.png" alt="JSOFT">
                                </div>
                            </div>
                        </div>
                        <!-- Single Partner End -->

                        <!-- Single Partner Start -->
                        <div class="single-partner">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <img src="assets/img/partner/partner3.png" alt="JSOFT">
                                </div>
                            </div>
                        </div>
                        <!-- Single Partner End -->

                        <!-- Single Partner Start -->
                        <div class="single-partner">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <img src="assets/img/partner/partner4.png" alt="JSOFT">
                                </div>
                            </div>
                        </div>
                        <!-- Single Partner End -->

                        <!-- Single Partner Start -->
                        <div class="single-partner">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <img src="assets/img/partner/partner2.png" alt="JSOFT">
                                </div>
                            </div>
                        </div>
                        <!-- Single Partner End -->

                        <!-- Single Partner Start -->
                        <div class="single-partner">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <img src="assets/img/partner/partner1.png" alt="JSOFT">
                                </div>
                            </div>
                        </div>
                        <!-- Single Partner End -->

                        <!-- Single Partner Start -->
                        <div class="single-partner">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <img src="assets/img/partner/partner5.png" alt="JSOFT">
                                </div>
                            </div>
                        </div>
                        <!-- Single Partner End -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== Partner Area End ==-->

    <!--== Services Area Start ==-->
    <section id="service-area" class="section-padding">
        <div class="container">
            <div class="row">
                <!-- Section Title Start -->
                <div class="col-lg-12">
                    <div class="section-title  text-center">
                        <h2>Our Services</h2>
                        <span class="title-line"><i class="fa fa-car"></i></span>
                        <p>AlexaCarRental providing various services.</p>
                    </div>
                </div>
                <!-- Section Title End -->
            </div>

            <div class="row">
                <!-- Single Service Start -->
                <div class="col-lg-4 col-md-6">
                    <div class="single-service">
                        <div class="media">
                            <div class="service-icon">
                                <span></span>
                                <img src="assets/img/services/service-icon-1.png" alt="JSOFT">
                            </div>
                            <div class="media-body">
                                <h4>RENTAL CAR</h4>
                                <p>We, the AlexaCarRental providing best service in car rental service </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Service Start -->

                <!-- Single Service Start -->
                <div class="col-lg-4 col-md-6">
                    <div class="single-service">
                        <div class="media">
                            <div class="service-icon">
                                <span></span>
                                <img src="assets/img/services/service-icon-2.png" alt="JSOFT">
                            </div>
                            <div class="media-body">
                                <h4>CAR REPAIR</h4>
                                <p>Full general service after each ride, so the customer wont get trouble </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Service Start -->

                <!-- Single Service Start -->
                <div class="col-lg-4 col-md-6">
                    <div class="single-service">
                        <div class="media">
                            <div class="service-icon">
                                <span></span>
                                <img src="assets/img/services/service-icon-3.png" alt="JSOFT">
                            </div>
                            <div class="media-body">
                                <h4>TAXI SERVICE</h4>
                                <p>Providing Taxi cars</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Service Start -->

                <!-- Single Service Start -->
                <div class="col-lg-4 col-md-6">
                    <div class="single-service">
                        <div class="media">
                            <div class="service-icon">
                                <span></span>
                                <img src="assets/img/services/service-icon-4.png" alt="JSOFT">
                            </div>
                            <div class="media-body">
                                <h4>insurance</h4>
                                <p>In each ride customer can ride with full freedom.We are providing a first party insurance</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Service Start -->

                <!-- Single Service Start -->
                <div class="col-lg-4 col-md-6">
                    <div class="single-service">
                        <div class="media">
                            <div class="service-icon">
                                <span></span>
                                <img src="assets/img/services/service-icon-5.png" alt="JSOFT">
                            </div>
                            <div class="media-body">
                                <h4>car wash</h4>
                                <p>Before getting into ride you will get full cleaned vehicle</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Service Start -->

                <!-- Single Service Start -->
                <div class="col-lg-4 col-md-6">
                    <div class="single-service">
                        <div class="media">
                            <div class="service-icon">
                                <span></span>
                                <img src="assets/img/services/service-icon-6.png" alt="JSOFT">
                            </div>
                            <div class="media-body">
                                <h4>call driver</h4>
                                <p>Call driver will be available</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Service Start -->
            </div>
        </div>
    </section>
    <!--== Services Area End ==-->

    <!--== Fun Fact Area Start ==-->
    <section id="funfact-area" class="overlay section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-11 col-md-12 m-auto">
                    <div class="funfact-content-wrap">
                        <div class="row">
                            <!-- Single FunFact Start -->
                            <div class="col-lg-4 col-md-6">
                                <div class="single-funfact">
                                    <div class="funfact-icon">
                                        <i class="fa fa-smile-o"></i>
                                    </div>
                                    <div class="funfact-content">
                                        <p><span class="counter">550</span>+</p>
                                        <h4>HAPPY CLIENTS</h4>
                                    </div>
                                </div>
                            </div>
                            <!-- Single FunFact End -->

                            <!-- Single FunFact Start -->
                            <div class="col-lg-4 col-md-6">
                                <div class="single-funfact">
                                    <div class="funfact-icon">
                                        <i class="fa fa-car"></i>
                                    </div>
                                    <div class="funfact-content">
                                        <p><span class="counter">250</span>+</p>
                                        <h4>CARS IN STOCK</h4>
                                    </div>
                                </div>
                            </div>
                            <!-- Single FunFact End -->

                            <!-- Single FunFact Start -->
                            <div class="col-lg-4 col-md-6">
                                <div class="single-funfact">
                                    <div class="funfact-icon">
                                        <i class="fa fa-bank"></i>
                                    </div>
                                    <div class="funfact-content">
                                        <p><span class="counter">2</span>+</p>
                                        <h4>office in cities</h4>
                                    </div>
                                </div>
                            </div>
                            <!-- Single FunFact End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--== Fun Fact Area End ==-->

   

    
    <!--== Testimonials Area Start ==-->
    <section id="testimonial-area" class="section-padding">
        <div class="container">
            <div class="row">
                <!-- Section Title Start -->
                <div class="col-lg-12">
                    <div class="section-title  text-center">
                        <h2>WHAT CUSTOMERS HAS TO SAY</h2>
                        <span class="title-line"><i class="fa fa-car"></i></span>
                        <p>Own the experience, Not the ride.</p>
                           
                    </div>
                </div>
                <!-- Section Title End -->
            </div>

            <div class="row">
                <div class="col-lg-8 col-md-12 m-auto">
                    <div class="testimonial-content">
                        <!--== Single Testimoial Start ==-->
                        <div class="single-testimonial">
                            <p>"I have a good experience with Alexacar rental service. Low cost with good tripes"</p>
                            <h3>Neha</h3>
                            <div class="client-logo">
                                <img src="assets/img/client/client-pic-1.jpg" alt="JSOFT">
                            </div>
                        </div>
                        <!--== Single Testimoial End ==-->

                        <!--== Single Testimoial Start ==-->
                        <div class="single-testimonial">
                            <p>Alexa car rental is the best among all,providing best customer services.</p>
                            <h3>Pyarjith v.p</h3>
                            <div class="client-logo">
                                <img src="assets/img/client/client-pic-3.jpg" alt="JSOFT">
                            </div>
                        </div>
                        <!--== Single Testimoial End ==-->

                        <!--== Single Testimoial Start ==-->
                        <div class="single-testimonial">
                            <p>"Ride with good memories".</p>
                            <h3>Nedish</h3>
                            <div class="client-logo">
                                <img src="assets/img/client/client-pic-2.jpg" alt="JSOFT">
                            </div>
                        </div>
                        <!--== Single Testimoial End ==-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--== Testimonials Area End ==-->

    
   

    <!--== Footer Area Start ==-->
   <!--== Header Area Start ==-->
    <%@ include file="footer.jsp" %> 
    <!--== Header Area End ==-->
 <!--== Slider Area Start ==-->
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
<script type="text/javascript">

    $(document).ready(function() {
        $('#startDate11').datetimepicker({
       
         
        
});

       

    });
</script>
<script type="text/javascript">

    $(document).ready(function() {
        $('#endDate11').datetimepicker({
       
         
        
});

       

    });
</script>


<script>

        jQuery(function(){
//         	var today = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate(), new Date().getTime());
//         	 jQuery('#startDate1').datetimepicker({
//         		 minDate: today,
//         	  onShow:function( ct ){
//         	   this.setOptions({
//         	    maxDate:jQuery('#endDate1').val()?jQuery('#endDate1').val():false
//         	   })
//         	  },
        	 
//         	 });
//         	 jQuery('#endDate1').datetimepicker({
        		 
//         	  onShow:function( ct ){
//         	   this.setOptions({
//         	    minDate:jQuery('#startDate1').val()? addHour(jQuery('#startDate1').val(),4) :false
//         	   });
//         	  },
        	  
//         	 });
        	 var today = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate(), new Date().getTime());
             $('#startDate1').datetimepicker({
                 minDate: today,
//                  format: 'dd/MM/yyyy hh:mm',
                 roundTime:'ceil',
                 onChangeDateTime:function(dp,$input){
                	 if($input.val() < today){
                    	 	$('#startDate1').datetimepicker('reset');
                    	 }
                	    $('#endDate1').datetimepicker('setOptions', {minTime: addHour($input.val(),4)});
                	  }
             });

             $('#endDate1').datetimepicker({
//                  format: 'dd/MM/yyyy hh:mm',
                 roundTime:'ceil',
                 minDate: today,
                 onChangeDateTime:function(dp,$input){

                	  }
             });
        	});
function addHour(date,hour){
        var d = new Date(date);
        d.setHours(d.getHours() + hour);
        return d;
	}
        </script>
        

        
</html>