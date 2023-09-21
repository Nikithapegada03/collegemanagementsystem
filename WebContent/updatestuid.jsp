<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="code.connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="heading.css" rel="stylesheet" type="text/css">

</head>
<body>
<img class="im" src="images/best-erp-cms-main-banner-final.png"  ><br><br><body>
<center>
 <div class="navbar">


  <a href="studentdetails.jsp">STUDENT</a>
  <a href="facultydetails.jsp">FACULTY</a>
 
  
   
 <a href="examdetails.jsp">TIME TABLES</a>
  <a href="resultdetails.jsp">RESULT</a>
  <a href="adminlogin.jsp">LOG OUT</a>
  
 
  
</div>
 </center>

<%

try
{
	 String semail = request.getParameter("semail"); 
	 System.out.println("veera"+semail);
	 Connection con=connection.myconnection();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from studentrejidetails where semail='"+semail+"' " );
while(rs.next())
{%>
<form action="stuidupdate.jsp" method="post"><table>
<tr><td><label for="firstname">Student id:</td><td> <input type="text" value="<%=rs.getString(2)%>" name="sid" size="30"   
 required="required"/></td></tr>

   <tr><td> <input type="submit" value="Sign-Up"/>
      <input type="reset" value="RESET"/></td> </tr></table>          
</form>
    <%	   
 } 
}
 catch(Exception e)
{
	   e.printStackTrace();
}%>   
</body>
</html>