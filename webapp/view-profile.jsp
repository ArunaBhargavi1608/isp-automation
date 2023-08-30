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
<link rel="stylesheet" href="css/customer-register.css">

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
	ResultSet rs = con.createStatement().executeQuery("select * from customer where c_id="+cid);
	rs.next();
%>	  
	  	<form action="edit-profile.jsp" style="border:1px solid #ccc">
  <div class="container">
    <h1>View Profile</h1>
    <hr>
    <label for="id"><b>ID</b></label>
    <input type="text" name="id" value="<%=rs.getString(1)%>" readonly>

    <label for="email"><b>Email</b></label>
    <input type="email" placeholder="Enter Email" name="email" value="<%=rs.getString(2)%>" required>

    <label for="psw"><b>Password</b></label>
    <input type="text" placeholder="Enter Password" name="psw" value="<%=rs.getString(3)%>" required>

    <label for="name"><b>Full Name</b></label>
    <input type="text" placeholder="Enter Full Name" name="name" value="<%=rs.getString(4)%>" required>

    <label for="addr"><b>Address</b></label>
    <input type="text" placeholder="Enter Address" name="addr" value="<%=rs.getString(5)%>" required>

    <label for="phone"><b>Phone</b></label>
    <input type="text" placeholder="Enter Full Name" name="phone" value="<%=rs.getString(6)%>" required pattern="^[6789]\d{9}$">

    <label for="aadhar"><b>Aadhar Card Number</b></label>
    <input type="text" placeholder="Enter Aadhar Card Number" name="aadhar" value="<%=rs.getString(7)%>" required pattern="^\d{12}$">

    <div class="clearfix">
      <button type="button" class="cancelbtn" onclick="location.href='customer-home.jsp'">Cancel</button>
      <button type="submit" class="signupbtn">Update</button>
    </div>
  </div>
</form>
	  	
	  	
	  </main>
	  <footer class="footer">
	    <div>&copy; <%=new java.util.Date().getYear()+1900%> - Surfwell Communications</div>
	  </footer>
	</div>
</body>
</html>