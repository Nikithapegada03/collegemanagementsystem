<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="heading.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="heading.css" rel="stylesheet" type="text/css">
<style>
html{
background:url(images/trabajo-a-distancia-teletrabajo_mujer-joven-con-computadora-600x350.jpg);
  /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
};
}
</style>
</head>
<body>
<img class="im" src="images/best-erp-cms-main-banner-final.png"  ><br><br>
<style>
html{
background:url(images/Online-GST-Registration-Procedure.jpg); 
 
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
 <br>

 <center> <h2>STUDENT REGISTRATION</h2></center>
        
  <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
<center>
<div class="loginBox">
<form action="studentdetailsrejicon.jsp" method="post"> 
 
    <table>
   <tr><td> <label for="sfirstname">First Name:</label><td>
    <input type="text" placeholder="Enter First-Name" name="sfirstname"  required></td>
    <td> <label for="slastname">Last Name:</label></td><td>
    <input type="text" placeholder="Enter Last-Name" name="slastname" required></td></tr>
  
    <tr><td> <label for="semail">E-Mail:</label></td><td>
    <input type="text" placeholder="Enter E-Mail" name="semail" required></td>
    
     <td> <label for="sphone">Mobile:</label></td><td>
   <input type="text" placeholder="Enter Mobile" name="sphone" required maxlength="10"></td></tr>
<tr>
<td>Department:</td><td><select required="required" name="sdepart"  >
 <option>CSE</option>
        <option>ECE</option>
        <option>MECH</option>
       <option>CIVIL</option>
       <option>EEE</option>
        <option>IT</option>
              </select></td>
<td>Gender</td>
<td>
Male: <input type="radio" name="gender" value="Male" />
Female: <input type="radio" name="gender" value="Female" />
</td>

</tr>
 <tr><td> <label for="spassword">Password:</label></td><td>
    <input type="password" placeholder="Enter Password" name="spassword"  pattern="([A-Z]|[a-z]|[0-9]){8,}" required></td>
    
  <td> <label for="sconformpassword">Conform Password:</label></td><td>
    <input type="password" placeholder="Enter conform Password" name="sconformpassword" pattern="([A-Z]|[a-z]|[0-9]){8,}" required></td></tr>
    


              <tr><td>Country:</td><td><select required="required" name="scountry"  >
 <option>INDIA</option>
        <option>USA</option>
        <option>UK</option>
       <option>AUS</option>
              </select></td>
<td>States:</td> <td> <select  required="required" name="sstate" >
        <option>TELENGANA</option>
        <option>AP</option>
        <option>DELHI</option>
        <option>TAMILNADU</option>
              </select></td></tr>
<tr><td>City:</td><td>  <select required="required" name="scity">
        <option>HYDERABAD</option>
        <option>KARIMNAGAR</option>
        <option>WARANGAL</option>
        <option>NIZAMABAD</option>
              </select> </td>
               <td><input type="submit" value="Submit"/></td>
      <td><input type="reset" value="reset"/></td> </tr>
              </table>   
        
</form>

</center>
</body>
</html>