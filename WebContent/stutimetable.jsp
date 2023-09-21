<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="code.connection"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="heading.css" rel="stylesheet" type="text/css">

</head>
<body>
<img class="im" src="images/best-erp-cms-main-banner-final.png"  ><br><br>
<style>
html{
background:url(images/newsome-exams-schedule.png); 
 
    height: 100%; 
   
 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
}
</style>
<center>
 <div class="navbar">


 <a href="tutorial.jsp">TUTORIALS</a>
  <a href="exm.jsp">EXAMS</a>
  <a href="result.jsp">RESULTS</a>
  <a href="attempt text.jsp">ATTEMPTED TEXT</a>
  
  <a href="studentlogin.jsp">LOG OUT</a>
   
 
  
</div>
 </center>
 <center>
 <h2>
   TIME TABLE
 </h2>
 </center>
 <div class="container">
 <table  border="2" align="center">
<tr>
 <th>EXAM-TYPE</th>
 <th>SUBJECT</th>
 <th>TOPIC</th>
  <th>DEPARTMENT</th>
   <th>FACULTY-ID</th>
    <th>FACULTY-NAME</th>
    <th>DATE</th>
    
      <th>ATTEMPT-TEXT</th>
     </tr>
     
 <%
    try{
 String sub;
 String topic;
  {
    	HttpSession httpSession = request.getSession(true);
    String dp =(String)httpSession.getAttribute("sdepart");
    	String department=request.getParameter("depart");
    	System.out.println("veera502"+dp);
    	Connection con=connection.myconnection();
    	Statement stmt=con.createStatement();
    	ResultSet rs=stmt.executeQuery("select * from exampaper where department='"+dp+"' ");
    	while(rs.next())
    	{%>
    	<tr>
    	 <td><%=rs.getString(7) %></td>
    	 <td><%=rs.getString(5) %></td>
    	 <td><%=rs.getString(6) %></td>
    	 <td><%=rs.getString(4) %></td>
    	 <td><%=rs.getString(2) %></td>
    	 <td><%=rs.getString(3) %></td>
    	
    	 <td><%=rs.getString(10) %></td>
    	 
    	 
 
    	 <form action="studentquestionpaper1.jsp?topic=<%=rs.getString(6) %>"   method="post">
   	 
    	 <td><input a type="submit" value="CLICK"/></td>
  </form>
    	 
    	 </tr>
    		
    	<%
    	}
    	}
    	
    	
  }catch(Exception e)
  {
	   e.printStackTrace();
  }
  
  
  %>
   
   </table>
   </div>
 </center>
</body>
</html>