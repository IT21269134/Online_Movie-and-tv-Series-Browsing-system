<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>

<title>Admin Login</title>
</head>
<body style="background-image: url('images/bg1.jpg'); background-repeat: no-repeat; background-attachment: fixed;
  background-size: 100% 100%;">
	<% session.invalidate(); %>
	
	<section class="ftco-section ">
		<div class="container text-center my-5 py-4 border col-lg-4 col-md-6 col-sm-12 shadow p-3 mb-5 bg-dark text-white rounded">
		
			<h1 class="mb-4">Admin Login</h1>
			<form action="adminLog" method="post">
				<div class="mb-3">
				  <label class="form-label">User name</label>
		
				  <input type="text" class="form-control" name="uid" placeholder="eg: AD123" required>
				</div>
				<div class="mb-3">
				  <label class="form-label">Password</label>
				  <input type="password" class="form-control" name="pw" placeholder="*******" required>
				</div>
				
				<div class="col-auto">
				   <button type="submit" class="btn btn-primary mb-3" name="submit" value="login">Login</button>
				 </div>
				 
				 <p style="font-size: 8pt;">
                        Haven't Registered ? <a href="adminRegister.jsp" class="loginhere-link">Register here</a>
                 </p>
			</form>
		</div>
	</section>

</body>
</html>