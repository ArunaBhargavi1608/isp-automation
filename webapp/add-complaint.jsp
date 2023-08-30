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
	ResultSet rs = con.createStatement().executeQuery("SELECT `AUTO_INCREMENT` FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'isp' AND TABLE_NAME = 'complaints'");
	rs.next();
	int compid = rs.getInt(1);
	
	rs = con.createStatement().executeQuery("select current_date");
	rs.next();
	String compdate = rs.getString(1);
	
	String cid = session.getAttribute("cid").toString();
	rs = con.createStatement().executeQuery("select bill_id from bill where c_id="+cid);
%>

	  <form method="post" action="add-complaint1.jsp">
	  <table>
	  <tr>
	  	<td colspan=2 align="center"><b>Post Complaint</b></td>
	  </tr>
	  <tr>
	  	<td><b>Complaint ID:</b></td>
	  	<td><input type="text" name="compid" value="<%=compid%>" readOnly></td>
	  </tr>
	  <tr>
	  	<td><b>Complaint Date:</b></td>
	  	<td><input type="text" name="compdate" value="<%=compdate%>" readOnly></td>
	  </tr>
	  <tr>
	  	<td><b>Complaint:</b></td>
	  	<td><textarea rows=4 cols=40 name="comptext" required></textarea></td>
	  </tr>
	  <tr>
	  	<td><b>Bill ID:</b></td>
	  	<td>
	  	<select name="bid" required>
	  		<option value="">Select Bill ID</option>
	  		<%while(rs.next()){ %>
	  		<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
	  		<%} %>
	  	</select>
	  	
	  	</td>
	  </tr>
	  <tr>
	  	<td><input type="submit" value="Post" class="btn"></td>
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