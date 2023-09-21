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
<link href="dropdown.js" rel="stylesheet" type="text/css">

</head>
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
 <h2>ADD CLASS</h2>
 <% 
 String facultyid=null;
 String facultyfname=null;
  String facultylname=null;
  HttpSession httpSession = request.getSession(true);
  String facultyemail =(String)httpSession.getAttribute("facultyemail");

	Connection con=connection.myconnection();
	
	String facultypassword=request.getParameter("facultypassword");
	
	Statement stmt=con.createStatement();
	ResultSet rstm1=stmt.executeQuery("select * from facultyrejidetails  where facultyemail='"+facultyemail+"' ");
	 if(rstm1.next())
	 {
		 facultyid=rstm1.getString(2);
		 facultyfname=rstm1.getString(3);
		 facultylname=rstm1.getString(4);
	 }
 %>
 
 <form action="addclasscon.jsp" method="post">
 <div class="container">
  <table>
    <tr><td>FACULTY-ID</td><td><input required="required" type="text" value="<%= facultyid%>" readonly="readonly"/></td></tr>
  <tr><td>FACULTY-NAME</td><td><input required="required" type="text" value="<%= facultyfname%>" readonly="readonly"/></td></tr>
  
  <tr><td>SUBJECT:</td><td><input required="required" type="text" name="subject"/></td></tr>
    <tr><td>UPLOAD VIDEO:</td><td><input required="required" type="file" name="videoupload"/></td></tr>
    <tr><td>DATE:</td><td><input required="required" type="date" name="date"/></td></tr>
   <tr> <td> <input type="submit" value="SUBMIT"/></td>
    <td><input type="reset" value="RESET"/></td>
     </tr>
     
  
  </table>
  </div>
 </form>
 </center>
 </body></html>