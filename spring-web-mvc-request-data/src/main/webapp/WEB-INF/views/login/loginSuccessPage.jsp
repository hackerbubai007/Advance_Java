<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Successful - E-Shop</title>

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
        --success-light: #d1fae5;
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

    .success-container {
        background: white;
        padding: 2.5rem;
        border-radius: 16px;
        width: 100%;
        max-width: 480px;
        box-shadow: var(--shadow-lg);
        text-align: center;
        position: relative;
    }

    .success-icon {
        width: 80px;
        height: 80px;
        background-color: var(--success-light);
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 1.5rem;
    }

    .success-icon svg {
        width: 40px;
        height: 40px;
        color: var(--success-color);
    }

    .success-header h1 {
        color: var(--success-color);
        font-size: 1.875rem;
        font-weight: 700;
        margin-bottom: 0.5rem;
    }

    .success-header p {
        color: var(--text-secondary);
        font-size: 1rem;
        margin-bottom: 2rem;
    }

    .user-info {
        background-color: var(--bg-light);
        border-radius: 8px;
        padding: 1.25rem;
        margin-bottom: 2rem;
        text-align: left;
    }

    .user-info h3 {
        font-size: 1rem;
        margin-bottom: 0.75rem;
        color: var(--text-primary);
        display: flex;
        align-items: center;
        gap: 0.5rem;
    }

    .user-info h3 svg {
        width: 18px;
        height: 18px;
        color: var(--primary-color);
    }

    .user-details {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 0.75rem;
    }

    .detail-item {
        display: flex;
        flex-direction: column;
    }

    .detail-label {
        font-size: 0.75rem;
        color: var(--text-secondary);
        margin-bottom: 0.25rem;
    }

    .detail-value {
        font-weight: 500;
        color: var(--text-primary);
    }

    .action-buttons {
        display: flex;
        gap: 1rem;
        margin-bottom: 1.5rem;
    }

    .btn {
        flex: 1;
        padding: 0.875rem;
        border: none;
        border-radius: 8px;
        font-size: 1rem;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.2s;
        text-decoration: none;
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 0.5rem;
    }

    .btn-primary {
        background: var(--primary-color);
        color: white;
    }

    .btn-primary:hover {
        background: var(--primary-dark);
    }

    .btn-secondary {
        background: white;
        color: var(--text-primary);
        border: 1px solid var(--border-color);
    }

    .btn-secondary:hover {
        background: var(--bg-light);
    }

    .security-notice {
        background-color: #fef3c7;
        border: 1px solid #fcd34d;
        border-radius: 6px;
        padding: 0.75rem;
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
        .success-container {
            padding: 1.5rem;
        }
        
        .user-details {
            grid-template-columns: 1fr;
        }
        
        .action-buttons {
            flex-direction: column;
        }
    }
</style>
</head>

<body>

    <div class="success-container">
        <div class="success-icon">
            <svg fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
            </svg>
        </div>

        <div class="success-header">
            <h1>Login Successful</h1>
            <p>Welcome back to E-Shop! You're now logged in.</p>
        </div>

        <div class="user-info">
            <h3>
                <svg fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                </svg>
                Account Information
            </h3>
            <div class="user-details">
                <div class="detail-item">
                    <span class="detail-label">Username</span>
                    <span class="detail-value"><%= request.getAttribute("userName") != null ? request.getAttribute("userName") : "User" %></span>
                </div>
                <div class="detail-item">
                    <span class="detail-label">Login Time</span>
                    <span class="detail-value" id="loginTime"></span>
                </div>
                <div class="detail-item">
                    <span class="detail-label">Session ID</span>
                    <span class="detail-value"><%= session.getId().substring(0, 8) %>...</span>
                </div>
                <div class="detail-item">
                    <span class="detail-label">IP Address</span>
                    <span class="detail-value"><%= request.getRemoteAddr() %></span>
                </div>
            </div>
        </div>

        <div class="action-buttons">
            <a href="dashboard.jsp" class="btn btn-primary">
                <svg width="18" height="18" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path>
                </svg>
                Go to Dashboard
            </a>
            <a href="catalog.jsp" class="btn btn-secondary">
                <svg width="18" height="18" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z"></path>
                </svg>
                Browse Products
            </a>
        </div>

        <div class="security-notice">
            <h3>
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/>
                </svg>
                Security Notice
            </h3>
            <p>For your security, please log out when you're done, especially on shared devices.</p>
        </div>
    </div>

    <
</body>
</html>