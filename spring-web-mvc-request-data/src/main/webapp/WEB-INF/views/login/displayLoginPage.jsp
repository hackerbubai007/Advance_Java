<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Secure Login - E-Shop</title>

<style>
    /* CSS Reset and Base Styles */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    :root {
        --primary-color: #2563eb;
        --primary-dark: #1d4ed8;
        --secondary-color: #0ea5e9;
        --success-color: #10b981;
        --error-color: #ef4444;
        --warning-color: #f59e0b;
        --text-primary: #1f2937;
        --text-secondary: #6b7280;
        --bg-light: #f9fafb;
        --border-color: #d1d5db;
        --shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
        --shadow-lg: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
    }

    body {
        font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 20px;
        line-height: 1.5;
        color: var(--text-primary);
    }

    .login-container {
        background: white;
        padding: 2.5rem;
        border-radius: 16px;
        width: 100%;
        max-width: 420px;
        box-shadow: var(--shadow-lg);
        text-align: center;
        position: relative;
    }

    .login-header {
        margin-bottom: 2rem;
    }

    .login-header h1 {
        color: var(--primary-color);
        font-size: 1.875rem;
        font-weight: 700;
        margin-bottom: 0.5rem;
    }

    .login-header p {
        color: var(--text-secondary);
        font-size: 1rem;
    }

    .form-group {
        margin-bottom: 1.25rem;
        text-align: left;
    }

    .form-label {
        display: block;
        margin-bottom: 0.5rem;
        font-weight: 500;
        color: var(--text-primary);
    }

    .form-input {
        width: 100%;
        padding: 0.75rem 1rem;
        border: 1px solid var(--border-color);
        border-radius: 8px;
        font-size: 1rem;
        transition: all 0.2s;
        background-color: var(--bg-light);
    }

    .form-input:focus {
        outline: none;
        border-color: var(--primary-color);
        box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.1);
        background-color: white;
    }

    .form-input.error {
        border-color: var(--error-color);
    }

    .error-message {
        color: var(--error-color);
        font-size: 0.875rem;
        margin-top: 0.25rem;
        display: none;
    }

    .password-container {
        position: relative;
    }

    .toggle-password {
        position: absolute;
        right: 12px;
        top: 50%;
        transform: translateY(-50%);
        background: none;
        border: none;
        color: var(--text-secondary);
        cursor: pointer;
        font-size: 0.875rem;
    }

    .form-options {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 1.5rem;
        font-size: 0.875rem;
    }

    .remember-me {
        display: flex;
        align-items: center;
    }

    .remember-me input {
        margin-right: 0.5rem;
    }

    .forgot-password {
        color: var(--primary-color);
        text-decoration: none;
    }

    .forgot-password:hover {
        text-decoration: underline;
    }

    .btn-login {
        background: var(--primary-color);
        border: none;
        padding: 0.875rem;
        color: white;
        width: 100%;
        font-size: 1rem;
        font-weight: 600;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.2s;
        margin-bottom: 1.5rem;
    }

    .btn-login:hover {
        background: var(--primary-dark);
    }

    .btn-login:active {
        transform: translateY(1px);
    }

    .btn-login:disabled {
        background-color: var(--border-color);
        cursor: not-allowed;
    }

    .divider {
        display: flex;
        align-items: center;
        margin: 1.5rem 0;
        color: var(--text-secondary);
        font-size: 0.875rem;
    }

    .divider::before,
    .divider::after {
        content: "";
        flex: 1;
        border-bottom: 1px solid var(--border-color);
    }

    .divider::before {
        margin-right: 0.75rem;
    }

    .divider::after {
        margin-left: 0.75rem;
    }

    .social-login {
        display: flex;
        gap: 1rem;
        margin-bottom: 1.5rem;
    }

    .btn-social {
        flex: 1;
        padding: 0.75rem;
        border: 1px solid var(--border-color);
        border-radius: 8px;
        background: white;
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 0.5rem;
        cursor: pointer;
        transition: all 0.2s;
        font-weight: 500;
    }

    .btn-social:hover {
        background: var(--bg-light);
    }

    .btn-google {
        color: #db4437;
    }

    .btn-facebook {
        color: #4267B2;
    }

    .signup-link {
        font-size: 0.875rem;
        color: var(--text-secondary);
    }

    .signup-link a {
        color: var(--primary-color);
        text-decoration: none;
        font-weight: 500;
    }

    .signup-link a:hover {
        text-decoration: underline;
    }

    .security-notice {
        background-color: #fef3c7;
        border: 1px solid #fcd34d;
        border-radius: 6px;
        padding: 0.75rem;
        margin-top: 1.5rem;
        font-size: 0.75rem;
        color: #92400e;
        text-align: left;
    }

    .security-notice h3 {
        font-size: 0.75rem;
        margin-bottom: 0.25rem;
        display: flex;
        align-items: center;
        gap: 0.25rem;
    }

    /* Responsive adjustments */
    @media (max-width: 480px) {
        .login-container {
            padding: 1.5rem;
        }
        
        .form-options {
            flex-direction: column;
            align-items: flex-start;
            gap: 0.75rem;
        }
        
        .social-login {
            flex-direction: column;
        }
    }
