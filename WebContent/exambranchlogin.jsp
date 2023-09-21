<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="heading.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="heading.css" rel="stylesheet" type="text/css">

</head>
<body>
<img class="im" src="images/best-erp-cms-main-banner-final.png"  ><br><br>
<style>
html{
background:url(images/3.26.18-E-Learning-Motivation.jpg); 
 
    height: 100%; 
   
 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
}
</style>
<center>
 <div class="navbar">


 <a href="home.jsp">HOME</a>
    <a href="news.jsp">NEWS</a>
     <a href="events.jsp">EVENTS</a>
  <a href="studentlogin.jsp">STUDENT</a>
  <a href="facultylogin.jsp">FACULTY</a>
  
 
   
 <a href="exambranchlogin.jsp">EXAMINATION BRANCH</a>
   <a href="eventmanagerlogin.jsp">EVENT MANAGER</a>
  <a href="adminlogin.jsp">ADMIN</a>
   <a href="contact.jsp">ABOUT</a>
 
  
</div>
 </center>
  <center>
  <div class="loginBox">
     <h2> EXAM BRANCH LOGIN</h2>
 
 	<img src="images/61xGjWvinwL.png" class="user">
 <form  action="exambranchlogincon.jsp" method="post">
  <p>EMAIL</p>
  <input type="text" required="required" placeholder="Enter Email" name="exambranchmail" />
 	<p>PASSWORD</p>
 <input type="password" placeholder="Enter Password"  name="exambranchpassword" />
  <input type="submit" value="login">


     </div><!-- close aa -->
    
 </form>
 </center>
</body>
 
</html>