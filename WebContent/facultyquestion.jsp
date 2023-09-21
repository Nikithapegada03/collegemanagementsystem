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
 <h2>QUESTION PAPER</h2>
 <%
 
 HttpSession httpSession1 = request.getSession(true);


 String subject =(String)httpSession1.getAttribute("subject");
 String topic =(String)httpSession1.getAttribute("topic");
 System.out.println("subject2"+subject+"topic2"+topic);
 %>
 <form action="facultyquestioncon.jsp" method="post">
  <table>
 <tr><td>SUBJECT:</td><td><input type="text" name="subject" value="<%=subject%>" readonly="readonly"/></td></tr>
   <tr><td>TOPIC:</td><td><input type="text" name="topic" value="<%=topic%>" readonly="readonly" /></td></tr>

    </tr>
        <tr><td>Question:</td><td><textarea name="Question" rows="3" cols="60" ></textarea></td></tr>
		<tr><td>Options:</td><td>Please mention the correct answer</td></tr>
		<tr><td align="right">A)</td><td><input type="radio" name="options" value="1" required><input type="text" name="1" required></td></tr>
		<tr><td align="right">B)</td><td><input type="radio" name="options" value="2" ><input type="text" name="2" required></td></tr>
		<tr><td align="right">C)</td><td><input type="radio" name="options" value="3"><input type="text" name="3" required></td></tr>
		<tr><td align="right">D)</td><td><input type="radio" name="options" value="4"><input type="text" name="4" required></td></tr>
		<td><td><input type="submit" value="Next question"></td> 
		</tr>
		
  
  </table>
 </form>
 </center></body></html>