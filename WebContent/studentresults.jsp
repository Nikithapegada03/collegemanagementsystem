<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="heading.css" rel="stylesheet" type="text/css">

</head>
<body>
<img class="im" src="images/best-erp-cms-main-banner-final.png"  ><br><br><center>
 <div class="navbar">


  <a href="timetable.jsp">TIME TABLE</a>
  <a href="studentresults.jsp"> RESULTS</a>
  
 
  <a href="home.jsp">LOG OUT</a>

  
   
 
  
</div>
 </center>
 <center>
 <h2>RESULTS</h2>
 <form action="studentresults.jsp" method="post">
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
    <div class="container">
    
 <table id="ss" border="3" align="center">
<tr>
 <th>STUDENT-ID</th>
 <th>STUDENT-NAME</th>
 
  <th>SUBJECTS</th>
  
    <th>MARKS</th>
   <th>RESULT</th>
    
    
 
</tr>
</table></div>
</body></html>