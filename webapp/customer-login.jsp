<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Login</title>
<link rel="stylesheet" href="css/customer-login.css">
</head>
<body>

<div class="wrapper">
  <div class="container">
    <div class="col-left">
      <div class="login-text">
        <h2>Welcome Back</h2>
        <p>Create your account.<br>It's totally free.</p>
        <a class="btn" href="customer-register.jsp">Sign Up</a>
      </div>
    </div>
    <div class="col-right">
      <div class="login-form">
        <h2>Login</h2>
        <form method="post" action="customer-login1.jsp">
          <p>
            <label>Email address<span>*</span></label>
            <input type="email" placeholder="Email" name="email" required>
          </p>
          <p>
            <label>Password<span>*</span></label>
            <input type="password" placeholder="Password" name="psw" required>
          </p>
          <p>
            <input type="submit" value="Sign In" />
          </p>
          <p>
            <a href="">Forget Password?</a>
          </p>
        </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>