<%
	if(session.getAttribute("aid")==null){
		response.sendRedirect("index.jsp");
		return;
	}
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
<link rel="stylesheet" href="css/admin-home.css"/>
<style>
.btn{
	text-decoration:none;
	padding: 5px;
	background: black;
	color: white;
	border-radius: 5px;
}
</style>
</head>
<body>
	<div class="grid-container">
	  <header class="header">
	  	<div>Welcome Admin - <span style="color:red;"><%=session.getAttribute("uname")%></span></div>
	  </header>
	  <aside class="sidenav">
	    <ul class="sidenav__list">
	    	<li class="sidenav__list-item"><a href="admin-home.jsp">Home</a></li>
			<li class="sidenav__list-item"><a href="create-plan.jsp">Create Plan</a></li>
		    <li class="sidenav__list-item"><a href="customer.jsp">Customer</a></li>
		    <li class="sidenav__list-item"><a href="employee.jsp">Employees</a></li>
		    <li class="sidenav__list-item"><a href="bill.jsp">Bills</a></li>
		    <li class="sidenav__list-item"><a href="complaints.jsp">Complaints</a></li>
		    <li class="sidenav__list-item"><a href="logout.jsp">Logout</a></li>
  		</ul>
	  
	  </aside>
	  <main class="main">
	  
<%@include file="config.jsp"%>

<%
	ResultSet rs = con.createStatement().executeQuery("SELECT `AUTO_INCREMENT` FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'isp' AND TABLE_NAME = 'Employee'");
	rs.next();
	int id = rs.getInt(1);
%>
	  
	  <form method="post" action="add-employee1.jsp">
	  <table>
	  <tr>
	  	<td colspan=2 align="center"><b>Add Employee</b></td>
	  </tr>
	  <tr>
	  	<td><b>Employee ID:</b></td>
	  	<td><input type="text" name="id" value="<%=id%>" readOnly></td>
	  </tr>
	  <tr>
	  	<td><b>Name:</b></td>
	  	<td><input type="text" name="name" required></td>
	  </tr>
	  <tr>
	  	<td><b>Address:</b></td>
	  	<td><input type="text" name="addr" required></td>
	  </tr>
	  <tr>
	  	<td><b>Phone:</b></td>
	  	<td><input type="text" name="phone" required pattern="^[6789]\d{9}$"></td>
	  </tr>
	  <tr>
	  	<td><b>Joining Date:</b></td>
	  	<td><input type="date" name="jdate" required></td>
	  </tr>
	  <tr>
	  	<td><input type="submit" value="Save" class="btn"></td>
	  	<td><input type="reset" value="Clear" class="btn"></td>
	  </tr>
	  
	  </table>
	  
	  </form>
	  
	  </main>
	  <footer class="footer">
	    <div>&copy; <%=new java.util.Date().getYear()+1900%> - Surfwell Communications</div>
	  </footer>
	</div>
</body>
</html>