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
<body style=" background-color: yellow;">

<%
   String topi=request.getParameter("topic");
 String que=null;
 String a=null;
 String b=null;
 String c=null;
 String d=null;
try
{
Connection con=connection.myconnection();
    	Statement stmt=con.createStatement();
    	ResultSet rs=stmt.executeQuery("select * from facultyquestions where topic='"+topi+"' ");%>
    
    	<div>
    TOPIC: <%=topi%> <br><br>	
    </div>	
    <div >
 <form action="attemptedstorage.jsp" method="post">

  
  <table >
    <%	while(rs.next())
    	{
  
        que=rs.getString(4); 
        a=rs.getString(6) ;
    	 b=rs.getString(7) ;
    	 c=rs.getString(8) ;
    	 d=rs.getString(9)  ;   	
    	%>
 
    <tr>
        <tr><td>Question:</td> <td><input type="text" value="<%=que%>" name="question" readonly="readonly"></td></tr>
		<tr><td>Options:</td><td>Please mention the correct answer</td></tr>
		<tr><td align="right">A)</td><td><input type="radio" name="options" value="1"required><%=a%></td></tr>
		<tr><td align="right">B)</td><td><input type="radio" name="options" value="2" ><%=b%></td></tr>
		<tr><td align="right">C)</td><td><input type="radio" name="options" value="3"><%=c%></td></tr>
		<tr><td align="right">D)</td><td><input type="radio" name="options" value="4"><%=d%></td></tr>
	</tr>
  <% }%>
    </table>
     <input type="submit" value="FINISHED"/>
	</form>
	</div>
	
<%}
catch(Exception e)
{
e.printStackTrace();
}


%>
</body>
</html>