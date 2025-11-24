<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beautiful Login Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        
        .container {
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
            padding: 50px 40px;
            text-align: center;
            max-width: 500px;
            width: 100%;
            animation: fadeIn 1s ease-out;
            position: relative;
            overflow: hidden;
        }
        
        .container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 5px;
            background: linear-gradient(90deg, #ff7eb3, #ff758c, #ff7eb3);
        }
        
        h1 {
            font-size: 3.5rem;
            margin-bottom: 10px;
            color: #2c3e50;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
            animation: textGlow 3s infinite alternate;
        }
        
        .subtitle {
            font-size: 1.2rem;
            color: #7f8c8d;
            margin-bottom: 30px;
            line-height: 1.6;
        }
        
        .login-card {
            background: white;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            margin: 30px 0;
            transition: transform 0.3s ease;
        }
        
        .login-card:hover {
            transform: translateY(-5px);
        }
        
        .login-title {
            font-size: 1.8rem;
            color: #2c3e50;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }
        
        .login-button {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            background: linear-gradient(135deg, #6e8efb, #a777e3);
            color: white;
            padding: 15px 35px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            font-size: 1.2rem;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            transition: all 0.3s ease;
            width: 100%;
            max-width: 250px;
        }
        
        .login-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            background: linear-gradient(135deg, #5d7df0, #9666d8);
        }
        
        .features {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin: 30px 0;
        }
        
        .feature {
            flex: 1;
            min-width: 120px;
            margin: 10px;
            padding: 15px;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        
        .feature:hover {
            transform: translateY(-5px);
        }
        
        .feature i {
            font-size: 2rem;
            margin-bottom: 10px;
            color: #6e8efb;
        }
        
        .feature h3 {
            font-size: 1.1rem;
            margin-bottom: 8px;
            color: #2c3e50;
        }
        
        .feature p {
            font-size: 0.9rem;
            color: #7f8c8d;
        }
        
        footer {
            margin-top: 30px;
            color: #7f8c8d;
            text-align: center;
            font-size: 0.9rem;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        @keyframes textGlow {
            from { text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1); }
            to { text-shadow: 2px 2px 10px rgba(110, 142, 251, 0.3); }
        }
        
        @media (max-width: 600px) {
            h1 {
                font-size: 2.5rem;
            }
            
            .container {
                padding: 30px 20px;
            }
            
            .features {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to --THE RMM Mall--!</h1>
        <p class="subtitle">Welcome to our beautiful login page. Experience a modern design with smooth animations and responsive layout.</p>
        
        <div class="login-card">
            <h2 class="login-title"><i class="fas fa-user-circle"></i> Account Access</h2>
            <p style="margin-bottom: 20px; color: #7f8c8d;">Click the button below to access your account</p>
            <a href="login" class="login-button">
                <i class="fas fa-sign-in-alt"></i> Login
            </a>
        </div>
        
        <div class="features">
            <div class="feature">
                <i class="fas fa-shield-alt"></i>
                <h3>Secure</h3>
                <p>Protected login</p>
            </div>
            <div class="feature">
                <i class="fas fa-mobile-alt"></i>
                <h3>Responsive</h3>
                <p>Works on all devices</p>
            </div>
            <div class="feature">
                <i class="fas fa-bolt"></i>
                <h3>Fast</h3>
                <p>Quick access</p>
            </div>
        </div>
        
        <footer>
            <p>Beautiful Login Page &copy; 2023</p>
        </footer>
    </div>
</body>
</html>