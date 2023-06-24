<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Movie Agent DashBoard</title>

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="css/style.css">

</head>

<body>

	<!-- header section starts  -->

	<header class="header">

		<div class="user">
			<img src="images/user-img.png" alt="">
			<h3>My Profile</h3>
			<p>Movie Agent</p>
		</div>

		<nav class="navbar">
			<a href="#about">about</a> <a href="#services">Published</a> <a
				href="#portfolio">Portfolio</a> <a href="#contact">Add Theater </a>
		</nav>

	</header>

	<!-- header section ends -->

	<div id="menu-btn" class="fas fa-bars"></div>

	<!-- theme toggler  -->

	<div id="theme-toggler" class="fas fa-moon"></div>

	<!-- about section starts  -->
	<section class="about" id="about">
<c:forEach var="Agt" items="${AgtDetails}">
		<h1 class="heading">
			<span>Welcome</span> ${Agt.name}
		</h1>

		<div class="row">


			<div class="content">
				<h3>
					This is movie agent <span>Profile</span>
				</h3>
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
					Nihil hic eum magnam, ea nulla sit cumque explicabo dolorem illo
					itaque?</p>

			</div>

		</div>

		<div class="row">

			<div class="progress">
				

					<c:set var="id" value="${Agt.id}" />
					<c:set var="name" value="${Agt.name}" />
					<c:set var="email" value="${Agt.email}" />
					<c:set var="phone" value="${Agt.phone}" />
					<c:set var="username" value="${Agt.userName}" />
					<c:set var="password" value="${Agt.password}" />



					<h3>ID : ${Agt.id}</h3>
					<br>
					<h3>Name :${Agt.name}</h3>
					<br>
					<h3>Email : ${Agt.email}</h3>
					<br>
					<h3>Phone : ${Agt.phone}</h3>
					<br>
			</div>
			<div class="progress">
				<h3>UserName : ${Agt.userName}</h3>
				<br>
				<h3>Password : ${Agt.password}</h3>

				<br>

			</div>
			
		</div>
		
		<!-- forEach -->


		<c:url value="updateAgent.jsp" var="Agtupdate">
			<c:param name="id" value="${id}" />
			<c:param name="name" value="${name}" />
			<c:param name="email" value="${email}" />
			<c:param name="phone" value="${phone}" />
			<c:param name="uname" value="${username}" />
			<c:param name="pass" value="${password}" />
		</c:url>

		<a href="${Agtupdate}" class="btn">Update Profile <input
			type="button" name="update">
		</a>


		<c:url value="deleteAgent.jsp" var="Agtdelete">
			<c:param name="id" value="${id}" />
			<c:param name="name" value="${name}" />
			<c:param name="email" value="${email}" />
			<c:param name="phone" value="${phone}" />
			<c:param name="uname" value="${username}" />
			<c:param name="pass" value="${password}" />
		</c:url>

		<a href="${Agtdelete}" class="btn">Delete Profile <input
			type="button" name="delete">
		</a>

		<!--    <a href="updateAgent.jsp" class="btn">Update Profile</a>-->
		<!--    <a href="deleteAgent.jsp" class="btn">Delete Profile</a>-->
		
		</c:forEach>
	</section>

	<!-- services section starts  -->

	<section class="services" id="services">

		<h1 class="heading">
			Published <span>Theater profiles</span>
		</h1>

		<div class="box-container">

			<div class="box">
				<i class="fas fa-bullhorn"></i>
				<h3>Theater Name</h3>
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
					Exercitationem quas delectus, laboriosam nulla dolore in.</p>
			</div>

			<div class="box">
				<i class="fas fa-bullhorn"></i>
				<h3>Theater Name</h3>
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
					Exercitationem quas delectus, laboriosam nulla dolore in.</p>
			</div>

			<div class="box">
				<i class="fas fa-bullhorn"></i>
				<h3>Theater Name</h3>
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
					Exercitationem quas delectus, laboriosam nulla dolore in.</p>
			</div>

			<div class="box">
				<i class="fas fa-bullhorn"></i>
				<h3>Theater Name</h3>
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
					Exercitationem quas delectus, laboriosam nulla dolore in.</p>
			</div>

			<div class="box">
				<i class="fas fa-bullhorn"></i>
				<h3>Theater Name</h3>
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
					Exercitationem quas delectus, laboriosam nulla dolore in.</p>
			</div>

			<div class="box">
				<i class="fas fa-bullhorn"></i>
				<h3>Theater Name</h3>
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
					Exercitationem quas delectus, laboriosam nulla dolore in.</p>
			</div>

		</div>

	</section>

	<!-- services section ends -->


	<!-- portfolio section starts  -->

	<section class="portfolio" id="portfolio">

		<h1 class="heading">
			my <span>portfolio</span>
		</h1>

		<div class="box-container">

			<div class="box">
				<img src="images/img-1.jpg" alt="">
				<div class="content">
					<h3>Theater Name</h3>
					<a href="updateAgent.jsp" class="btn">Edit</a>
				</div>
			</div>

			<div class="box">
				<img src="images/img-2.jpg" alt="">
				<div class="content">
					<h3>Theater Name</h3>
					<a href="updateAgent.jsp" class="btn">Edit</a>
				</div>
			</div>

			<div class="box">
				<img src="images/img-3.jpg" alt="">
				<div class="content">
					<h3>Theater Name</h3>
					<a href="updateAgent.jsp" class="btn">Edit</a>
				</div>
			</div>

			<div class="box">
				<img src="images/img-4.jpg" alt="">
				<div class="content">
					<h3>Theater Name</h3>
					<a href="updateAgent.jsp" class="btn">Edit</a>
				</div>
			</div>

			<div class="box">
				<img src="images/img-5.jpg" alt="">
				<div class="content">
					<h3>Theater Name</h3>
					<a href="updateAgent.jsp" class="btn">Edit</a>
				</div>
			</div>

			<div class="box">
				<img src="images/img-6.jpg" alt="">
				<div class="content">
					<h3>Theater Name</h3>
					<a href="updateAgent.jsp" class="btn">Edit</a>
				</div>
			</div>

		</div>

	</section>

	<!-- portfolio section ends -->





	<!-- contact section starts -->

	<section class="contact" id="contact">

		<h1 class="heading">
			<span>Add </span> New Theatre
		</h1>

		<form action="">
			<input type="text" placeholder="Theatre name" class="box"> <input
				type="email" placeholder="Links" class="box"> <input
				type="text" placeholder="Location" class="box">
			<textarea name="" class="box" placeholder="Add More Details" id=""
				cols="30" rows="10"></textarea>
			<input type="submit" value="Submit" class="btn">
		</form>

	</section>

	<!-- agent js file link  -->
	<script src="js/script.js"></script>
</body>
</html>