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
	 String fdepart=null;
	 String fid=null;
	 String fname=null;
	Connection con=connection.myconnection();
	String facultyemail=request.getParameter("facultyemail");
	String facultypassword=request.getParameter("facultypassword");
	
	Statement stmt=con.createStatement();
	ResultSet rstm1=stmt.executeQuery("select * from facultyrejidetails  where facultyemail='"+facultyemail+"' ");
	 while(rstm1.next())
	 {
		 fid = rstm1.getString(2);
		 fdepart=rstm1.getString(6);
		 fname=rstm1.getString(3);
	 }
	ResultSet res=stmt.executeQuery("select * from facultyrejidetails  where facultyemail='"+ facultyemail+"' and   facultypass='"+facultypassword +"'");
	 if(res.next())
     {
		 HttpSession httpSession = request.getSession(false);
       	 httpSession.setAttribute("fdepart", fdepart);
       	httpSession.setAttribute("fid", fid);
       	httpSession.setAttribute("fname", fname);
       	httpSession.setAttribute("facultyemail", facultyemail);
  	  
  	 System.out.println(fname+"veera"+fid+ "depart" +fdepart);
  	 response.sendRedirect("department.jsp");
   	
	
  	  
     }
     else
     {
  	   response.sendRedirect("facultylogin.jsp?fail");
     }
  
	
	
	 
}catch(Exception e)
{
	 e.printStackTrace();
}


%>

</body>
</html>