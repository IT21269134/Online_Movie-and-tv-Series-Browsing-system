<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="./css/Regis.css">
</head>
<body>
	<div class="container">
		<div class="title">Registration</div>
		<div class="content">
			<form action="insert" method = "post">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Full Name</span> <input type="text"
							placeholder="Enter your name" name="name" required>
					</div>
					<div class="input-box">
						<span class="details">Email</span> <input type="text"
							placeholder="Enter your email" name="email" required>
					</div>
					<div class="input-box">
						<span class="details">Phone Number</span> <input type="text"
							placeholder="Enter your number" name="phone" required>
					</div>
					<div class="input-box">
						<span class="details">Qualifications</span> <input type="text"
							placeholder="Enter your Qualfications" name="qualification"
							required>
					</div>
					<div class="input-box">
						<span class="details">Username</span> <input type="text"
							placeholder="Enter your username" name="uid" required>
					</div>
					<div class="input-box">
						<span class="details">Password</span> <input type="text"
							placeholder="Choose password" name="pwd" required>
					</div>
				</div>
				<div class="button">
					<input type="submit" name = "submit" value="Create Reviewer">
				</div>
			</form>
		</div>
	</div>

</body>
</html>