</style>
</head>

<body>

    <div class="login-container">
        <div class="login-header">
            <h1>Welcome Back</h1>
            <p>Sign in to your E-Shop account</p>
        </div>

        <form action="validateLogin" method="post" id="loginForm" autocomplete="on">
            <!-- CSRF Token would typically be added here in a real application -->
            <!-- <input type="hidden" name="csrfToken" value="<%= session.getAttribute("csrfToken") %>"> -->
            
            <div class="form-group">
                <label for="userName" class="form-label">Username or Email</label>
                <input type="text" id="userName" name="userName" class="form-input" 
                       placeholder="Enter your username or email" required autocomplete="username">
                <div class="error-message" id="usernameError">Please enter a valid username or email</div>
            </div>

            <div class="form-group">
                <label for="password" class="form-label">Password</label>
                <div class="password-container">
                    <input type="password" id="password" name="password" class="form-input" 
                           placeholder="Enter your password" required autocomplete="current-password">
                    <button type="button" class="toggle-password" aria-label="Show password">Show</button>
                </div>
                <div class="error-message" id="passwordError">Please enter your password</div>
            </div>

            <div class="form-options">
                <label class="remember-me">
                    <input type="checkbox" name="remember" value="true"> Remember me
                </label>
                <a href="#" class="forgot-password">Forgot password?</a>
            </div>

            <button type="submit" class="btn-login">Sign In</button>
        </form>

        <div class="divider">or continue with</div>

        <div class="social-login">
            <button type="button" class="btn-social btn-google">
                <svg width="18" height="18" viewBox="0 0 24 24">
                    <path fill="currentColor" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
                    <path fill="currentColor" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
                    <path fill="currentColor" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
                    <path fill="currentColor" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
                </svg>
                Google
            </button>
            <button type="button" class="btn-social btn-facebook">
                <svg width="18" height="18" viewBox="0 0 24 24">
                    <path fill="currentColor" d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/>
                </svg>
                Facebook
            </button>
        </div>

        <p class="signup-link">
            Don't have an account? <a href="#">Sign up</a>
        </p>

        <div class="security-notice">
            <h3>
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/>
                </svg>
                Security Notice
            </h3>
            <p>We take your security seriously. Your login information is encrypted and secure.</p>
        </div>
    </div>

    <script>
        // Password visibility toggle
        document.querySelector('.toggle-password').addEventListener('click', function() {
            const passwordInput = document.getElementById('password');
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            this.textContent = type === 'password' ? 'Show' : 'Hide';
            this.setAttribute('aria-label', type === 'password' ? 'Show password' : 'Hide password');
        });

        // Basic form validation (would be enhanced with server-side validation)
        document.getElementById('loginForm').addEventListener('submit', function(e) {
            let isValid = true;
            
            // Username validation
            const username = document.getElementById('userName').value.trim();
            if (!username) {
                document.getElementById('usernameError').style.display = 'block';
                isValid = false;
            } else {
                document.getElementById('usernameError').style.display = 'none';
            }
            
            // Password validation
            const password = document.getElementById('password').value;
            if (!password) {
                document.getElementById('passwordError').style.display = 'block';
                isValid = false;
            } else {
                document.getElementById('passwordError').style.display = 'none';
            }
            
            if (!isValid) {
                e.preventDefault();
            }
        });
    </script>
</body>
</html>