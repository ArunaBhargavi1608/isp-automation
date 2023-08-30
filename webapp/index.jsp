<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Surfwell Communications</title>
<link rel="stylesheet" href="css/style.css">
<style>
	body {
		background-image: url("images/background.jpg");
		background-position: center center;
		background-repeat: no-repeat;
		background-attachment: fixed;
		background-size: cover;
	}
	
	.center {
  		display: flex;
  		justify-content: center;
  		align-items: center;
  		height: 400px;
  		width: 100%;
  		font-family: Georgia;
  		font-size: 40px;
  		color: red;
  		text-shadow: 2px 2px 2px yellow;
	}
	
</style>
</head>
<body >
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="center">

  		<p>Surfwell Communications Internet Service Providers(ISP)... </p>

	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>