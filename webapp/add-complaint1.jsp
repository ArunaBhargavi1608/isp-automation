<%@include file="config.jsp"%>

<%
	String compid = request.getParameter("compid");
	String compdate = request.getParameter("compdate");
	String comptext = request.getParameter("comptext");
	String bid =request.getParameter("bid");
	
	con.createStatement().executeUpdate("insert into complaints VALUES("+compid+",'"+compdate+"', "+bid+", '"+comptext+"', 'Pending')");
%>
<script>
	alert('Complaint posted successfully');
	location.href = 'post-complaints.jsp';
</script>

