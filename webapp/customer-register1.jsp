<%@include file="config.jsp"%>

<%
	String email = request.getParameter("email");
	String psw = request.getParameter("psw");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String phone = request.getParameter("phone");
	String aadhar = request.getParameter("aadhar");
	
	ResultSet rs = con.createStatement().executeQuery("select * from customer where c_email='"+email+"'");
	
	if(rs.next()){
%>
<script>
	alert("Email already registered");
	location.href = "customer-login.jsp";
</script>
<%
	}
	else{
		con.createStatement().executeUpdate("insert into customer(c_email, c_pwd, c_name, c_addr, c_phone, c_aadhar) values('"+email+"','"+psw+"','"+name+"','"+addr+"','"+phone+"','"+aadhar+"')");
%>
<script>
	alert("Customer registered successfully");
	location.href = "customer-login.jsp";
</script>
<%
	}
%>
