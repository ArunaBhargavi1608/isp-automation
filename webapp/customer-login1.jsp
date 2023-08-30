<%@include file="config.jsp"%>

<%
	String email = request.getParameter("email");
	String psw = request.getParameter("psw");
	
	ResultSet rs = con.createStatement().executeQuery("select * from customer where c_email='"+email+"' and c_pwd='"+psw+"'");
	
	if(rs.next()){
		session.setAttribute("cid", rs.getString(1));
		session.setAttribute("cname", rs.getString(4));
%>
<script>
	alert('Customer Login Successful!!!');
	location.href = 'customer-home.jsp';
</script>
<%
	}
	else{
%>
<script>
	alert('Customer Login Failed!!!');
	location.href = 'customer-login.jsp';
</script>
<%
	}
%>