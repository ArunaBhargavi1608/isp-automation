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
<title>Admin Home</title>
<link rel="stylesheet" href="css/admin-home.css"/>
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

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
	ResultSet rs = con.createStatement().executeQuery("select bill_id, bill_date, plan_name, cost, emp_id, status from plans, bill where bill.plan_id = plans.plan_id order by bill_id");
%>

	  <div class="container">
	  <h2>Bills List</h2>
	<table id="tableID" style="width:100%" class="table table-striped sampleTable">
	<thead>
	<tr>
		<th>Bill ID</th>
		<th>Bill Date</th>
		<th>Plan Name</th>
		<th>Cost</th>
		<th>Engineer</th>
		<th>Status</th>
		<th></th>
		<th></th>
		<th></th>
	</tr>
	</thead>
	<tbody>
<%
	while(rs.next()){
		ResultSet rs1 = con.createStatement().executeQuery("select emp_name from employee where emp_id="+rs.getString(5));
		String engineer = "Not assigned";
		if(rs1.next())
			engineer = rs1.getString(1);
			
%>
	<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=engineer%></td>
		<td><%=rs.getString(6)%></td>
		<td><a href="assign-engineer.jsp?bid=<%=rs.getString(1)%>" class="btn">Assign Engineer</a></td>
		<td><a href="close-bill.jsp?bid=<%=rs.getString(1)%>" class="btn">Close</a></td>
		<td><a href="view-bill.jsp?bid=<%=rs.getString(1)%>" class="btn">View Bill</a></td>
	</tr>
<%
	}
%>	
	</tbody>	
	</table>
</div>
	  
	  <script>
	$(document).ready(function() {
		$('#tableID').DataTable({ });
	});
</script>


	  </main>
	  <footer class="footer">
	    <div>&copy; <%=new java.util.Date().getYear()+1900%> - Surfwell Communications</div>
	  </footer>
	</div>
</body>
</html>