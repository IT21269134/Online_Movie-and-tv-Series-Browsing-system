<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
    
   * {
    margin: 0;
}

body {
    font-family: "Roboto", sans-serif;
}

.navbar {
    width: 100%;
    height: 50px;
    background-color: black;
    position: sticky;
    top: 0;
}

.navbar-container {
    display: flex;
    align-items: center;
    padding: 0 50px;
    height: 100%;
    color: white;
    font-family: "Sen", sans-serif;
}

.logo-container {
    flex: 1;
}

.logo {
    font-size: 30px;
    color: #d41212;
}

.menu-container {
    flex: 6;
}

.menu-list {
    display: flex;
    list-style: none;
}

.menu-list-item {
    margin-right: 30px;
}

.menu-list-item.active {
    font-weight: bold;
}

.profile-container {
    flex: 2;
    display: flex;
    align-items: center;
    justify-content: flex-end;
}

.profile-text-container {
    margin: 0 20px;
}

.profile-picture {
    width: 32px;
    height: 32px;
    border-radius: 50%;
    object-fit: cover;
}

.toggle {
    width: 40px;
    height: 20px;
    background-color: white;
    border-radius: 30px;
    display: flex;
    align-items: center;
    justify-content: space-around;
    position: relative;
}

.toggle-icon {
    color: goldenrod;
}

.toggle-ball {
    width: 18px;
    height: 18px;
    background-color: black;
    position: absolute;
    right: 1px;
    border-radius: 50%;
    cursor: pointer;
    transition: 1s ease all;
}

.sidebar {
    width: 50px;
    height: 100%;
    background-color: black;
    position: fixed;
    top: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding-top: 60px;
}

.left-menu-icon {
    color: white;
    font-size: 20px;
    margin-bottom: 40px;
}

.container {
    background-color: #151515;
    min-height: calc(100vh - 50px);
    color: white;
}

.content-container {
    margin-left: 50px;
}

.featured-content {
    height: 50vh;
    padding: 50px;
}

.featured-title {
    width: 200px;
}

.featured-desc {
    width: 500px;
    color: lightgray;
    margin: 30px 0;
}

.featured-button {
    background-color: #c00303b0;
    color: white;
    padding: 10px 20px;
    border-radius: 0px;
    border: 9px;
    outline: none;
    font-weight: bold;
}

.movie-list-container {
    padding: 0 20px;
}

.movie-list-wrapper {
    position: relative;
    overflow: hidden;
}

.movie-list {
    display: flex;
    align-items: center;
    height: 300px;
    transform: translateX(0);
    transition: all 1s ease-in-out;
}

.movie-list-item {
    margin-right: 30px;
    position: relative;
}

.movie-list-item:hover .movie-list-item-img {
    transform: scale(1.2);
    margin: 0 30px;
    opacity: 0.5;
}

.movie-list-item:hover .movie-list-item-title,
.movie-list-item:hover .movie-list-item-desc,
.movie-list-item:hover .movie-list-item-button {
    opacity: 1;
}

.movie-list-item-img {
    transition: all 1s ease-in-out;
    width: 250px;
    height: 310px;
    object-fit: cover;
    border-radius: 20px;
}

.movie-list-item-title {
    background-color: #333;
    padding: 0 10px;
    font-size: 32px;
    font-weight: bold;
    position: absolute;
    top: 10%;
    left: 50px;
    opacity: 0;
    transition: 1s all ease-in-out;
}

.movie-list-item-desc {
    background-color: #333;
    padding: 10px;
    font-size: 14px;
    position: absolute;
    top: 30%;
    left: 50px;
    width: 230px;
    opacity: 0;
    transition: 1s all ease-in-out;
}

.movie-list-item-button {
    padding: 10px;
    background-color: #4dbf00;
    color: white;
    border-radius: 10px;
    outline: none;
    border: none;
    cursor: pointer;
    position: absolute;
    bottom: 20px;
    left: 50px;
    opacity: 0;
    transition: 1s all ease-in-out;
}

.arrow {
    font-size: 120px;
    position: absolute;
    top: 90px;
    right: 0;
    color: lightgray;
    opacity: 0.5;
    cursor: pointer;
}

.container.active {
    background-color: white;
}

.movie-list-title.active {
    color: black;
}

