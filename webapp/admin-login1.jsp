<%@include file="config.jsp"%>

<%
	String uname = request.getParameter("uname");
	String psw = request.getParameter("psw");
	
	ResultSet rs = con.createStatement().executeQuery("select * from admin where admin_id='"+uname+"' and admin_pwd='"+psw+"'");
	
	if(rs.next()){
		session.setAttribute("aid", rs.getString(1));
		session.setAttribute("uname", rs.getString(3));
%>
<script>
	alert('Admin Login Successful!!!');
	location.href = 'admin-home.jsp';
</script>
<%
	}
	else{
%>
<script>
	alert('Admin Login Failed!!!');
	location.href = 'index.jsp';
</script>
<%
	}
%>