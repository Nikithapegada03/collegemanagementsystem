<%@page import="java.sql.PreparedStatement"%>
<%@page import="code.connection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
     String res = request.getParameter("ans");
	String sid = request.getParameter("sid");
	 Integer count=0;
	System.out.println(res);
	if(res.equals("correct"))
	{
		count++;
	
	}else{
		
	}
	Connection con = connection.myconnection();
	PreparedStatement ps = con.prepareStatement("insert into examresults values(?,?,?)");
	ps.setInt(1, 0);
	ps.setString(2, sid);
	ps.setString(3, count.toString());
	int  p =ps.executeUpdate();
	if(p>0)
	{
		response.sendRedirect("correctiondone.jsp");
	}else{
		response.sendRedirect("correction.jsp");
	}
		
%>