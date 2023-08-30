<%@include file="config.jsp"%>

<%
	String id = request.getParameter("pid");
	
	con.createStatement().executeUpdate("delete from plans where plan_id="+id);
	
	response.sendRedirect("create-plan.jsp");
%>