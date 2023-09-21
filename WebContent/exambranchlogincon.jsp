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
  String exambranch=request.getParameter("exambranchmail");
String exambranchpassword=request.getParameter("exambranchpassword");
 
if(exambranch.equalsIgnoreCase("exam") && exambranchpassword.equalsIgnoreCase("exam")  )
{
	response.sendRedirect("examinationbranch.jsp");
}

else
{
	response.sendRedirect("exambranchlogin.jsp");
}
	
}catch(Exception e)
{
	
}


%>
</body>
</html>