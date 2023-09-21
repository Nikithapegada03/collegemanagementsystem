<%@page import="Mail.SendMailAction"%>
<%@page import="java.sql.ResultSet"%>
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

System.out.println("hhhhhhhh");
HttpSession httpSession = request.getSession(true);
String sid = (String)httpSession.getAttribute("sid");
String semail = (String)httpSession.getAttribute("semail");
Connection con = connection.myconnection();
Statement st = con.createStatement();
String sql = "select * from studentrejidetails where semail='"+semail+"' AND sid = '"+sid+"'";
System.out.println(sql);
ResultSet rs = st.executeQuery(sql);

if(rs.next()){
	System.out.print("nikhiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii"+sid);
	
 new SendMailAction().sendMail(semail, "display sid", sid);
	
	response.sendRedirect("studentlogin.jsp");
	
}
else{
	response.sendRedirect("studentlogin.jsp");
}


%>
</body>
</html>