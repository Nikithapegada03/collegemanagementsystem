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
<%
HttpSession httpSession = request.getSession(true);
String dp =(String)httpSession.getAttribute("fdepart");
	
	System.out.println("veera5021"+dp);
	
try{
	 String facultyid=request.getParameter("facultyid");
	 String facultyname=request.getParameter("facultyname");
	  
	 String subject=request.getParameter("subject");
	 String topic=request.getParameter("topic");
	 HttpSession httpSession1 = request.getSession(false);
  	 httpSession1.setAttribute("subject",subject);
  	httpSession1.setAttribute("topic",topic);
  	System.out.println("subject1"+subject+"topic1"+topic);
	 String examtype=request.getParameter("examtype");
	 String totalmarks=request.getParameter("totalmarks");
	 String cutoff=request.getParameter("cutoff");
	 String date=request.getParameter("date");
	Connection con=connection.myconnection();
	
	PreparedStatement pstm=con.prepareStatement("insert into exampaper values(?,?,?,?,?,?,?,?,?,?)");
	
	pstm.setString(1, null);
	pstm.setString(2,facultyid);
	pstm.setString(3, facultyname);
	pstm.setString(4, dp);
	pstm.setString(5, subject);
	pstm.setString(6, topic);
	pstm.setString(7, examtype);
	pstm.setString(8, totalmarks);
	pstm.setString(9, cutoff);
	pstm.setString(10, date);
	

	 int n=pstm.executeUpdate();
     if(n>0)
     {
    	 System.out.println("EXAM PAPER CONNECTED");
   	  response.sendRedirect("facultyquestion.jsp");
     }
     else
     {
    	 System.out.println("EXAM PAPER  NOTCONNECTED");
   	  response.sendRedirect("facultyreji.html");
     }
	  
	
}catch(Exception e)
{
	 e.printStackTrace();
}

%>
</body>
</html>