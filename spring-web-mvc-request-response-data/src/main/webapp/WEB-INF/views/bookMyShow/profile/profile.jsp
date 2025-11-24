<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Profile - BookMyShow</title>
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

        .profile-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            padding: 40px;
        }

        .profile-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .profile-header h1 {
            color: #333;
            font-size: 28px;
            margin-bottom: 10px;
        }

        .profile-header p {
            color: #777;
            font-size: 16px;
        }

        .profile-icon {
            background-color: #f84464;
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

        /* Form Styles */
        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #555;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus {
            border-color: #f84464;
            outline: none;
            box-shadow: 0 0 0 2px rgba(248, 68, 100, 0.2);
        }

        input[type="submit"] {
            background-color: #f84464;
            color: white;
            border: none;
            padding: 14px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-weight: 600;
            transition: background-color 0.3s;
            margin-top: 10px;
        }

        input[type="submit"]:hover {
            background-color: #e63352;
        }

        .form-footer {
            text-align: center;
            margin-top: 20px;
            color: #777;
            font-size: 14px;
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
            
            .profile-container {
                padding: 30px 20px;
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
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="main-container">
        <div class="profile-container">
            <div class="profile-header">
                <div class="profile-icon">
                    <i class="fas fa-user-plus"></i>
                </div>
                <h1>Create Your Profile</h1>
                <p>Join BookMyShow to personalize your experience</p>
            </div>
            
            <form action="createProfile" method="post">
                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <input type="text" id="firstName" name="firstName" required>
                </div>

                <div class="form-group">
                    <label for="lastName">Last Name</label>
                    <input type="text" id="lastName" name="lastName" required>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" id="email" name="email" required>
                </div>

                <div class="form-group">
                    <label for="mobile">Mobile</label>
                    <input type="text" id="mobile" name="mobile" required>
                </div>
                
                <div class="form-group">
                    <label for="pincode">Pin Code</label>
                    <input type="text" id="pincode" name="pincode" required>
                </div>

                <input type="submit" value="Create Profile">
                
                <div class="form-footer">
                    By creating a profile, you agree to our Terms of Service and Privacy Policy
                </div>
            </form>
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
        // Simple form validation and enhancement
        document.addEventListener('DOMContentLoaded', function() {
            const form = document.querySelector('form');
            
            form.addEventListener('submit', function(e) {
                // Get form values
                const firstName = document.getElementById('firstName').value;
                const lastName = document.getElementById('lastName').value;
                const email = document.getElementById('email').value;
                const mobile = document.getElementById('mobile').value;
                const pincode = document.getElementById('pincode').value;
                
                // Simple validation
                if (!firstName || !lastName || !email || !mobile || !pincode) {
                    alert('Please fill in all fields');
                    e.preventDefault();
                    return;
                }
                
                // Email validation
                const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (!emailRegex.test(email)) {
                    alert('Please enter a valid email address');
                    e.preventDefault();
                    return;
                }
                
                // Mobile validation (simple)
                const mobileRegex = /^\d{10}$/;
                if (!mobileRegex.test(mobile)) {
                    alert('Please enter a valid 10-digit mobile number');
                    e.preventDefault();
                    return;
                }
                
                // Pincode validation (simple)
                const pincodeRegex = /^\d{6}$/;
                if (!pincodeRegex.test(pincode)) {
                    alert('Please enter a valid 6-digit pincode');
                    e.preventDefault();
                    return;
                }
                
                // If all validations pass, show success message
                alert('Profile created successfully!');
            });
        });
    </script>
</body>
</html>