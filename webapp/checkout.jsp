<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkout</title>
</head>
<body>
<%@include file="config.jsp"%>

<%
	String cid = session.getAttribute("cid").toString();
	String pid = request.getParameter("pid");
	String cardholder = request.getParameter("cardholder");
	String cardno = request.getParameter("cardno");
	PreparedStatement ps = con.prepareStatement("insert into bill(bill_date, c_id, plan_id, card_holder, card_number) values(current_date, ?, ?, ?, ?)");
	
	ps.setInt(1, Integer.parseInt(cid));
	ps.setInt(2, Integer.parseInt(pid));
	ps.setString(3, cardholder);
	ps.setString(4, cardno);
	
	ps.executeUpdate();
%>
</body>
</html>
<script>
	alert('Payment accepted successfully. Soon our service engineer will contact you. For detailed bill check your My Plans section.');
	location.href = 'customer-home.jsp';
</script>