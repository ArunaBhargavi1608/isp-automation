<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet" href="css/admin-login.css">
</head>
<body>
<form action="admin-login1.jsp" method="post">
  <div class="imgcontainer">
    <a href="index.jsp"><img src="images/img_avatar2.png" alt="Avatar" class="avatar"></a>
  </div>

  <div class="container">
    <label for="uname"><b>Admin ID</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit">LOGIN</button>

  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn" onclick="location.href='index.jsp'">Cancel</button>
  </div>
</form>
</body>
</html>