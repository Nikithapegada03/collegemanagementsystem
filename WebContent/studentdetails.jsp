<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>

<%@page import="code.connection"%>
<%@page import="java.sql.Connection"%>
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
 <center>
 <h2>
   STUDENT DETAILS
 </h2>
 <form action="deptdetails.jsp" method="post">
 DEPARTMENT:
    <select name="dept">        
            <option value="CSE">CSE</option>
            <option value="ECE">ECE</option>
            <option value="MECH">MECH</option>
            <option value="CIVIL">CIVIL</option>
             <option value="EEE">EEE</option>
    
    </select>
    <input type="submit" value="CHECk">
    </form>
    <br><br>
 </center>
 <br><br><br>
 <div class="container">
 
 <table id="ss" border="3" >
<tr>
<th>count</th>
 <th>STUDENT-ID</th>
 <th> FIRST NAME</th>
 <th> LAST NAME</th>
  <th>E-MAIL</th>
   <th>MOBILE</th>
   <th>GENDER</th>
  <th>DEPARTMENT       
    </th>   
   <th>COUNTRY</th>
    <th>STATE</th>
     <th>CITY</th>
    </tr>
       
    <%
     try{ 
    	  Connection con=connection.myconnection();
    	  Statement stmt=con.createStatement();
    	 ResultSet rs=stmt.executeQuery("select * from studentrejidetails");
    	 while(rs.next())
    	 {%>
    	 <tr>
    	 <td><%=rs.getString(1) %></td>
    	 <td><%=rs.getString(3) %></td>
    	  <td><%=rs.getString(2) %></td>
    	   <td><%=rs.getString(4) %></td>
    	    <td><%=rs.getString(5) %></td>
    	     <td><%=rs.getString(6) %></td>
    	      <td><%=rs.getString(7) %></td>
    	       <td><%=rs.getString(10) %></td>
    	        <td><%=rs.getString(11) %></td>
    	         <td><%=rs.getString(12) %></td>
    	          <td><%=rs.getString(13) %></td></tr>
    	           
    		 
    		 <% 
    		 
    	 }
    	 
     }catch(Exception e)
    {
    	 e.printStackTrace();
    }%>   
</tr>
</table></div></body></html>