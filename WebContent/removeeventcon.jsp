<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
 try
{ 
	
	 String eventname=null;
	
		String eventdate=null;
		String eventtime=null;
		String eventplace=null;
	 Connection con=connection.myconnection();
	 String eid=request.getParameter("eid");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from addevent where eventid='"+eid+"' " );
while(rs.next())
{
	eid= rs.getString(1);
 eventname=  rs.getString(2);
	
	 eventdate=	rs.getString(3);
	 eventtime= rs.getString(4);
	 eventplace=   rs.getString(5);
}

PreparedStatement pstm=con.prepareStatement("insert into removeevent values(?,?,?,?,?)");

pstm.setString(1, eid);
pstm.setString(2, eventname);

pstm.setString(3, eventdate);
pstm.setString(4, eventtime);
pstm.setString(5, eventplace);
stmt.execute("DELETE FROM addevent where eventid='"+eid+"' ");
int n=pstm.executeUpdate();
if(n>0)
{
 	System.out.println(" event RECORD UPDATED");
 	response.sendRedirect("removeevent.jsp");
 	

}
else
{
	System.out.println(" EVENT RECORD  NOT UPDATED");
 	response.sendRedirect("#addevent.jsp");
}
}
catch(Exception e)
{
	e.printStackTrace();
}



%>
</body>
</html>