<%@include file="config.jsp"%>

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String speed = request.getParameter("speed");
	String data =request.getParameter("data");
	String duration = request.getParameter("duration");
	String cost = request.getParameter("cost");
	
	con.createStatement().executeUpdate("update plans set plan_name='"+name+"', speed='"+speed+"', data='"+data+"', duration='"+duration+"', cost="+cost+" where plan_id="+id);
%>
<script>
	alert('Plan updated successfully');
	location.href = 'create-plan.jsp';
</script>

