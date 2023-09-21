<%@page import="code.connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

    Connection con = connection.myconnection();

 	   String sfirstname=request.getParameter("question");
	   String slastname=request.getParameter("options");
	   String sid = session.getAttribute("sid").toString();
	  
	   PreparedStatement pstm=con.prepareStatement("insert into qastore values(?,?,?,?)");
	   pstm.setString(1, null);
	   pstm.setString(2,sfirstname);
	   pstm.setString(3, slastname);
	   pstm.setString(4, sid);
	 
	    int n=pstm.executeUpdate();
	    if(n>0)
	    {
	    	response.sendRedirect("stutimetable.jsp");
	    }else{
	    	response.sendRedirect("studentquestionpaper1.jsp");
	    }
	    %>