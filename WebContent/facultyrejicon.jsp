<%@page import="java.util.Random"%>
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
  try{
	  String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
      StringBuilder salt = new StringBuilder();
      Random rnd = new Random();
      while (salt.length() < 8) { // length of the random string.
          int index = (int) (rnd.nextFloat() * SALTCHARS.length());
          salt.append(SALTCHARS.charAt(index));
      }
      String saltStr = salt.toString();
       String facultyid= saltStr;
	   Connection con=connection.myconnection();
	   
	   String facultyfname=request.getParameter("facultyfname");
	  String facultylname=request.getParameter("facultylname");
	  String facultyemail=request.getParameter("facultyemail");
	  String facultydepartment=request.getParameter("facultydepartment");
	  String facultynum=request.getParameter("facultynum");
	  String gender=request.getParameter("gender");
	  String facultyexperience=request.getParameter("facultyexperience");
	  String facultywork=request.getParameter("facultywork");
	  String facultypass=request.getParameter("facultypass");
	  String facultycpass=request.getParameter("facultycpass");
	  String facultycountry=request.getParameter("facultycountry");
	  String facultystate=request.getParameter("facultystate");
	  String facultycity=request.getParameter("facultycity");
	  
	  PreparedStatement pstm=con.prepareStatement("insert into facultyrejidetails values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	  
	    pstm.setString(1, null);
	    pstm.setString(2, facultyid);
	     pstm.setString(3, facultyfname);
	     pstm.setString(4, facultylname);
	     pstm.setString(5, facultyemail);
	     pstm.setString(6, facultydepartment);
	     pstm.setString(7, facultynum);
	     pstm.setString(8, gender);
	     pstm.setString(9, facultyexperience);
	     pstm.setString(10, facultywork);
	     pstm.setString(11, facultypass);
	     pstm.setString(12, facultycpass);
	     pstm.setString(13, facultycountry);
	     pstm.setString(14, facultystate);
	     pstm.setString(15, facultycity);
	     
	     int n=pstm.executeUpdate();
	      if(n>0)
	      {
	    	  response.sendRedirect("facultylogin.jsp");
	      }
	      else
	      {
	    	  response.sendRedirect("facultyreji.html");
	      }
  }catch(Exception e)

{
	   e.printStackTrace();
}


%>

</body>
</html>