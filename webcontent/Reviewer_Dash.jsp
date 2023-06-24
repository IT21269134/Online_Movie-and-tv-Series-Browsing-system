<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User account</title>

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="css/Reviewer_Dash.css">
</head>
<body>

	<!-- header section starts  -->

	<header>

		<div id="menu-bars" class="fas fa-bars"></div>

		<nav class="navbar">
			<a href="home.jsp">Home</a> <a href="#about">Profile</a> <a
				href="#portfolio">Published</a> <a href="#blogs">My Reviews</a> <a
				href="Reviwers.jsp">Write a review</a>
		</nav>

	</header>

	<!-- header section ends -->

	<!-- home section starts  -->

	<section class="home" id="home">

		<div class="content">
			<img class="tilt" src="images/home-pic.png" alt="">
			<h3>
				Reviewer <span>DashBoard</span>
			</h3>
			<p>
				<span class="typing-text"> Welcome reviewer</span>
			</p>
			<a href="#about" class="btn">Go to Profile</a>
		</div>

	</section>

	<!-- home section ends -->

	<!-- about section starts  -->

	<section class="about" id="about">

		<h1 class="heading">
			My <span>Profile</span>
		</h1>

		<div class="row">

			<div class="image">
				<img class="tilt" src="images/about-pic.jpg" alt="">
			</div>

			<div class="content">
				<c:forEach var="rev" items="${ReviewerDetails}">

					<c:set var="id" value="${rev.id}" />
					<c:set var="name" value="${rev.name}" />
					<c:set var="email" value="${rev.email}" />
					<c:set var="phone" value="${rev.phone}" />
					<c:set var="qualification" value="${rev.qualification}" />
					<c:set var="username" value="${rev.userName}" />
					<c:set var="password" value="${rev.password}" />






					<h3>
						Hello <span> ${rev.name} </span>
					</h3>
					<p class="info">Welcome to your profile.You Can edit your
						profile details Here. We encourage you to read the relevant
						guidelines Before submittiong a review. Please Note Reviews are
						published as Snippets Linked to your own personal Blog. Have fun
						Publishing</p>
					<div class="box-container">

						<div class="box">



							<p>
								<span> ID: </span> ${rev.id}
							</p>
							<p>
								<span> Name: </span> ${rev.name}
							</p>
							<p>
								<span> Email : </span>${rev.email}</p>
							<p>
								<span> Phone : </span> ${rev.phone}
							</p>

						</div>
						<div class="box">
							<p>
								<span> Qualification: </span> ${rev.qualification}
							</p>
							<p>
								<span> UserName: </span> ${rev.userName}
							</p>
							<p>
								<span> Password: </span> ${rev.password}
							</p>

						</div>


					</div>

					<c:url value="RevProf_Update.jsp" var="Revupdate">
						<c:param name="id" value="${id}" />
						<c:param name="name" value="${name}" />
						<c:param name="email" value="${email}" />
						<c:param name="phone" value="${phone}" />
						<c:param name="qualification" value="${qualification}" />
						<c:param name="uname" value="${username}" />
						<c:param name="pass" value="${password}" />
					</c:url>

					<a href="${Revupdate}"> <input type="button" name="update"
						class="btn" value="Update My Data">
					</a>

					<c:url value="RevProf_Delete.jsp" var="Revdelete">
						<c:param name="id" value="${id}" />
						<c:param name="name" value="${name}" />
						<c:param name="email" value="${email}" />
						<c:param name="phone" value="${phone}" />
						<c:param name="qualification" value="${qualification}" />
						<c:param name="uname" value="${username}" />
						<c:param name="pass" value="${password}" />
					</c:url>
					<a href="${Revdelete}"> <input type="button" name="delete"
						class="btn" value="Delete My Account">
					</a>
				</c:forEach>
			</div>

		</div>

	</section>

	<!-- about section ends -->




	<!-- footer section  -->

	<div class="footer">
		created by <span> Group 19 </span> | all rights reserved!
	</div>



	<!-- javascript part  -->

	<!-- typed.js link  -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.12/typed.min.js"></script>


	<!-- vanilla-tilt.js link  -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/vanilla-tilt/1.7.0/vanilla-tilt.min.js"></script>

	<script>

        let menu = document.querySelector('#menu-bars');
        let header = document.querySelector('header');

        menu.onclick = () => {
            menu.classList.toggle('fa-times');
            header.classList.toggle('active');
        }

        window.onscroll = () => {
            menu.classList.remove('fa-times');
            header.classList.remove('active');
        };

        var typed = new Typed('.typing-text', {
            strings: ['Find Movies', 'Welcome Reviewer', 'This is your DashBoard', 'Find Movies'],
            loop: true,
            typeSpeed: 150
        });

        VanillaTilt.init(document.querySelectorAll('.tilt'), {
            max: 25
        });

    </script>













</body>
</html>