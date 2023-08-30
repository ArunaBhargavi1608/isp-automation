<%@include file="config.jsp"%>

<%
	String bid = request.getParameter("bid");
	String eid = request.getParameter("eid");
	
	con.createStatement().executeUpdate("update bill set emp_id="+eid+" where bill_id="+bid);
%>

<script>
	alert('Service engineer assigned successfully');
	location.href = 'bill.jsp';
</script>
