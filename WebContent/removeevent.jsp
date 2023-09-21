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

</head>
<body>
<img class="im" src="images/best-erp-cms-main-banner-final.png"  ><br><br>
<center>
 <div class="navbar">

      <a href="addevent.jsp"> ADD EVENT</a>
      <a href="editevent.jsp"> LIST OF EVENTS</a>
      
      
        <a href="removeevent.jsp"> REMOVE EVENT</a>
      <a href="eventmanagerlogin.jsp">LOG OUT</a>
    </div>
   </center>
 <center>
   <br> <h2>REMOVE EVENT</h2>
   
   <table  border="3" align="center">
   <div class="container">
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
ResultSet rs=stmt.executeQuery("select * from removeevent " );%>
<%
while(rs.next())
{%>

<tr>  <td><%= rs.getString(1)%></td>
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
</div>
</table>
</center>
</body>
</html>