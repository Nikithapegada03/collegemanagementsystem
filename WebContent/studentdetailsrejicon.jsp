
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
       String sid= saltStr;
	   Connection con=connection.myconnection();
	   
	   String sfirstname=request.getParameter("sfirstname");
	   String slastname=request.getParameter("slastname");
	   String semail=request.getParameter("semail");
	   String sphone=request.getParameter("sphone");
	   String gender=request.getParameter("gender");
	   String spassword=request.getParameter("spassword");
	   String sconformpassword=request.getParameter("sconformpassword");
	   String sdepart=request.getParameter("sdepart");
	   String ucountry=request.getParameter("scountry");
	   String ustate=request.getParameter("sstate");
	   String ucity=request.getParameter("scity");
	   PreparedStatement pstm=con.prepareStatement("insert into studentrejidetails values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
	   pstm.setString(1, null);
	   pstm.setString(2,sfirstname);
	   pstm.setString(3,sid);
	   pstm.setString(4,slastname);
	   pstm.setString(5,semail);
	   pstm.setString(6,sphone);
	   pstm.setString(7,gender);
	   pstm.setString(8,spassword);
	   pstm.setString(9,sconformpassword);
	   pstm.setString(10,sdepart);
	   pstm.setString(11,ucountry);
	   pstm.setString(12,ustate);
	   pstm.setString(13,ucity);
	    int n=pstm.executeUpdate();

	    	if(n>0)
	        {
	    		
	       	 System.out.println(" RECORDES UPDATED");
	       	 response.sendRedirect("send_hallticket.jsp"); 
	       	 HttpSession httpSession = request.getSession(false);
	       	 httpSession.setAttribute("sid", sid);
	       	 httpSession.setAttribute("semail", semail);
	       	 System.out.println(semail+"hallticket"+sid);
	       	
	       	//response.sendRedirect("home.jsp");
	       	  
	        }
	        else
	        {
	       	 System.out.println("NO RECORDES UPDATED");
	       	 response.sendRedirect("studentreji.html");
	        }
  }catch(Exception e)
{ 
	  
   e.printStackTrace();
}


%>
</body>
</html>