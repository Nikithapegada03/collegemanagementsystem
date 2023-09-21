<%@page import="java.io.IOException"%>
<%@page import="java.sql.PreparedStatement"%>
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
<img class="im" src="images/collage logo.jpg"  ><br><br>
<%
 try
{
String id=request.getParameter("eid");
String eventname=request.getParameter("eventname");

String eventdate=request.getParameter("eventdate");
String eventtime=request.getParameter("eventtime");
String eventplace=request.getParameter("eventplace");

Connection con=connection.myconnection();
PreparedStatement pstm=con.prepareStatement("insert into addevent values(?,?,?,?,?)");

pstm.setString(1, id);
pstm.setString(2, eventname);
pstm.setString(3, eventdate);
pstm.setString(4, eventtime);
pstm.setString(5, eventplace);


int n=pstm.executeUpdate();
if(n>0)
{
 	System.out.println(" event RECORD UPDATED");
 	response.sendRedirect("addevent.jsp");
 	 HttpSession httpSession=request.getSession(false);
 	   httpSession.setAttribute("id", id);
  System.out.println(id);
}
else
{
	System.out.println(" EVENT RECORD  NOT UPDATED");
 	response.sendRedirect("addevent.jsp");
}
}
catch(Exception e)
{
	e.printStackTrace();
}



%>
</body>
</html>