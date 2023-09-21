 <%@page import="code.connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<link href="heading.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="heading.css" rel="stylesheet" type="text/css">

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
   <br> <h2>UPDATE EVENT</h2>
   
<%

try
{
	 String evid = request.getParameter("eid"); 
	 System.out.println("veera"+evid);
	   Connection con=connection.myconnection();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from addevent where eventid='"+evid+"' " );
while(rs.next())
{%>
<form action="update.jsp" method="post"><table>
<tr><td>EVENT-ID :</td><td><input  type="text" required="required" name="eventid" value="<%= rs.getString(1)%>"/></td></tr>

 <tr><td>EVENT NAME :</td><td><input type="text" required="required" name="eventname" value="<%= rs.getString(2)%>"/></td></tr>


<tr><td>DATE:</td><td><input type="date" required="required" name="eventdate" value="<%= rs.getString(3)%>"/></td></tr>
<tr><td>TIME:</td><td><input type="time" required="required" name="eventtime" value="<%= rs.getString(4)%>"/></td></tr>
<tr><td>PLACE:</td><td><input type="text" required="required" name="eventplace" value="<%= rs.getString(5)%>"/></td></tr>
  <tr><td> <input type="submit" value="Submit" /></td>
      <td><input type="reset" value="reset"/> </td></tr>
    <%	   
 } 
}
 catch(Exception e)
{
	   e.printStackTrace();
}%>   
</center>
</body>
</html>