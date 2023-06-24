<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reviewer Login</title>
<link rel="stylesheet" href="./css/Login_style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

</head>
<body>
	<div class="login-form">
		<div class="text">Reviewer LOGIN</div>
		<form action="reviewer_login" method="post">
			<div class="field">
				<div class="fas fa-envelope"></div>
				<input type="text" placeholder="Email or Phone" name="uid">
			</div>
			<div class="field">
				<div class="fas fa-lock"></div>
				<input type="password" placeholder="Password" name="pass">
			</div>
			<div class="field">
				<input type="Submit" name="submit" value="login">
			</div>
			<div class="link">
				Not a member? <a href="Reviewer_Reg.jsp">Signup now</a>
			</div>
		</form>
	</div>

</body>
</html>