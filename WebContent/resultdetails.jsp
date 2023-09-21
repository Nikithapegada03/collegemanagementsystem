<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="heading.css" rel="stylesheet" type="text/css">

</head>
<body>
<img class="im" src="images/best-erp-cms-main-banner-final.png"  ><br><br>
<center>
 <div class="navbar">



  <a href="studentdetails.jsp">STUDENT</a>
  <a href="facultydetails.jsp">FACULTY</a>
 
  
   
 <a href="examdetails.jsp">TIME TABLES</a>
 
  <a href="adminlogin.jsp">LOG OUT</a>
 
  
</div>
 </center>
 <center>
 <h2>
   RESULT DETAILS
   
 </h2>
 <form action="resultdetails.jsp" method="post">
 DEPARTMENT:
    <select name="depart">        
            <option value="CSE">CSE</option>
            <option value="ECE">ECE</option>
            <option value="MECH">MECH</option>
            <option value="CIVIL">CIVIL</option>
             <option value="EEE">EEE</option>
    </select>
    <input type="submit" value="check"/>
    
 </form>
    <br><br>
 </center>
 <div class="container">
 <table id="ss" border="3" align="center">
<tr>
 <th>STUDENT-ID</th>
 <th>STUDENT-NAME</th>
 
   <th>SUBJECT-NAME</th>
  <th>MARKS %</th>
   <th>BACK LOGS</th>
    
       <th>PASS/FAIL</th>
</tr>
</table></div></body></html>