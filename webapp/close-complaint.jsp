<%@include file="config.jsp"%>

<%
	String id = request.getParameter("compid");
	
	con.createStatement().executeUpdate("update complaints set status='Closed' where comp_id="+id);
	
	response.sendRedirect("complaints.jsp");
%>