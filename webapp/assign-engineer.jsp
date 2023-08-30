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
	String bid = request.getParameter("bid");

	ResultSet rs = con.createStatement().executeQuery("select * from employee");

%>	  
	  <form method="post" action="assign-engineer1.jsp">
	  <table>
	  <tr>
	  	<td colspan=2 align="center"><b>Assign Engineer</b></td>
	  </tr>
	  <tr>
	  	<td><b>Bill ID:</b></td>
	  	<td><input type="text" name="bid" value="<%=bid%>" readOnly></td>
	  </tr>
	  <tr>
	  	<td><b>Duration:</b></td>
	  	<td>
	  	<select name="eid" required>
	  		<option value="">Select Engineer</option>
	  		<%while(rs.next()){ %>
	  		<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
	  		<%} %>
	  	</select>
	  	
	  	</td>
	  </tr>
	  <tr>
	  	<td><input type="submit" value="Assign" class="btn"></td>
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