<%@include file="config.jsp"%>

<%
	String id = request.getParameter("eid");
	
	con.createStatement().executeUpdate("delete from employee where emp_id="+id);
	
	response.sendRedirect("employee.jsp");
%>