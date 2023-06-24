<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@page import="java.sql.*"%>



<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/adminCSS/admprof.css">

  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
  
  
  <script type="text/javascript">
  	function showTable(tableIdToShow) {
	  hideAllTables();
	  
	  let tableElement = document.getElementById(tableIdToShow);

	  tableElement.classList.add('show');
	}

	function hideAllTables() {
	  let allTableElements = document.querySelectorAll('.table');

	  for (tableElement of allTableElements) {
	    tableElement.classList.remove('show')
	  }
	}
  </script>
	
  <title>Admin Account </title>
  
  <style type="text/css">
  	.table {
	  display: none;
	}
	
	.table.show {
	  display: block;
	}
  </style>
  
</head>

<body style="background-image: url('images/bg4.jpg')">
	<%="Welcome: " +session.getAttribute("username") %>
	
  <c:forEach var="admin" items="${adminDetails}">
  <c:set var="id" value="${admin.id}"/>
  <c:set var="name" value="${admin.name}"/>
  <c:set var="email" value="${admin.email}"/>
  <c:set var="phone" value="${admin.phone}"/>
  <c:set var="username" value="${admin.userName}"/>
  <c:set var="password" value="${admin.password}"/>
  <c:set var="profileImg" value="${admin.profileImg}"/>


  <div class="container-fluid bg-light">
        <div class="row">
            
            <div class="col-12 p-0">
                <nav aria-label="breadcrumb ">
                    <ol class="breadcrumb py-3 px-3">
                        <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="Reviwers.jsp">Reviews</a></li>
                        
                    </ol>
                </nav>
            </div>
           
            <div class="col-md-5">
                <div class="row ps-2 ">
                    
                    <div class="col-12 bg-white p-0 px-3 py-3 mb-3 rounded shadow">
                        <div class="d-flex flex-column align-items-center">
                            <img class="photo" src="images/AdminImg/${admin.profileImg}" alt="AdminPhoto">
                            <p class="fw-bold h4 mt-3">${admin.name}</p>
                            <p class="text-muted">ID: ${admin.id}</p>
                            
                            <div class="d-flex ">
                            	<!-- jstl tags -->
                            	<c:url value="adminUpdate.jsp" var="admUpdate">
								    <c:param name="id" value="${id}"/>
								    <c:param name="name" value="${name}"/>
								    <c:param name="email" value="${email}"/>
								    <c:param name="phone" value="${phone}"/>
								    <c:param name="uname" value="${username}"/>
								    <c:param name="pass" value="${password}"/>
								    <c:param name="profileImg" value="${profileImg}"/>
							  
							 	 </c:url>
                                <a href = "${admUpdate}">
								    <input class="btn btn-primary follow me-2" type="button" name="update" value="Update Account">
								 </a>
									
								  <!-- jstl tags -->
								  <c:url value ="adminDelete.jsp" var="admDelete">
								    <c:param name="id" value="${id}"/>
								    <c:param name="name" value="${name}"/>
								    <c:param name="email" value="${email}"/>
								    <c:param name="phone" value="${phone}"/>
								    <c:param name="uname" value="${username}"/>
								    <c:param name="pass" value="${password}"/>
								    <c:param name="profileImg" value="${profileImg}"/>
								    
								  </c:url>	
								<a href = "${admDelete}">
									<input class="btn btn-outline-danger message" type="button" name="delete" value="Delete Account">
								</a>	
                            </div>
                            
                            <a href = "adminLogin.jsp">
								<input class="btn btn-outline-success message mt-3" type="button" name="delete" value="Logout">
							</a>
							
                        </div>
                    </div>
                   
                    <div class="col-12 bg-white p-0 px-2 pb-3 mb-3 rounded shadow">

                        <div class="d-flex justify-content-between border-bottom py-2 px-3">
                            <p><span class="fab fa-twitter me-2"></span>Twitter</p>
                            <a href="#">@sliix</a>
                        </div>
                        <div class="d-flex justify-content-between border-bottom py-2 px-3">
                            <p><span class="fab fa-instagram me-2"></span>Instagram</p>
                            <a href="#">sliix</a>
                        </div>
                        <div class="d-flex justify-content-between py-2 px-3">
                            <p><span class="fab fa-facebook-f me-2"></span>facebook</p>
                            <a href="#">sliix</a>
                        </div>
                    </div>
                </div>
            </div>
           
            <div class="col-md-7 ps-md-4">
                <div class="row pe-2">
                    <div class="col-12 bg-white px-3 mb-3 pb-3 rounded shadow">
                        <div class="d-flex align-items-center justify-content-between border-bottom">
                            <p class="py-2">Full Name</p>
                            <p class="py-2 text-muted">${admin.name}</p>
                        </div>
                        <div class="d-flex align-items-center justify-content-between border-bottom">
                            <p class="py-2">Email</p>
                            <p class="py-2 text-muted">${admin.email}</p>
                        </div>
                        <div class="d-flex align-items-center justify-content-between border-bottom">
                            <p class="py-2">Phone</p>
                            <p class="py-2 text-muted">${admin.phone}</p>
                        </div>
                        <div class="d-flex align-items-center justify-content-between border-bottom">
                            <p class="py-2">User Name</p>
                            <p class="py-2 text-muted">${admin.userName}</p>
                        </div>
                        
                    </div>
                    
                    <div class="col-12 bg-white  px-3 py-3 rounded shadow align-middle">
                    
                    <!-- table1 -->
 						<table class="show table table-dark" id="table1">
	                 
								  <thead>
								  	<tr>
								    	<th>ID</th>
								    	<th>Name</th>
								    	<th>Email</th>
								    	<th>Phone </th>
								    	<th>Password </th>
								    	<th>Image </th>
								    <tr>
								  </thead>
								  	
	
							<%
		                    try{
		                    	Class.forName("com.mysql.jdbc.Driver");
								String url="jdbc:mysql://localhost/system_db";
								String username="root";
								String password="0767";
								Connection conn=DriverManager.getConnection(url,username,password);
								Statement stmt=conn.createStatement();
								
								String sql = "select * from user ";
								ResultSet rs=stmt.executeQuery(sql);
		                    	
								while(rs.next()){	
									
							%>
							
								  <tbody>  		
							  		    <tr class="table-active">
										      <td><%=rs.getString(1) %></td>
										      <td><%=rs.getString(2) %></td>
										      <td><%=rs.getString(3) %></td>
										      <td><%=rs.getString(4) %></td>
										      <td><%=rs.getString(5) %></td>
										      <td><%=rs.getString(6) %></td>
										</tr>											  
								</tbody>
							
		                    <%
							
								}
								
							%>
							<%
							   	rs.close();
						    	stmt.close();
						    	conn.close();
		                    	
		                    }
		                    
		                    catch(Exception e){
		                    	e.printStackTrace();
		                    }
		                    
		                    %>
	                    
	                    	</table>
                    	
                    	
                    	<!-- table2 -->
                    	
	                    	<table class="table table-dark" id="table2">
								  <thead>
								  	<tr>
								    	<th>ID</th>
								    	<th>Name</th>
								    	<th>Email </th>
								    	<th>Phone </th>
								    	<th>Qualification </th>
								    	<th>Username </th>
								    	<th>Password </th>
								    <tr>
								  </thead>
								  	
	
							<%
		                    try{
		                    	Class.forName("com.mysql.jdbc.Driver");
								String url="jdbc:mysql://localhost/system_db";
								String username="root";
								String password="0767";
								Connection conn=DriverManager.getConnection(url,username,password);
								Statement stmt=conn.createStatement();
								
								String sql = "select * from insert_reviewer";
								ResultSet rs=stmt.executeQuery(sql);
		                    	
								while(rs.next()){	
									
							%>
							
								  <tbody>  		
							  		    <tr class="table-active">
										      <td><%=rs.getString(1) %></td>
										      <td><%=rs.getString(2) %></td>
										      <td><%=rs.getString(3) %></td>
										      <td><%=rs.getString(4) %></td>
										      <td><%=rs.getString(5) %></td>
										      <td><%=rs.getString(6) %></td>
										      <td><%=rs.getString(7) %></td>
										</tr>											  
								</tbody>
							
		                    <%
							
								}
								
							%>
							<%
							   	rs.close();
						    	stmt.close();
						    	conn.close();
		                    	
		                    }
		                    
		                    catch(Exception e){
		                    	e.printStackTrace();
		                    }
		                    
		                    %>
	                    
	                    	</table>
						
						<center>
							<input class="btn btn-outline-dark message mt-3" type="button" onclick="showTable('table1')" value="Users List">
							<input class="btn btn-outline-dark message mt-3" type="button" onclick="showTable('table2')" value="Reviewers List">
	                    </center>
                    </div>
                    
                  
             
                </div>
            </div>
        </div>
    </div>

    </c:forEach>

</body>
</html>