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
<body>
<img class="im" src="images/best-erp-cms-main-banner-final.png"  ><br><br>
<center>
 <div class="navbar">

<a href="addclass.jsp">ADD CLASS</a>
  <a href="exampaper.jsp">EXAM PAPER</a>
  <a href="facultyuploadtimetable.jsp">TIME TABLE</a>
  
  <a href="checkqueries.jsp">CHECK QUERIES</a>
  <a href="correction.jsp">CORRECTION</a>
 <a href="facultylogin.jsp">LOGOUT</a></li>
 
  
</div>
 </center>
<center>
 <h2>CORRECTION</h2>
 <%
 	Connection con = connection.myconnection();
 	Statement st = con.createStatement();
 	ResultSet rs = st.executeQuery("select * from qastore");
 	if(rs.next()){
  %>
 <form action="correctionresults.jsp" method="post">
  <table>
  <tr><td>Student id</td><td><input type="text" value="<%=rs.getString(4)%>" name="sid"></td></tr>
  <tr><td>QUESTION:</td><td><%=rs.getString(2)%> </td></tr>
  
  <tr><td>ANSWER:</td><td><input type="text" name="examname" value="<%=rs.getString(3) %>"/></td> <td><input type="text" name="ans" value="" placeholder="correct or wrong"/></tr>
 
    <%} %>
   <tr><td>  <input type="submit" value="SUBMIT"/>

     </td></tr>
     
  
  </table>
 </form>
 </center>
 </body></html>