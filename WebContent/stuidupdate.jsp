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
Connection con=connection.myconnection();
String semail=request.getParameter("semail");
String sid=request.getParameter("sid");
Statement stmt=con.createStatement();
int rs =stmt.executeUpdate("update studentrejidetails set sid='"+sid+"'  where  semail='"+semail+"'");
System.out.println();

if(rs !=0)
{
 	System.out.println(" event RECORD Changed");
 	response.sendRedirect("studentdetails.jsp");	
}
else
{
	System.out.println(" EVENT RECORD  NOT UPDATED");
 	response.sendRedirect("studentdetails.jsp?msg=fail");
}
%>
</body>
</html>