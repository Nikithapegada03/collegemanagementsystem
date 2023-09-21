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
 <h2>EXAM PAPER</h2>
<%
HttpSession httpSession = request.getSession(true);


 String fname =(String)httpSession.getAttribute("fname");
 String fid =(String)httpSession.getAttribute("fid");
 String fdepart=(String)httpSession.getAttribute("fdepart");
	System.out.println("veera50212"+fdepart);
%> 
 
 
 
 
 
 
 

 <form action="exampapercon.jsp" method="post">
 <br><br>
 <div class="container">
  <table>
    <tr><td>FACULTY-ID</td><td><input value="<%=fid%>" readonly="readonly" type="text" name="facultyid"/></td></tr>
  <tr><td>FACULTY-NAME</td><td><input value="<%=fname%>" readonly="readonly" type="text" name="facultyname"/></td></tr>
   <tr><td>DEPARTMENT:</td><td><input type="text" name="fdepart" value="<%=fdepart%>" readonly="readonly"/></td></tr>

   </select></td></tr>
  <tr><td>SUBJECT:</td><td><input required="required" type="text" name="subject"/></td></tr>
   <tr><td>TOPIC:</td><td><input required="required" type="text" name="topic"/></td></tr>
    <tr><td>EXAM-TYPE:</td><td><input required="required" type="text" name="examtype"/></td></tr>
      <tr><td>TOTAL MARKS:</td><td><input required="required" type="text" name="totalmarks"/></td></tr>
      <tr><td>CUT-OFF:</td><td><input required="required" type="text" name="cutoff"/></td></tr>
     <tr><td>DATE:</td><td><input required="required" type="date" name="date"/></td></tr>
   <tr><td>  <input type="submit" value="SUBMIT"/></td>
    <td><input type="reset" value="RESET"/>
     </td></tr>
     
  
  </table></div>
 </form>
 </center>
 </body></html>