<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html><header id="header-area" class="fixed-top">
        <!--== Header Top Start ==-->
        <div id="header-top" class="d-none d-xl-block">
            <div class="container">
                <div class="row">
                    <!--== Single HeaderTop Start ==-->
                    <div class="col-lg-3 text-left">
                        <i class="fa fa-map-marker"></i> Kothanur Bangalore
                    </div>
                    <!--== Single HeaderTop End ==-->

                    <!--== Single HeaderTop Start ==-->
                    <div class="col-lg-3 text-center">
                        <i class="fa fa-mobile"></i> +91 9847156154
                    </div>
                    <!--== Single HeaderTop End ==-->

                    <!--== Single HeaderTop Start ==-->
                    <div class="col-lg-3 text-center">
                        <i class="fa fa-clock-o"></i> 24 Hr Access
                    </div>
                    <!--== Single HeaderTop End ==-->

                    <!--== Social Icons Start ==-->
                    <div class="col-lg-3 text-right">
                        <div class="header-social-icons">
                            <a href="#"><i class="fa fa-behance"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                    <!--== Social Icons End ==-->
                </div>
            </div>
        </div>
        <!--== Header Top End ==-->

        <!--== Header Bottom Start ==-->
        <div id="header-bottom">
            <div class="container">
                <div class="row">
                    <!--== Logo Start ==-->
                    <div class="col-lg-4">
                        <a href="viewcaradmin.jsp" class="logo">
                            <img src="assets/img/alexacar.png" alt="JSOFT">
                        </a>
                    </div>
                    <!--== Logo End ==-->

                    <!--== Main Menu Start ==-->
                    <div class="col-lg-8 d-none d-xl-block">
                        <nav class="mainmenu alignright">
                            <ul>
                                
                                
                                <li><a href="adminverification.jsp">New user</a></li>
                                
                                    
                                </li>
                                <li class="active"><a href="viewcaradmin.jsp">Car</a>
                                    <ul>
                                        <li><a href="viewcaradmin.jsp">Home</a></li>
                                        <li><a href="addcar.jsp">Add a car</a></li>
                                       <li><a href="enquery.jsp">Messages</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">client</a>
                                    <ul>
                                        <li><a href="newrentalrequest.jsp">new rental request</a></li>
                                        <li><a href="adminverification.jsp">client verification</a></li>
                                        <li><a href="admindrop.jsp">Drop a car</a></li>
                                        
                                        <li><a href="adminrentalrequestview.jsp">Rental Requests</a></li>
                                    </ul>
                                </li>
                                
                                
                                <li>
                        <% if (session.getAttribute("login") != null) {%>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-user"></i> Hi, <%=session.getAttribute("name")%> <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            
                            
                            <li><a href="logout.jsp">Logout</a></li>
                        </ul>
                    </li>
                    
                    <% } else { %>
                    <li><a href="login.jsp" ><img src="assets/img/icon2.png" alt="JSOFT"></a>
                                      <ul>
                                        <li><a href="login.jsp">Login</a></li>
                                        <li><a href="registration.jsp">Signup</a></li>
                                        
                                    </ul>
                    </li>
                        <% }%>
                            </ul>
                        </nav>
                    </div>
                    <!--== Main Menu End ==-->
                </div>
            </div>
        </div>
        <!--== Header Bottom End ==-->
    </header>