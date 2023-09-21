<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="code.connection"%>
<%@page import="java.sql.Connection"%>
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
background:url(images/College1-master1050-v2.jpg); 
 
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
   <br> <h2>LIST OF EVENTS</h2></center>
   <div class="container">
<table  border="2" align="center">
<tr>
 <th>EVENT-ID</th>
 <th>EVENT-NAME</th>

 
    <th>DATE</th>
        <th>TIME</th>
     <th>WEBSITE</th>
  
      
      
</tr>
<%


  try
{
	  
	   Connection con=connection.myconnection();
 Statement stmt=con.createStatement();
 ResultSet rs=stmt.executeQuery("select * from addevent");
 while(rs.next())
 {%>
<tr>  <td><%= rs.getString
(1)%></td>
      <td><%=rs.getString(2)%></td>
	   <td><%=rs.getString(3)%></td>
	   <td><%=rs.getString(4)%></td>
	   <td><%=rs.getString(5)%></td>
	 
	
	   </tr> 
	   <%	   
 } 
}
 catch(Exception e)
{
	   e.printStackTrace();
}%>
</table></div>

</body>
</html>