<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="UTF-8">	
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    
	<title>Delete Admin</title>

	<!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: url('images/19.jpg')">

	<%
	
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		String profileImg = request.getParameter("profileImg");
 	%>
 	
	
	 <div class="main">

        <section class="signup">
            <div class="container">
                <div class="signup-content bg-dark opacity-76 text-white">
                    
                    <form action="adminDel" method="get" id="signup-form" class="signup-form" enctype="multipart/form-data">
                        <h2 class="form-title text-white">Delete Admin Account</h2>
                        
                        <div class="form-group">
                            <input type="text" class="form-input" name="adId" value="<%= id %>" readonly />
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-input" name="name" value="<%= name %>" placeholder="Your Name" readonly/>
                        </div>

                        <div class="form-group">
                            <input type="email" class="form-input" name="email" value="<%= email %>" placeholder="Your Email" readonly/>
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-input" name="phone" value="<%= phone %>" placeholder="Your Phone Number" readonly/>
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-input" name="uname" value="<%= username %>" placeholder="Your User Name" readonly/>
                        </div>
                        
                    

                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="Delete Account"/>
                        </div>
                    </form>
                    
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
	
</body>
</html>