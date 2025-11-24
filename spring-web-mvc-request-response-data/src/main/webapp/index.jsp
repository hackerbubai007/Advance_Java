<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookMyShow - Book Movie Tickets, Plays, Sports, Events & Cinemas near you</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f5f5f5;
            color: #333;
        }

        /* Header Styles */
        header {
            background-color: #333;
            color: white;
            padding: 15px 5%;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            color: #f84464;
        }

        .logo span {
            color: white;
        }

        .search-bar {
            flex-grow: 1;
            margin: 0 20px;
            position: relative;
        }

        .search-bar input {
            width: 100%;
            padding: 10px 15px;
            border-radius: 20px;
            border: none;
            outline: none;
            font-size: 14px;
        }

        .search-bar i {
            position: absolute;
            right: 15px;
            top: 10px;
            color: #777;
        }

        .nav-links {
            display: flex;
            gap: 20px;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .nav-links a:hover {
            color: #f84464;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url('https://images.unsplash.com/photo-1489599809505-f2e90ade7d63?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80');
            background-size: cover;
            background-position: center;
            color: white;
            padding: 80px 5%;
            text-align: center;
            margin-bottom: 30px;
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 18px;
            max-width: 700px;
            margin: 0 auto 30px;
        }

        .cta-button {
            background-color: #f84464;
            color: white;
            border: none;
            padding: 12px 30px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .cta-button:hover {
            background-color: #e63352;
        }

        /* Movies Section */
        .section-title {
            font-size: 24px;
            margin: 30px 5% 15px;
            color: #333;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .section-title a {
            color: #f84464;
            text-decoration: none;
            font-size: 14px;
        }

        .movies-container {
            display: flex;
            overflow-x: auto;
            padding: 0 5% 20px;
            gap: 20px;
            scrollbar-width: thin;
        }

        .movies-container::-webkit-scrollbar {
            height: 8px;
        }

        .movies-container::-webkit-scrollbar-thumb {
            background: #ccc;
            border-radius: 4px;
        }

        .movie-card {
            min-width: 200px;
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .movie-card:hover {
            transform: translateY(-5px);
        }

        .movie-poster {
            width: 100%;
            height: 280px;
            object-fit: cover;
        }

        .movie-info {
            padding: 15px;
        }

        .movie-title {
            font-weight: bold;
            margin-bottom: 5px;
            font-size: 16px;
        }

        .movie-genre {
            color: #777;
            font-size: 14px;
            margin-bottom: 10px;
        }

        .book-button {
            background-color: #f84464;
            color: white;
            border: none;
            width: 100%;
            padding: 8px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s;
        }

        .book-button:hover {
            background-color: #e63352;
        }

        /* Events Section */
        .events-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            padding: 0 5% 30px;
        }

        .event-card {
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .event-image {
            width: 100%;
            height: 180px;
            object-fit: cover;
        }

        .event-info {
            padding: 15px;
        }

        .event-title {
            font-weight: bold;
            margin-bottom: 5px;
            font-size: 18px;
        }

        .event-date {
            color: #f84464;
            font-size: 14px;
            margin-bottom: 10px;
        }

        .event-location {
            color: #777;
            font-size: 14px;
            margin-bottom: 15px;
        }

        /* Footer */
        footer {
            background-color: #333;
            color: white;
            padding: 40px 5% 20px;
        }

        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 30px;
            margin-bottom: 30px;
        }

        .footer-column h3 {
            color: #f84464;
            margin-bottom: 15px;
            font-size: 18px;
        }

        .footer-column ul {
            list-style: none;
        }

        .footer-column ul li {
            margin-bottom: 10px;
        }

        .footer-column ul li a {
            color: #ccc;
            text-decoration: none;
            font-size: 14px;
        }

        .footer-column ul li a:hover {
            color: white;
        }

        .social-icons {
            display: flex;
            gap: 15px;
            margin-top: 15px;
        }

        .social-icons a {
            color: white;
            font-size: 20px;
        }

        .copyright {
            text-align: center;
            padding-top: 20px;
            border-top: 1px solid #444;
            color: #aaa;
            font-size: 14px;
        }

        /* Profile Button */
        .profile-button {
            background-color: #f84464;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        .profile-button:hover {
            background-color: #e63352;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .header-container {
                flex-direction: column;
                gap: 15px;
            }
            
            .search-bar {
                margin: 10px 0;
                width: 100%;
            }
            
            .hero h1 {
                font-size: 36px;
            }
            
            .hero p {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="header-container">
            <div class="logo">Book<span>MyShow</span></div>
            <div class="search-bar">
                <input type="text" placeholder="Search for Movies, Events, Plays, Sports and Activities">
                <i class="fas fa-search"></i>
            </div>
            <div class="nav-links">
                <a href="#"><i class="fas fa-map-marker-alt"></i> Mumbai</a>
                <a href="#"><i class="fas fa-user"></i> Sign In</a>
                <a href="#"><i class="fas fa-bars"></i> Menu</a>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <h1>Unlock Exclusive Movie Experiences</h1>
        <p>Book tickets for the latest blockbusters, events, plays and sports in your city with just a few clicks.</p>
        <button class="cta-button">Explore Now</button>
    </section>

    <!-- Recommended Movies -->
    <div class="section-title">
        <h2>Recommended Movies</h2>
        <a href="#">See All</a>
    </div>
    <div class="movies-container">
        <div class="movie-card">
            <img src="https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80" alt="Movie Poster" class="movie-poster">
            <div class="movie-info">
                <div class="movie-title">Spider-Man: Across the Spider-Verse</div>
                <div class="movie-genre">Action, Adventure, Animation</div>
                <button class="book-button">Book Tickets</button>
            </div>
        </div>
        <div class="movie-card">
            <img src="https://images.unsplash.com/photo-1594909122845-11baa439b7bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80" alt="Movie Poster" class="movie-poster">
            <div class="movie-info">
                <div class="movie-title">Oppenheimer</div>
                <div class="movie-genre">Biography, Drama, History</div>
                <button class="book-button">Book Tickets</button>
            </div>
        </div>
        <div class="movie-card">
            <img src="https://images.unsplash.com/photo-1534447677768-be436bb09401?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1194&q=80" alt="Movie Poster" class="movie-poster">
            <div class="movie-info">
                <div class="movie-title">Mission: Impossible 7</div>
                <div class="movie-genre">Action, Adventure, Thriller</div>
                <button class="book-button">Book Tickets</button>
            </div>
        </div>
        <div class="movie-card">
            <img src="https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80" alt="Movie Poster" class="movie-poster">
            <div class="movie-info">
                <div class="movie-title">Barbie</div>
                <div class="movie-genre">Adventure, Comedy, Fantasy</div>
                <button class="book-button">Book Tickets</button>
            </div>
        </div>
        <div class="movie-card">
            <img src="https://images.unsplash.com/photo-1626814026160-2237a95fc5a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80" alt="Movie Poster" class="movie-poster">
            <div class="movie-info">
                <div class="movie-title">Fast X</div>
                <div class="movie-genre">Action, Crime, Thriller</div>
                <button class="book-button">Book Tickets</button>
            </div>
        </div>
    </div>

    <!-- Upcoming Events -->
    <div class="section-title">
        <h2>Upcoming Events</h2>
        <a href="#">See All</a>
    </div>
    <div class="events-container">
        <div class="event-card">
            <img src="https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80" alt="Concert" class="event-image">
            <div class="event-info">
                <div class="event-title">Ed Sheeran Live Concert</div>
                <div class="event-date">15 Oct 2023 | 7:00 PM</div>
                <div class="event-location">Mumbai, Mahalaxmi Racecourse</div>
                <button class="book-button">Book Now</button>
            </div>
        </div>
        <div class="event-card">
            <img src="https://images.unsplash.com/photo-1540039155733-5bb30b53aa14?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80" alt="Comedy Show" class="event-image">
            <div class="event-info">
                <div class="event-title">Stand-Up Comedy: Vir Das</div>
                <div class="event-date">22 Oct 2023 | 8:00 PM</div>
                <div class="event-location">Delhi, Siri Fort Auditorium</div>
                <button class="book-button">Book Now</button>
            </div>
        </div>
        <div class="event-card">
            <img src="https://images.unsplash.com/photo-1533174072545-7a4b6ad7a6c3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80" alt="Theatre Play" class="event-image">
            <div class="event-info">
                <div class="event-title">Theatre Play: The Mousetrap</div>
                <div class="event-date">5 Nov 2023 | 6:30 PM</div>
                <div class="event-location">Bangalore, Ranga Shankara</div>
                <button class="book-button">Book Now</button>
            </div>
        </div>
    </div>

    <!-- Profile Section -->
    <div style="text-align: center; padding: 40px 5%; background-color: white; margin: 30px 5%; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <h2 style="margin-bottom: 15px; color: #333;">Create Your Profile</h2>
        <p style="margin-bottom: 20px; color: #777;">Personalize your experience and get recommendations based on your preferences.</p>
        <a href="showProfilePage" class="profile-button">
            <i class="fas fa-user-plus"></i> Create Profile
        </a>
    </div>

    <!-- Footer -->
    <footer>
        <div class="footer-content">
            <div class="footer-column">
                <h3>BookMyShow</h3>
                <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Terms & Conditions</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Movies</h3>
                <ul>
                    <li><a href="#">Movies in Mumbai</a></li>
                    <li><a href="#">Movies in Delhi</a></li>
                    <li><a href="#">Movies in Bangalore</a></li>
                    <li><a href="#">Movies in Hyderabad</a></li>
                    <li><a href="#">Movies in Chennai</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Events</h3>
                <ul>
                    <li><a href="#">Plays</a></li>
                    <li><a href="#">Concerts</a></li>
                    <li><a href="#">Sports</a></li>
                    <li><a href="#">Comedy Shows</a></li>
                    <li><a href="#">Workshops</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Follow Us</h3>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
        </div>
        <div class="copyright">
            &copy; 2023 BookMyShow. All Rights Reserved.
        </div>
    </footer>

    <script>
        // Simple script for interactive elements
        document.addEventListener('DOMContentLoaded', function() {
            // Add click event to all book buttons
            const bookButtons = document.querySelectorAll('.book-button');
            bookButtons.forEach(button => {
                button.addEventListener('click', function() {
                    alert('Redirecting to booking page...');
                });
            });
            
            // Add click event to CTA button
            const ctaButton = document.querySelector('.cta-button');
            ctaButton.addEventListener('click', function() {
                alert('Exploring all movies and events!');
            });
        });
    </script>
</body>
</html>