<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Register</title>
<link rel="stylesheet" href="css/customer-register.css">
</head>
<body>

<form action="customer-register1.jsp" style="border:1px solid #ccc">
  <div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="email"><b>Email</b></label>
    <input type="email" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <label for="name"><b>Full Name</b></label>
    <input type="text" placeholder="Enter Full Name" name="name" required>

    <label for="addr"><b>Address</b></label>
    <input type="text" placeholder="Enter Address" name="addr" required>

    <label for="phone"><b>Phone</b></label>
    <input type="text" placeholder="Enter Full Name" name="phone" required pattern="^[6789]\d{9}$">

    <label for="aadhar"><b>Aadhar Card Number</b></label>
    <input type="text" placeholder="Enter Aadhar Card Number" name="aadhar" required pattern="^\d{12}$">

    <div class="clearfix">
      <button type="button" class="cancelbtn" onclick="location.href='index.jsp'">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>

</body>
</html>