<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<body><br><br><br>
<center><h3>Your username or password is incorrect please check........</h3></center>


<script type="text/javascript">
    alert("Invalid password or username please check");
    setTimeout(function(){
        window.location.href = 'login.jsp';
     }, 2000);
</script>
</body>
</html>