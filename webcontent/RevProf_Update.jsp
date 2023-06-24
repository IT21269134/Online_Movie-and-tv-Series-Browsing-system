<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reviewer Profile Update</title>
<link rel="stylesheet" href="./css/Regis.css">
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String qualification = request.getParameter("qualification");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
















	<div class="container">
		<div class="title">Update Profile</div>
		<div class="content">
			<form action="updateR" method = "post">
				<div class="user-details">
							<div class="input-box">
						<span class="details">Reviewer ID</span> <input type="text" value = "<%= id %>"
							 name="id" required readonly>
					</div>
					<div class="input-box">
						<span class="details">Full Name</span> <input type="text" value = "<%= name %>"
							 name="name" required>
					</div>
					<div class="input-box">
						<span class="details">Email</span> <input type="text" value = "<%=email%>"
							 name="email" required>
					</div>
					<div class="input-box">
						<span class="details">Phone Number</span> <input type="text" value = "<%= phone%>"
							name="phone" required>
					</div>
					<div class="input-box">
						<span class="details">Qualifications</span> <input type="text" value = "<%= qualification %>"
							 name="qualification"
							required>
					</div>
					<div class="input-box">
						<span class="details">Username</span> <input type="text" value = "<%= userName%>"
							 name="uid" required>
					</div>
					<div class="input-box">
						<span class="details">Password</span> <input type="text" value = "<%= password %>"
							 name="pwd" required>
					</div>
				</div>
				<div class="button">
					<input type="submit" name = "submit" value="Update My Profile">
				</div>
			</form>
		</div>
	</div>
</body>
</html>