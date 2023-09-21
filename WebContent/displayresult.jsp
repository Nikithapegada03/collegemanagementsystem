<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="code.connection"%>
<%@page import="java.sql.Connection"%>
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
<img class="im" src="images/best-erp-cms-main-banner-final.png"  ><br><br>
<style>
html{
background:url(images/karnataka-results.jpg); 
 
    height: 100%; 
   
 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
}
</style>
<center>
<center>
 <div class="navbar">


  
  <div class="dropdown">
  <button class="dropbtn">TUTORIALS</button>
  <div class="dropdown-content">
    <a href="#">CSE</a>
    <a href="#">ECE </a>
    <a href="#"> MECH</a>
    <a href="#"> CIVIL</a>
    <a href="#">EEE</a>
  </div>
</div>
 
  <a href="exm.jsp">EXAMS</a>
  <a href="result.jsp">RESULTS</a>
  <a href="attempt text.jsp">ATTEMPTED TEXT</a>
  
  <a href="studentlogin.jsp">LOG OUT</a>
   
 
  
</div>
 </center>

 
 </center>
 <center>
  <h2>
   RESULTS
 </h2>
 </center>
 <table id="ss" border="3" align="center">
<tr>
<th>STUDENT-ID</th>
<th>RESULT</th>
</tr>
 <%   
 
    String sid = request.getParameter("examname");
 	Connection con = connection.myconnection();
    Statement st = con.createStatement();
    ResultSet rs= st.executeQuery("select * from examresults where sid='"+sid+"'");
    if(rs.next())
    { %>
    <tr>
    <td><%=rs.getString(2) %></td><td><%=rs.getString(3) %></td></tr>
    <%
    	
    }
 
 %>

</table>
</body></html>