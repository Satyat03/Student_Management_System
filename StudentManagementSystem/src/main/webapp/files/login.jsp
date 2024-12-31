<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #121212, #1a1a1a);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
            color: #fff;
        }

        .login-container {
            background: rgba(0, 0, 0, 0.8);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.7);
            padding: 30px;
            width: 350px;
            text-align: center;
        }

        .login-container h1 {
            font-size: 2rem;
            margin-bottom: 20px;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
            font-size: 1rem;
            outline: none;
            text-align: center;
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.5);
        }

        .login-container input::placeholder {
            color: #888;
        }

        .login-container button {
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            background: #3a3a3a;
            border: none;
            border-radius: 8px;
            color: #fff;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        .login-container button:hover {
            background: #555;
        }

        .login-container .footer {
            margin-top: 20px;
            font-size: 0.9rem;
            opacity: 0.8;
        }

        .login-container .footer a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }

        .login-container .footer a:hover {
            text-decoration: underline;
        }

        .circle {
            position: absolute;
            border-radius: 50%;
            background: #659EC7;
            animation: float 4s infinite ease-in-out;
        }

        .circle.one {
            width: 150px;
            height: 150px;
            top: 10%;
            left: 20%;
        }
        
        .circle.three {
            width: 100px;
            height: 100px;
            top: 10%;
            left: 50%;
        }

        .circle.two {
            width: 200px;
            height: 200px;
            bottom: 15%;
            right: 25%;
        }
        
         .circle.four {
            width: 250px;
            height: 250px;
            down: 10%;
            right: 50%;
        }
        

        @keyframes float {
            0%, 100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-20px);
            }
        }
    </style>
</head>
<body>
<div class="circle one"></div>
    <div class="circle two"></div>
     <div class="circle three"></div>
      <div class="circle four"></div>

    <div class="login-container">
        <h1>Welcome Back</h1>
        <form action="login" method="POST">
            <input type="text" name="username" placeholder="Username">
            <input type="password" name="password" placeholder="Password">
            <button type="submit">Login</button>
        </form>
        <div class="footer">
            <p>Don't have an account? <a href="#">Sign up</a></p>
        </div>
    </div>
</body>
</html>