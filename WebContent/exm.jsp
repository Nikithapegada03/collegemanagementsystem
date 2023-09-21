<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="code.connection"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="heading.css" rel="stylesheet" type="text/css">

</head>
<body>
<img class="im" src="images/best-erp-cms-main-banner-final.png"  ><br><br>
<center>
 <div class="navbar">
    <a href="tutorial.jsp">TUTORIALS</a>
  <a href="exm.jsp">EXAMS</a>
  <a href="result.jsp">RESULTS</a>
 
  
 <a href="studentlogin.jsp">LOG OUT</a>  

  
  
 
</div>
 </center>
 <center>
 <h2>EXAM</h2>
 <form action="exmcon.jsp" method="post">
 
  <div class="container">
  <table>
 <th>ROLL-NUMBER:</td><td><input type="text" name="examroll" required="required"/>
     <input type="submit" value="SUBMIT"/></th>
     
  </table>
  </div>
 </form>
 <style>
html{
background:url(images/istock_000027376163_full.jpg);
/* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
}
</style>
 
 </center>
 </body>
 </html>
 