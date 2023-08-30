<%@include file="config.jsp"%>
<%@page import="java.util.*" %>

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	
	String addr = request.getParameter("addr");
	String phone =request.getParameter("phone");
	String jdate = request.getParameter("jdate");
	
	con.createStatement().executeUpdate("update employee set emp_name='"+name+"', emp_addr='"+addr+"', emp_phone='"+phone+"', emp_join_date='"+jdate+"' where emp_id="+id);
%>
<script>
	alert('Employee updated successfully');
	location.href = 'employee.jsp';
</script>

