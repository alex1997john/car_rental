<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Credit Card Payment Form Template | PrepBootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="payment/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="payment/font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="payment/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="payment/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<%
String useremail=(String)session.getAttribute("login");
String uid=(String)session.getAttribute("userid");
String name=(String)session.getAttribute("name");
session.setAttribute("name",name);
session.setAttribute("userid", uid);
session.setAttribute("login",useremail);





String date1=(String)session.getAttribute("date1"); 
String time1=(String)session.getAttribute("time1"); 
String date2=(String)session.getAttribute("date2"); 
String time2=(String)session.getAttribute("time2");
String station=(String)session.getAttribute("station"); 
String regno=(String)session.getAttribute("value"); 

//request.getParameter("value");

String ary[]=regno.split("-");


session.setAttribute("date1", date1);
session.setAttribute("time1", time1);
session.setAttribute("date2", date2);
session.setAttribute("time2", time2);
session.setAttribute("station", station);
session.setAttribute("value", regno);

%>
<div class="container">

<div class="page-header">
    
</div>

<!-- Credit Card Payment Form - START -->

<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <h3 class="text-center">Payment Details</h3>
                        <img class="img-responsive cc-img" src="http://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png">
                    </div>
                </div>
                <div class="panel-body">
                    <form role="form" action="paymentprocess.jsp">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD NUMBER</label>
                                    <div class="input-group">
                                        <input type="tel"  name="cardnumber" class="form-control" placeholder="Valid Card Number" / required>
                                        <span class="input-group-addon"><span class="fa fa-credit-card"></span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <input type="tel" name="validupto" class="form-control" placeholder="MM / YY" / required>
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label>CV CODE</label>
                                    <input type="tel" name="cvv" class="form-control" placeholder="CVC" /required>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD OWNER</label>
                                    <input type="text" name="holdername" class="form-control" placeholder="Card Owner Names" /required>
                                </div>
                            </div>
                        </div>
                    
                </div>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-xs-12">
                            <button class="btn btn-warning btn-lg btn-block">Process payment   RS <%out.println(ary[1]); %></button>
                        </div>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>

<style>
    .cc-img {
        margin: 0 auto;
    }
</style>
<!-- Credit Card Payment Form - END -->

</div>

</body>
</html>