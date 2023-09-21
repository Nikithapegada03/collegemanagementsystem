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
String subject=request.getParameter("subject");
String topic=request.getParameter("topic");
String Question_name=request.getParameter("Question");
System.out.println(Question_name);
String optionA=request.getParameter("1");
System.out.println(optionA);
String optionB=request.getParameter("2");
System.out.println(optionB);
String optionC=request.getParameter("3");
System.out.println(optionC);
String optionD=request.getParameter("4");
System.out.println(optionD);
String radio=request.getParameter("options");
String correctans=null;
if(radio.equals("1"))
{
 correctans = request.getParameter("1");
}
else if (radio.equals("2")) {
	 correctans = request.getParameter("2");
} else if (radio.equals("3")) {
	 correctans = request.getParameter("3");
} 
else {
	 correctans = request.getParameter("4");
} 
System.out.println(correctans);
	try
	{
		Connection con=connection.myconnection();
		System.out.println("insertion block");
	  PreparedStatement pstm=con.prepareStatement("insert into facultyquestions values(?,?,?,?,?,?,?,?,?)");
		
	  pstm.setString(1, null);
	  pstm.setString(2, subject);
	  pstm.setString(3, topic);
	  pstm.setString(4,Question_name);
	  pstm.setString(5, correctans);
	  pstm.setString(6, optionA);
	  pstm.setString(7, optionB);
	  pstm.setString(8, optionC);
	  pstm.setString(9, optionD);
	 
	  int i=pstm.executeUpdate();
	    if(i>0)
				{
					out.println("insertion success");
					response.sendRedirect("facultyquestion.jsp");
					
					

				}else{
					out.println("insertion fail");
					

				}
		
	}catch(Exception e)
	{
	e.printStackTrace();
		
	}



%>
</body>
</html>