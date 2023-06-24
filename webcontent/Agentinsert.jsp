<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="css/updateAgent.css">
</head>
<body>
	
    <div class="form-group">
        <form action="insertA" method="POST">
            <div class="row">
            	
                <div class="input-group">
                    <label>Name</label>
                    <input type="text" name="name"  >
                </div>

            </div>
            <div class="row">
            	<div class="input-group">
                    <label>Email</label>
                    <input type="email" name="email"  >
                </div>
                 <div class="input-group">
                    <label>Phone Number</label>
                    <input type="text" name="phone"  >
                </div>

            </div>
            <div class="row">
                <div class="input-group">
                    <label>Username</label>
                    <input type="text" name="uid"  >
                </div>
            
                <div class="input-group">
                    <label>Password</label>
                    <input type="password" name="psw"   >
                </div>

            </div>
            <div class="row">


            </div>
            <input type="submit" name="submit" class= "btn" value="Create Agent">
        </form>
        <div class="custom-message">
        </div>
    </div>


</body>
</html>