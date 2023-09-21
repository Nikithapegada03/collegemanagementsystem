<%@page import="code.connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%


	try
	{
    int id = Integer.parseInt(request.getParameter("eventid"));
	String eventname=request.getParameter("eventname");
	
	String eventdate=request.getParameter("eventdate");
	String eventtime=request.getParameter("eventtime");
	String eventplace=request.getParameter("eventplace");
 
	Connection con=connection.myconnection();
	Statement stmt=con.createStatement();
	int rs =stmt.executeUpdate("update addevent set  eventname='"+eventname+"',eventdate='"+eventdate+"',eventtime='"+eventtime+"',eventplace='"+eventplace+"' where  eventid='"+id+"'");
	
	if(rs !=0)
	{
	 	System.out.println(" event RECORD Changed");
	 	response.sendRedirect("editevent.jsp");	
	}
	else
	{
		System.out.println(" EVENT RECORD  NOT UPDATED");
	 	response.sendRedirect("updateevent.jsp");
	}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}



	%>
	