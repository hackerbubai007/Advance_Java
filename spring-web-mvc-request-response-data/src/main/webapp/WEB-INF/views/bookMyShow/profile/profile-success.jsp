<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Success - BookMyShow</title>
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
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Header Styles */
        header {
            background-color: #333;
            color: white;
            padding: 15px 5%;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
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

        /* Main Content */
        .main-container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 5%;
        }

        .success-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            padding: 40px;
            text-align: center;
        }

        .success-icon {
            background-color: #4CAF50;
            color: white;
            width: 80px;
            height: 80px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            font-size: 32px;
        }

        .success-title {
            color: #333;
            font-size: 28px;
            margin-bottom: 15px;
        }

        .success-message {
            color: #777;
            font-size: 16px;
            margin-bottom: 30px;
            line-height: 1.5;
        }

        .user-id-container {
            background-color: #f8f9fa;
            border-radius: 8px;
            padding: 20px;
            margin: 25px 0;
            border-left: 4px solid #f84464;
        }

        .user-id-label {
            color: #555;
            font-size: 16px;
            margin-bottom: 10px;
        }

        .user-id-value {
            color: #f84464;
            font-size: 24px;
            font-weight: bold;
        }

        .action-buttons {
            display: flex;
            gap: 15px;
            margin-top: 30px;
        }

        .btn {
            flex: 1;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            text-decoration: none;
            text-align: center;
            transition: all 0.3s;
        }

        .btn-primary {
            background-color: #f84464;
            color: white;
            border: none;
        }

        .btn-primary:hover {
            background-color: #e63352;
        }

        .btn-secondary {
            background-color: #f8f9fa;
            color: #333;
            border: 1px solid #ddd;
        }

        .btn-secondary:hover {
            background-color: #e9ecef;
        }

        /* Footer */
        footer {
            background-color: #333;
            color: white;
            padding: 20px 5%;
            margin-top: auto;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .footer-links {
            display: flex;
            gap: 15px;
        }

        .footer-links a {
            color: #ccc;
            text-decoration: none;
            font-size: 14px;
        }

        .footer-links a:hover {
            color: white;
        }

        .copyright {
            color: #aaa;
            font-size: 14px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .header-container {
                flex-direction: column;
                gap: 15px;
            }
            
            .success-container {
                padding: 30px 20px;
            }
            
            .action-buttons {
                flex-direction: column;
            }
            
            .footer-content {
                flex-direction: column;
                gap: 15px;
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="header-container">
            <div class="logo">Book<span>MyShow</span></div>
            <div class="nav-links">
                <a href="#"><i class="fas fa-home"></i> Home</a>
                <a href="#"><i class="fas fa-film"></i> Movies</a>
                <a href="#"><i class="fas fa-ticket-alt"></i> Events</a>
                <a href="#"><i class="fas fa-user"></i> Profile</a>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="main-container">
        <div class="success-container">
            <div class="success-icon">
                <i class="fas fa-check"></i>
            </div>
            <h1 class="success-title">Login Successful!</h1>
            <p class="success-message">Welcome back to BookMyShow. You have successfully logged into your account.</p>
            
            <div class="user-id-container">
                <div class="user-id-label">Your User ID is:</div>
                <div class="user-id-value">${userID}</div>
            </div>
            
            <p class="success-message">You can now book tickets for movies, events, and more with your account.</p>
            
            <div class="action-buttons">
                <a href="#" class="btn btn-primary">
                    <i class="fas fa-film"></i> Browse Movies
                </a>
                <a href="#" class="btn btn-secondary">
                    <i class="fas fa-ticket-alt"></i> My Bookings
                </a>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <div class="footer-content">
            <div class="footer-links">
                <a href="#">About Us</a>
                <a href="#">Contact Us</a>
                <a href="#">FAQ</a>
                <a href="#">Terms & Conditions</a>
                <a href="#">Privacy Policy</a>
            </div>
            <div class="copyright">
                &copy; 2023 BookMyShow. All Rights Reserved.
            </div>
        </div>
    </footer>

    <script>
        // Simple animation for the success page
        document.addEventListener('DOMContentLoaded', function() {
            // Add a subtle animation to the success container
            const successContainer = document.querySelector('.success-container');
            successContainer.style.opacity = '0';
            successContainer.style.transform = 'translateY(20px)';
            
            setTimeout(() => {
                successContainer.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
                successContainer.style.opacity = '1';
                successContainer.style.transform = 'translateY(0)';
            }, 100);
            
            // Simulate a user ID if not provided (for demonstration)
            const userIdElement = document.querySelector('.user-id-value');
            if (userIdElement.textContent === '${userID}') {
                userIdElement.textContent = 'BMS' + Math.floor(100000 + Math.random() * 900000);
            }
        });
    </script>
</body>
</html>