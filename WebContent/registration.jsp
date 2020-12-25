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
<link rel="stylesheet" href="assets/js/jquery.datetimepicker.min.css" />

    <!--[if lt IE 9]>
        <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
</head>

<script type = "text/javascript">
function validate() {

        if( document.form1.mobileno.value.length !=10 ) {
            alert( "Please provide your 10 digit mobile number!" );
            document.form1.mobileno.focus() ;
            return false;
         }
        if(document.form1.password.value!=document.form1.repassword.value){
            alert( "The passwords are not matching!" );
            document.form1.password.focus() ;
            return false;
         }
        if(document.form1.password.value.length <=7){
            alert( "password should contain atleat 8 characher!" );
            document.form1.password.focus() ;
            return false;
         }

        
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

    <!--== Page Title Area Start ==-->
    <section id="page-title-area" class="section-padding overlay">
        <div class="container">
            <div class="row">
                <!-- Page Title Start -->
                <div class="col-lg-12">
                    <div class="section-title  text-center">
                        
                        <span class="title-line"><i class="fa fa-car"></i></span>
                        <p>we believe everyone should have access to mobility.<br>
                            A simple solution to the most complex challenges of the world.</p>
                    </div>
                </div>
                <!-- Page Title End -->
            </div>
        </div>
    </section>
    <!--== Page Title Area End ==-->

    <!--== Login Page Content Start ==-->
    <section id="lgoin-page-wrap" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-8 m-auto">
                	<div class="login-page-content">
                		<div class="login-form">
                			<h3>Sign Up</h3>
							<form action="registrationprocess.jsp" name="form1" onsubmit = "return(validate());">
								<div class="name"><link rel="stylesheet" href="assets/js/jquery.datetimepicker.min.css" />
									<div class="row">
										<div class="col-md-6">
											<input type="text" name="fname" placeholder="First Name" required>
										</div>
										<div class="col-md-6">
											<input type="text" name="lname" placeholder="Last Name" required>
										</div>
									</div>
                                </div>
                                <div>
                                 <input id="startDate1" name="dob" placeholder="Date of Birth" >
                                    
                                </div>
                                <div class="mobilenumber">
                                    <input type="number" name="mobileno" placeholder="Mobile Number" required>
								</div>
								<div class="username">
									<input type="email" name="email" placeholder="Email" required>
                                </div>
                                
								<div class="password">
									<input type="password" name="password" placeholder="Password(minimum 8 character)" required>
                                </div>
                                <div class="reenterpassword">
									<input type="password" name="repassword" placeholder="Re-enter Password" required>
                                </div>
                                
								<div class="log-btn">
									<button type="submit"><i class="fa fa-check-square"></i> Sign Up</button>
								</div>
							</form>
                		</div>
                		
                		
                		<div class="create-ac">
                			<p>Have an account? <a href="login.html">Sign In</a></p>
                		</div>
                		<div class="login-menu">
                			<a href="about.html">About</a>
                			<span>|</span>
                			<a href="contact.html">Contact</a>
                		</div>
                	</div>
                </div>
        	</div>
        </div>
    </section>
    <!--== Login Page Content End ==-->

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
<script>
        jQuery('#startDate1').datetimepicker({
        	
        	timepicker:false,
        	 format:'Y-m-d'
        	
        	
        		
        	 
        	 
      	  
        	});
        </script>
        
        
        
        
</html>