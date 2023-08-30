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
	  	<img src="images/user.jpg" style="padding: 200px;"/>
	  </main>
	  <footer class="footer">
	    <div>&copy; <%=new java.util.Date().getYear()+1900%> - Surfwell Communications</div>
	  </footer>
	</div>
</body>
</html>