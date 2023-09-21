<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="code.connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
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
  
</div>
 </center>
 <%
    try
  {
    	HttpSession httpSession = request.getSession(true);
    	String fdepart =(String)httpSession.getAttribute("fdepart");
    	String fid =(String)httpSession.getAttribute("fid");
    	Connection con=connection.myconnection();
    	Statement stmt=con.createStatement();
    	%>
 <center>
 <h2>TIME TABLE</h2>
 <form action="facultyuploadtimetable.jsp" method="post">
 DEPARTMENT:
   
    <input type="text" value="<%=fdepart %>" readonly="readonly"/>
    
 </form>
    <br><br>
    <div class="container">
  <table id="ss" border="3" align="center">
  <tr><th>FACULTY-ID</th>
 <th>FACULTY-NAME</th>
 <th>DEPARTMENT</th>
  <th>SUBJECT</th>
  <th>TOPIC</th>
  <th>EXAM-TYPE</th>
  <th>DATE</th>
  
    	<%
    	ResultSet rs=stmt.executeQuery("select * from exampaper where department='"+fdepart+"' ");
    	while(rs.next())
    	{%>
    	<tr>
    	 <td><%=rs.getString(2) %></td>
    	 <td><%=rs.getString(3) %></td>
    	 <td><%=rs.getString(4) %></td>
    	 <td><%=rs.getString(5) %></td>
    	 <td><%=rs.getString(6) %></td>
    	 <td><%=rs.getString(7) %></td>
    	 <td><%=rs.getString(10) %></td>
    	 </tr>
    		
    		
    	<% 	
    	}
    	
    	
  }catch(Exception e)
  {
	   e.printStackTrace();
  }
  
  
  %>
   
   </table></div>
 </center>
</body>
</html>