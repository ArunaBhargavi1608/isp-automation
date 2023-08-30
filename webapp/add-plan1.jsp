<%@include file="config.jsp"%>

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String speed = request.getParameter("speed");
	String data =request.getParameter("data");
	String duration = request.getParameter("duration");
	String cost = request.getParameter("cost");
	
	con.createStatement().executeUpdate("insert into plans (plan_name, speed, data, duration, cost) VALUES('"+name+"','"+speed+"', '"+data+"', '"+duration+"', "+cost+")");
%>
<script>
	alert('Plan added successfully');
	location.href = 'create-plan.jsp';
</script>

