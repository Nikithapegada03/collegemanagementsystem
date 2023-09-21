<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Ref"%>
<%@page import="java.sql.Statement"%>
<%@page import="code.connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
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
	  String sdepart=null;
	  String sid=request.getParameter("srollnumber");
	  String spassword=request.getParameter("spassword");
	   
	 Connection con=connection.myconnection();
	Statement stmt=con.createStatement();
	ResultSet rstm1=stmt.executeQuery("select * from studentrejidetails where sid='"+sid+"' ");
	 while(rstm1.next())
	 {
		 sdepart=rstm1.getString(10);
	 }
	
	ResultSet rstm=stmt.executeQuery("select * from studentrejidetails where sid='"+sid+"'and spassword='"+spassword+"'" );
	 if(rstm.next())
     {
		 HttpSession httpSession = request.getSession(false);
       	 httpSession.setAttribute("sdepart", sdepart);
       	 HttpSession http = request.getSession(false);
       	 http.setAttribute("sid", sid);
       	 System.out.println("gopi519"+sdepart);
  	   response.sendRedirect("studenthome.jsp");
  	  
     }
     else
     {
  	   response.sendRedirect("studentlogin.jsp");
     }
 
	  
  }catch(Exception e)
{
	   e.printStackTrace();
}





%>

</body>

</html>