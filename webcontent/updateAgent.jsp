<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Profile - Movie agent</title>
	<link rel="stylesheet" href="css/updateAgent.css">
	  
	 
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
      
    
    <div class="form-group">
        <form action="updateA" method="POST">
            <div class="row">
  		<input type="hidden" name="Agtid" value="<%= id %>" readonly>
            	
                <div class="input-group">
                    <label>Name</label>
                    <input type="text" name="name" value="<%= name%>"  >
                </div>

            </div>
            <div class="row">
            	<div class="input-group">
                    <label>Email</label>
                    <input type="email" name="email" value="<%= email%>"  >
                </div>
                 <div class="input-group">
                    <label>Phone Number</label>
                    <input type="text" name="phone" value="<%= phone%>" >
                </div>

            </div>
            <div class="row">
                <div class="input-group">
                    <label>Username</label>
                    <input type="text" name="uname" value="<%= userName%>"  >
                </div>
            
                <div class="input-group">
                    <label>Password</label>
                    <input type="password" name="pass" value="<%= password%>"  >
                </div>

            </div>
            <div class="row">


            </div>
            <input type="submit" name="submit" class= "btn" value="Update My Data">
        </form>
        <div class="custom-message">
        </div>
    </div>

 
</body>
</html>