<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <title>Movie agent Login</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/loginAgent.css">

</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
  <form action="loginA" method="post">
        <h3>Movie Agent login</h3>

        <label for="username">UserName</label>
        <input type="text" placeholder="Email or Phone" id="username" name="username">

        <label for="password">Password</label>
        <input type="password" placeholder="Password" id="password" name="password">

        <button name="submit" value="Login">Log In</button>
      	Not a member? <a href ="Agentinsert.jsp">Register</a>
        <div class="social">
          <div class="go"><i class="fab fa-google" ></i> Google</div>
          <div class="fb"><i class="fab fa-facebook"></i>Facebook</div>
        </div>
    </form>
    
   
</body>
</html>
