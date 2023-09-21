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
</head>
<body>
<%
 try
 {
	 
	 String sid=request.getParameter("examroll");
	 Connection con=connection.myconnection();
	 
	
	 Statement stmt=con.createStatement();
		ResultSet rstm=stmt.executeQuery("select * from studentrejidetails where sid='"+sid+"'" );
		 if(rstm.next())
	     {
	  	   response.sendRedirect("stutimetable.jsp");
	  	  
	     }
	     else
	     {
	  	   response.sendRedirect("exm.jsp");
	     }
	 
		  
	 
	
	 
 }catch(Exception e)
 {
	 e.printStackTrace();
 }
 
 %>
 
</body>
</html>