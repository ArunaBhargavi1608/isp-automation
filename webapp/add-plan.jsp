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
<title>Add Plan</title>
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
	ResultSet rs = con.createStatement().executeQuery("SELECT `AUTO_INCREMENT` FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'isp' AND TABLE_NAME = 'Plans'");
	rs.next();
	int id = rs.getInt(1);
%>
	  
	  <form method="post" action="add-plan1.jsp">
	  <table>
	  <tr>
	  	<td colspan=2 align="center"><b>Add Plan</b></td>
	  </tr>
	  <tr>
	  	<td><b>Plan ID:</b></td>
	  	<td><input type="text" name="id" value="<%=id%>" readOnly></td>
	  </tr>
	  <tr>
	  	<td><b>Plan Name:</b></td>
	  	<td><input type="text" name="name" required></td>
	  </tr>
	  <tr>
	  	<td><b>Speed:</b></td>
	  	<td><input type="text" name="speed" required></td>
	  </tr>
	  <tr>
	  	<td><b>Data:</b></td>
	  	<td><input type="text" name="data" required></td>
	  </tr>
	  <tr>
	  	<td><b>Duration:</b></td>
	  	<td>
	  	<select name="duration" required>
	  		<option value="">Select Duration</option>
	  		<option value="1 Month">1 Month</option>
	  		<option value="1 Month">6 Month</option>
	  		<option value="1 Month">12 Month</option>
	  		<option value="1 Month">24 Month</option>
	  	</select>
	  	
	  	</td>
	  </tr>
	  <tr>
	  	<td><b>Cost:</b></td>
	  	<td><input type="number" name="cost" required min="200" max="25000"></td>
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