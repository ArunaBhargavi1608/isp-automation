<%@include file="config.jsp"%>
<%@page import="java.util.*" %>

<%
	Random r = new Random();

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	
	String pwd = Integer.toString(r.nextInt(9900)+10);  
	String addr = request.getParameter("addr");
	String phone =request.getParameter("phone");
	String jdate = request.getParameter("jdate");
	
	con.createStatement().executeUpdate("insert into employee(emp_name, emp_pwd, emp_addr, emp_phone, emp_join_date) values('"+name+"','"+pwd+"','"+addr+"','"+phone+"','"+jdate+"')");
%>
<script>
	alert('Employee added successfully');
	location.href = 'employee.jsp';
</script>

