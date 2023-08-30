<%@include file="config.jsp"%>

<%
	String id = request.getParameter("id");
	String email = request.getParameter("email");
	String psw = request.getParameter("psw");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String phone = request.getParameter("phone");
	String aadhar = request.getParameter("aadhar");
	
	ResultSet rs = con.createStatement().executeQuery("select * from customer where c_email='"+email+"' and c_id<>"+id);
	
	if(rs.next()){
%>
<script>
	alert("Email already registered");
	location.href = "view-profile.jsp";
</script>
<%
	}
	else{
		con.createStatement().executeUpdate("update customer set c_email='"+email+"', c_pwd='"+psw+"', c_name='"+name+"', c_addr='"+addr+"', c_phone='"+phone+"', c_aadhar='"+aadhar+"' where c_id="+id);
%>
<script>
	alert("Customer profile updated successfully");
	location.href = "customer-home.jsp";
</script>
<%
	}
%>

