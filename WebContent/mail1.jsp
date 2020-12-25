
<html>
<head>
<title>Send Email using JSP</title>
</head>
<body>
<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>

<%
String useremail=(String)session.getAttribute("login");
String uid=(String)session.getAttribute("userid");
String name=(String)session.getAttribute("name");
String regno=(String)session.getAttribute("regno");
String rentalprize=(String)session.getAttribute("rentalprize");
String date1=(String)session.getAttribute("date1");
String time1=(String)session.getAttribute("time1");
String date2=(String)session.getAttribute("date2");
String time2=(String)session.getAttribute("time2");
String station=(String)session.getAttribute("station");
session.setAttribute("name",name);
session.setAttribute("userid", uid);
session.setAttribute("login",useremail);

    //Creating a result for getting status that messsage is delivered or not!

    String result;

    // Get recipient's email-ID, message & subject-line from index.html page
//String name1="alex";
    final String to =useremail;

    final String subject = "Booking Conformation";
    String a="<br>";

    final String messg = ("haii ");
String name1=name.toUpperCase();
 
    StringBuffer sb = new StringBuffer();
    sb.append("Haii ").append(name1).append(System.lineSeparator());
    
    sb.append("AlexaCarRental is very happy to work with you. and your booking is conformed. And your vechile is ready on time").append(System.lineSeparator());
    sb.append("Vechile Number:").append(regno).append(System.lineSeparator());
    sb.append("Pick up Time :").append(date1).append(" :").append(time1).append(System.lineSeparator());;
    sb.append("Drop Time :").append(date2).append(" :").append(time2).append(System.lineSeparator()); 
    
    sb.append("Station :").append(station).append(System.lineSeparator()); 
   
    sb.append("Rental Price: ").append(" RS ").append(" Paid").append(rentalprize).append(System.lineSeparator()); 
    sb.append(" ").append(System.lineSeparator()); 
    sb.append(" ").append(System.lineSeparator()); 
    sb.append(" ").append(System.lineSeparator());
    sb.append("1.Before you reach our parking hub, please follow the below steps for a seamless pick-up experience").append(System.lineSeparator()); 
    sb.append("2.Please carry your original Driving License along at the time of pickup. Your DL should be verified online before the ride starts. If rejected, the trip shall be cancelled.Add co-drivers on the platform in case you have any to avoid hassles later.").append(System.lineSeparator());
    sb.append("3.The vehicle allocated might be changed in case of unavailability of the vehicle due to unforeseen circumstances.").append(System.lineSeparator());
    sb.append("4Go through our short T&Cs to avoid any confusion during your trip.").append(System.lineSeparator());
    
    sb.append(" ").append(System.lineSeparator()); 
    sb.append(" ").append(System.lineSeparator()); 
    sb.append(" ").append(System.lineSeparator());
    sb.append("for more details call 9847156154"); 
    // Sender's email ID and password needs to be mentioned

    final String from = "18cs601002@kristujayanti.com";

    final String pass = "marykutty";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "465");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText(sb.toString());

        // Send message

        Transport.send(message);
     

        result = "Your Booking is conformed. You will get a mail in your registread mail id  Please Wait ...";

    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: Sorry for our interuption Server Error Please Contact the Admin...";

    }

%>

<title>Sending Mail in JSP</title>

<h1><center><font color="blue"></font></h1>

<b><center><font color="red"><% out.println(result);%></b>

			 <script type="text/javascript">
			   
			    setTimeout(function(){
			        window.location.href = 'index.jsp';
			     }, 3500);
			</script>
</body>
</html>