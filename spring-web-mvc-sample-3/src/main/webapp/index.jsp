<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kodewala | Login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f5f5f5;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            width: 100%;
            max-width: 400px;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.08);
        }

        .logo {
            text-align: center;
            margin-bottom: 25px;
            font-size: 28px;
            font-weight: 700;
            color: #333;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #444;
            font-size: 1.4rem;
        }

        .form-group {
            margin-bottom: 18px;
        }

        label {
            display: block;
            color: #555;
            margin-bottom: 6px;
            font-size: 14px;
        }

        input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 6px;
            outline: none;
            font-size: 14px;
        }

        input:focus {
            border-color: #666;
        }

        .options {
            display: flex;
            justify-content: space-between;
            font-size: 14px;
            margin-bottom: 20px;
        }

        /* LOGIN BUTTON AS A LINK */
        .login-btn {
            display: block;
            width: 100%;
            text-align: center;
            padding: 12px;
            background: #333;
            color: #fff;
            border-radius: 6px;
            font-size: 15px;
            cursor: pointer;
            text-decoration: none;
            margin-bottom: 20px;
        }

        .login-btn:hover {
            background: #000;
        }

        .signup-link {
            text-align: center;
            font-size: 14px;
        }

        .signup-link a {
            color: #333;
            text-decoration: none;
            font-weight: 600;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <div class="container">

        <div class="logo">Kodewala</div>

        <h2>Login</h2>

        <!-- No form submit needed -->
        <div class="form-group">
            <label>Email Address</label>
            <input type="email" placeholder="Enter your email" required>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" placeholder="Enter your password" required>
        </div>

        <div class="options">
            <label><input type="checkbox"> Remember me</label>
            <a href="#" style="text-decoration:none; color:#333;">Forgot password?</a>
        </div>

        <!-- LOGIN BUTTON AS LINK -->
        <a href="login" class="login-btn">Login</a>

        <div class="signup-link">
            Don't have an account? <a href="#">Sign up</a>
        </div>

    </div>
</body>
</html>
