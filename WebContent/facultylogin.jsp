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
background:url(images/onlinefaculty.jpg); 
 
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
 
  
   
 
  <a href="eventmanagerlogin.jsp">EVENT MANAGER</a>
  <a href="adminlogin.jsp">ADMIN</a>
  <a href="contact.jsp">ABOUT</a>
 
  
</div>
 </center>
  

 <center>
 
 <div class="loginBox">
 <h2> FACULTY LOGIN</h2>
 		<img src="images/user.png" class="user">
 <form action="facultylogincon.jsp" method="post">
  <p>EMAIL</p>
  <input type="text" required="required" placeholder="Enter Email" name="facultyemail"/>
  	<p>PASSWORD</p>
 <input type="password" placeholder="Enter Password"  name="facultypassword"/>
   <input type="submit" value="login"> 
   <h3>If u Can't login plz signup</h3>
      <a href="facultyreji.html">SIGNUP</a>
     </form>
 
      </div><!-- close aa -->
 </center>
 
</body>
 
</html>