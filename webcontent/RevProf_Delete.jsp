<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
		<div class="title">DELETE Profile</div>
		<div class="content">
			<form action="deleteR" method="post">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Reviewer ID</span> <input type="text"
							value="<%=id%>" name="id" required readonly>
					</div>
					<div class="input-box">
						<span class="details">Full Name</span> <input type="text"
							value="<%=name%>" name="name" required readonly>
					</div>
					<div class="input-box">
						<span class="details">Email</span> <input type="text"
							value="<%=email%>" name="email" required readonly>
					</div>
					<div class="input-box">
						<span class="details">Phone Number</span> <input type="text"
							value="<%=phone%>" name="phone" required readonly>
					</div>
					<div class="input-box">
						<span class="details">Qualifications</span> <input type="text"
							value="<%=qualification%>" name="qualification" required
							readonly>
					</div>
					<div class="input-box">
						<span class="details">Username</span> <input type="text"
							value="<%=userName%>" name="uid" required readonly>
					</div>
				</div>
				<div class="button">
					<input type="submit" name="submit" value="Delete My Account">
				</div>
			</form>
		</div>
	</div>

</body>
</html>