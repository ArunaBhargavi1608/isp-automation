<%
	if(session.getAttribute("cid")==null){
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
<title>Customer Home</title>
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
	  	<div>Welcome Customer - <span style="color:red;"><%=session.getAttribute("cname")%></span></div>
	  </header>
	  <aside class="sidenav">
	    <ul class="sidenav__list">
	    	<li class="sidenav__list-item"><a href="customer-home.jsp">Home</a></li>
			<li class="sidenav__list-item"><a href="view-profile.jsp">View Profile</a></li>
		    <li class="sidenav__list-item"><a href="view-plans.jsp">View Plans</a></li>
		    <li class="sidenav__list-item"><a href="post-complaints.jsp">Post Complaints</a></li>
		    <li class="sidenav__list-item"><a href="my-plans.jsp">My Plans</a></li>
		    <li class="sidenav__list-item"><a href="logout.jsp">Logout</a></li>
  		</ul>
	  
	  </aside>
	  <main class="main">
	  	
	  	<%@include file="config.jsp"%>
<%
	String cid = session.getAttribute("cid").toString();
	ResultSet rs = con.createStatement().executeQuery("select * from complaints where bill_id in (select bill_id from bill where c_id="+cid+")");
%>

	  <div class="container">
	  <h2>Plans List</h2>
	  <h3 align="right"><a href="add-complaint.jsp" class="btn">Post Complaint</a></h3>
	<table id="tableID" style="width:100%" class="table table-striped sampleTable">
	<thead>
	<tr>
		<th>Complaint ID</th>
		<th>Date</th>
		<th>Bill ID</th>
		<th>Complaint</th>
		<th>Status</th>
	</tr>
	</thead>
	<tbody>
<%
	while(rs.next()){
%>
	<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getString(5)%></td>
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