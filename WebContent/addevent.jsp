<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="heading.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="heading.css" rel="stylesheet" type="text/css">

</head>
<body>
<img class="im" src="images/best-erp-cms-main-banner-final.png"  ><br><br>
<center>
 <div class="navbar">


     <a href="addevent.jsp"> ADD EVENT</a>
      <a href="editevent.jsp"> LIST OF EVENTS</a>
     
      
        <a href="removeevent.jsp"> REMOVE EVENT</a>
      <a href="eventmanagerlogin.jsp">LOG OUT</a>
    </div>
   </center>
 <center>
   <br> <h2>ADD EVENT</h2>
<form action="addeventcon.jsp" method="post">

<div class="container"><table>
 <tr><td>EVENT NAME :</td><td><input type="text"  required="required" name="eventname"/></td></tr>


<tr><td>DATE:</td><td><input type="date" required="required"name="eventdate"/></td></tr>
<tr><td>TIME:</td><td><input type="time" required="required" name="eventtime"/></td></tr>
<tr><td>WEBSITE:</td><td><input type="text" required="required" name="eventplace"/></td></tr>
<tr><td> <input type="submit" value="Submit" /></td>
      <td><input type="reset" value="reset"/> </td></tr>
      </table>
      </div>
</form>
     
</center>
</body>
</html>