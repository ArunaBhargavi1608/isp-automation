<%@include file="config.jsp"%>

<%
	String id = request.getParameter("bid");
	
	con.createStatement().executeUpdate("update bill set status='Closed' where bill_id="+id);
	
	response.sendRedirect("bill.jsp");
%>