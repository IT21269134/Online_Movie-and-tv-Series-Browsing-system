<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reviewer DashBoard</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/Reviewer_Dash.css">

</head>

<body>

      <%
                    try{
                    	Class.forName("com.mysql.jdbc.Driver");
						String url="jdbc:mysql://localhost/system_db";
						String username="root";
						String password="0767";
						Connection conn=DriverManager.getConnection(url,username,password);
						Statement stmt=conn.createStatement();
						
						String sql = "select * from review ";
						ResultSet rs=stmt.executeQuery(sql);
                    	
						while(rs.next()){	
							
					%>
					
					
						 
        <section class="blogs" id="blogs">

      

       <div class="box-container">
        
        <div class="box tilt">
            
            <h3> <%=rs.getString(2) %> </h3>
            <p><%=rs.getString(3) %></p>
            
        </div>

    

    </div>

</section>
                           
                           
                           
         	
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

    <header>

        <div id="menu-bars" class="fas fa-bars"></div>

        <nav class="navbar">
            <a href="#blogs">Movie Reviews</a>
            <a href="#contact">Write a review</a>
        </nav>

    </header>



<section class="contact" id="contact">

    <h1 class="heading"> Write a  <span> new review </span> </h1>

    <div class="row">

  

        <form action="rev" method = "post">

            <div class="inputBox">
                <input type="text" placeholder="Movie title" name="name">
                
            </div>

           
            <textarea placeholder="description" name="description" id="description" cols="30" rows="10"></textarea>

            <input type="submit" class="btn" value="Add Review">

        </form>

    </div>
    
       
    
    
    
    

</section>

<!-- contact section ends -->


    <!-- vanilla-tilt.js link  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vanilla-tilt/1.7.0/vanilla-tilt.min.js"></script>

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



    <!-- footer section  -->
 <br> <br> <br> <br>
    <div class="footer"> created by <span> SLiix </span> | all rights reserved! </div>














    <!-- javascript part  -->

    <!-- typed.js link  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.12/typed.min.js"></script>


    <!-- vanilla-tilt.js link  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vanilla-tilt/1.7.0/vanilla-tilt.min.js"></script>

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