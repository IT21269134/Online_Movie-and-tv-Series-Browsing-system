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

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>

	<h1>Agent Account Delete</h1>

	 
    <div class="form-group">
        <form action="deleteA" method="POST">
            <div class="row">
            	
                <div class="input-group">
                    <label>Agent ID</label>
                    <input type="text" name="Agtid" value="<%= id %>" readonly>
                </div>

            </div>
            <div class="row">
            	<div class="input-group">
                    <label>Name</label>
                    <input type="text" name="name" value="<%= name %>" readonly>
                </div>
                 <div class="input-group">
                    <label>Email</label>
                    <input type="text" name="email" value="<%= email %>" readonly>
                </div>

            </div>
            <div class="row">
                <div class="input-group">
                    <label>Phone number</label>
                    <input type="text" name="phone" value="<%= phone %>" readonly></td>
                </div>
            
                <div class="input-group">
                    <label>user name</label>
                    <input type="text" name="uname" value="<%= userName %>" readonly>
                </div>

                <div class="input-group">
                    <label>password</label>
                    <input type="text" name="pass" value="<%= password %>" readonly>
                </div>


            </div>
            <div class="row">


            </div>
            <input type="submit" name="submit" class= "btn" value="Delete Agent">
        </form>
        <div class="custom-message">
        </div>
    </div>

</body>
</html>