.navbar-container.active {
    background-color: white;
    color: black;
}

.sidebar.active {
    background-color: white;
}

.left-menu-icon.active {
    color: black;
}

.toggle.active {
    background-color: black;
}

.toggle-ball.active {
    background-color: white;
    transform: translateX(-20px);
}

@media only screen and (max-width: 940px) {
    .menu-container {
        display: none;
    }
}






    </style>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&family=Sen:wght@400;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
    <title>Home</title>
</head>

<body>
    <div class="navbar">
        <div class="navbar-container">
            <div class="logo-container">
                <h1 class="logo">SLiiX</h1>
            </div>
            <div class="menu-container">
                <ul class="menu-list">

                    <li class="menu-list-item active">Home</li>

                      <a href="loginU.jsp">
                        <button class="featured-button">
                          <li class="menu-list-item">User</li>
                        </button>
                     </a>

                    <a href="Reviewer_Login.jsp">
                        <button class="featured-button">
                         <li class="menu-list-item">Reveiwer</li>
                         </button>
                    </a>
                    <a href="adminLogin.jsp">
                        <button class="featured-button">
                        <li class="menu-list-item">Admin</li>
                        </button>
                    </a>

                    <a href="login.jsp">
                        <button class="featured-button">
                        <li class="menu-list-item">Movie Agent</li>
                       </button>
                    </a>

                </ul>
            </div>
           
           <!--  <div class="profile-container">
                 <img class="profile-picture" src="images/profile.jpg" alt="">
                <div class="profile-text-container">
                    <span class="profile-text">Profile</span>
                    <i class="fas fa-caret-down"></i>
                </div>
                
            </div>-->
             
            
            

            
        </div>
    </div>
    <div class="sidebar">

    </div>
    <div class="container">
        <div class="content-container">
            <div class="featured-content" style="background: linear-gradient(to bottom, rgba(0,0,0,0), #151515), url('images/topgun.jpg');">
                <img class="featured-title" src="images/tg1.png" alt="">
                <p class="featured-desc"><b>After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN's elite graduates on a mission that demands the ultimate sacrifice from those chosen to fly it.</b></p>
                <a href="https://www.youtube.com/watch?v=giXco2jaZ_4">
                    <button class="featured-button">WATCH</button>
                </a>


            </div>



            <div class="movie-list-container">
                <h1 class="movie-list-title">NEW RELEASES TV Series</h1>
                <div class="movie-list-wrapper">
                    <div class="movie-list">
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/kop.jfif" alt="">
                            <span class="movie-list-item-title">House of dragons</span>
                            <p class="movie-list-item-desc">The reign of House Targaryen begins with this prequel to popular HBO series "Game of Thrones.</p>
                            <a href="https://www.youtube.com/watch?v=DotnJ7tTA34">
                                <button class="movie-list-item-button">Watch</button>
                            </a>
                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/kk.jpg" alt="">
                            <span class="movie-list-item-title">Cobra Kai</span>

                            <p class="movie-list-item-desc">Cobra Kai is an American martial arts comedy-drama television series </p>
                            <a href="https://www.youtube.com/watch?v=sUR9PYwlNaA">
                                <button class="movie-list-item-button">Watch</button>
                            </a>
                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/stranger.jpg" alt="">
                            <span class="movie-list-item-title">Stranger things</span>
                            <p class="movie-list-item-desc">In 1980s Indiana, a group of young friends witness supernatural forces and secret government exploits.</p>
                            <a href="https://www.youtube.com/watch?v=yQEondeGvKo">
                                <button class="movie-list-item-button">Watch</button>
                            </a>
                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/tomm.jpeg" alt="">
                            <span class="movie-list-item-title">Tommorow</span>
                            <p class="movie-list-item-desc">Made half-human and half-spirit by accident, a young man is employed by grim reapers to carry out special missions.</p>
                            <a href="https://www.youtube.com/watch?v=zhmxDgBxGRk">
                                <button class="movie-list-item-button">Watch</button>
                            </a>
                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/mb.jpg" alt="">
                            <span class="movie-list-item-title">Man vs Bee</span>
                            <p class="movie-list-item-desc">A homeless man looking for work is mistaken by a business woman for her new house sitter. </p>
                            <a href="https://www.youtube.com/watch?v=YQ1vN_91KO0">
                                <button class="movie-list-item-button">Watch</button>
                            </a>
                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/dham.jpg" alt="">
                            <span class="movie-list-item-title">Dahmer</span>
                            <p class="movie-list-item-desc">The story of one of the most notorious serial killers in the United States, largely told from the points of view of his victims.</p>
                            <a href="https://www.youtube.com/watch?v=NVHHs-xllqo">
                                <button class="movie-list-item-button">Watch</button>
                            </a>
                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/moon.jpg" alt="">
                            <span class="movie-list-item-title">Moon Knight</span>
                            <p class="movie-list-item-desc">Steven Grant and mercenary Marc Spector investigate the mysteries of the Egyptian gods from inside the same body</p>
                            <a href="https://www.youtube.com/watch?v=x7Krla_UxRg">
                                <button class="movie-list-item-button">Watch</button>
                            </a>
                        </div>
                    </div>
                    <i class="fas fa-chevron-right arrow"></i>
                </div>
            </div>
            <br>
            <div class="movie-list-container">
                <h1 class="movie-list-title">NEW RELEASES Movies</h1>
                <div class="movie-list-wrapper">
                    <div class="movie-list">
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/vki.jpg" alt="">
                            <span class="movie-list-item-title">Vikram Vedha</span>
                            <p class="movie-list-item-desc">Vikram Vedha is a 2022 Indian Hindi-language neo-noir action thriller film written-directed by Pushkar–Gayathri</p>
                            <a href="https://www.youtube.com/watch?v=hpwnlr-ZHB0">
                                <button class="movie-list-item-button">Watch</button>
                            </a>
                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/luck.jpg" alt="">
                            <span class="movie-list-item-title">Luck</span>
                            <p class="movie-list-item-desc">The story of Sam Greenfield, the unluckiest person in the world. Suddenly finding herself in the never-before-seen Land of Luck, she must unite with the magical creatures there to turn her luck around.</p>
                            <a href="https://www.youtube.com/watch?v=xSG5UX0EQVg">
                                <button class="movie-list-item-button">Watch</button>
                            </a>
                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/gm.jpg" alt="">
                            <span class="movie-list-item-title">Gray man</span>
                            <p class="movie-list-item-desc">When the CIA's top asset his identity known to no one uncovers agency secrets, he triggers a global hunt by assassins set loose by his ex-colleague.</p>
                            <a href="https://www.youtube.com/watch?v=BmllggGO4pM">
                                <button class="movie-list-item-button">Watch</button>
                            </a>
                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/ls.jfif" alt="">
                            <span class="movie-list-item-title">Lost City</span>
                            <p class="movie-list-item-desc">Reclusive author Loretta Sage writes about exotic places in her popular adventure novels that feature a handsome cover model named Alan.</p>
                            <a href="https://www.youtube.com/watch?v=nfKO9rYDmE8">
                                <button class="movie-list-item-button">Watch</button>
                            </a>
                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/rr.jpg" alt="">
                            <span class="movie-list-item-title">Ranga Ranga Vaibhavanga</span>
                            <p class="movie-list-item-desc">Movie starring Panja Vaisshnav Tej, Ketika Sharma and directed by Gireesaaya</p>
                            <a href="https://www.youtube.com/watch?v=J8CvvGRTziQ">
                                <button class="movie-list-item-button">Watch</button>
                            </a>
                        </div>

                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/man.jpg" alt="">
                            <span class="movie-list-item-title">The Man from Toronto</span>
                            <p class="movie-list-item-desc">A case of mistaken identity forces a bumbling entrepreneur to team up with a notorious assassin in hopes of staying alive.</p>
                            <button class="movie-list-item-button">Watch</button>
                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/10.jpg" alt="">
                            <span class="movie-list-item-title">Due Date</span>
                            <p class="movie-list-item-desc">A Old hit movie recap</p>
                            <button class="movie-list-item-button">Watch</button>
                        </div>
                    </div>
                    <br>
                    <br>
                    <i class="fas fa-chevron-right arrow"></i>
                </div>
            </div>
            <br>
            <div class="featured-content" style="background: linear-gradient(to bottom, rgba(0,0,0,0), #151515), url('images/f-2.jpg');">
                <img class="featured-title" src="images/f-t-2.png" alt="">
                <p class="featured-desc"><b>When two children go missing in a small German town, its sinful past is exposed along with the double lives and fractured relationships that exist among four families as they search for the kids. The mystery-drama series introduces an
                    intricate puzzle filled with twists that includes a web of curious characters, all of whom have a connection to the town's troubled history -- whether they know it or not. The story includes supernatural elements that tie back to the
                    same town in 1986. "Dark" represents the first German original series produced for Netflix</b></p>
                <a href="https://www.youtube.com/watch?v=cq2iTHoLrt0">
                    <button class="featured-button">WATCH</button>
                </a>
            </div>
            <div class="movie-list-container">
                <h1 class="movie-list-title">Fan Favorites</h1>
                <div class="movie-list-wrapper">
                    <div class="movie-list">
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/titanic.jpg" alt="">
                            <span class="movie-list-item-title">Titanic</span>
                            <p class="movie-list-item-desc">Seventeen-year-old Rose hails from an aristocratic family and is set to be married. When she boards the Titanic, she meets Jack Dawson, an artist, and falls in love with him</p>

                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/avac.jpg" alt="">
                            <span class="movie-list-item-title">Avatar</span>
                            <p class="movie-list-item-desc">Avatar is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron and starring Sam Worthington</p>

                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/mma.jpg" alt="">
                            <span class="movie-list-item-title">Matrix</span>
                            <p class="movie-list-item-desc">The Matrix is an American media franchise consisting of four feature films, beginning with The Matrix and continuing with three sequels, The Matrix Reloaded, The Matrix Revolutions.</p>

                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/gof.jpg" alt="">
                            <span class="movie-list-item-title">Harry potter 4</span>
                            <p class="movie-list-item-desc">When Harry gets chosen as the fourth participant in the inter-school Triwizard Tournament,</p>

                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/smp.jfif" alt="">
                            <span class="movie-list-item-title">Spider-Man™</span>
                            <p class="movie-list-item-desc">Peter Parker, the beloved superhero Spider-Man, faces four destructive elemental monsters while on holiday in Europe</p>

                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/5.jpg" alt="">
                            <span class="movie-list-item-title">Avengers</span>
                            <p class="movie-list-item-desc">After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.</p>

                        </div>
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="images/poc.jpg" alt="">
                            <span class="movie-list-item-title">pirates of the caribbean </span>
                            <p class="movie-list-item-desc">A blacksmith joins forces with Captain Jack Sparrow, a pirate, in a bid to free the love of his life from Jack's associates, who kidnapped her suspecting she has the medallion.</p>

                        </div>
                    </div>
                    <i class="fas fa-chevron-right arrow"></i>
                </div>
            </div>
            <br>
            <br>
            <br>

            <i class="fas fa-chevron-right arrow"></i>
        </div>
    </div>
    </div>
    </div>
    
    <script src="js/app.js">
    
    const arrows = document.querySelectorAll(".arrow");
    const movieLists = document.querySelectorAll(".movie-list");

    arrows.forEach((arrow, i) => {
      const itemNumber = movieLists[i].querySelectorAll("img").length;
      let clickCounter = 0;
      arrow.addEventListener("click", () => {
        const ratio = Math.floor(window.innerWidth / 270);
        clickCounter++;
        if (itemNumber - (4 + clickCounter) + (4 - ratio) >= 0) {
          movieLists[i].style.transform = `translateX(${
            movieLists[i].computedStyleMap().get("transform")[0].x.value - 300
          }px)`;
        } else {
          movieLists[i].style.transform = "translateX(0)";
          clickCounter = 0;
        }
      });

      console.log(Math.floor(window.innerWidth / 270));
    });

    //TOGGLE

    const ball = document.querySelector(".toggle-ball");
    const items = document.querySelectorAll(
      ".container,.movie-list-title,.navbar-container,.sidebar,.left-menu-icon,.toggle"
    );

    ball.addEventListener("click", () => {
      items.forEach((item) => {
        item.classList.toggle("active");
      });
      ball.classList.toggle("active");
    });

    
    </script>
    
    
    <footer>
        <center>
            <p><b><i> Sriliix 2022 OOP Project Home </i></b></p>
        </center>
    </footer>
</body>

</html>