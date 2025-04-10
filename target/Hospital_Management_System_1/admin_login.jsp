<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login Page - WellSphere</title>
    <%@include file="component/allcss.jsp"%>

    <style type="text/css">
        /* Animated Gradient Background */
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            background: linear-gradient(45deg, #1e3c72, #2a5298, #4a00e0, #8e2de2);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
            color: #fff;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Glassmorphism Card */
        .paint-card {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(12px);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            transition: all 0.4s ease-in-out;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }
        .paint-card:hover {
            box-shadow: 0 0 30px rgba(255, 255, 255, 0.4);
            transform: scale(1.03);
        }

        /* Form Enhancements */
        .form-label {
            font-weight: 600;
            color: #fff;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.2);
        }
        input.form-control {
            background-color: rgba(255, 255, 255, 0.25);
            border: 1px solid rgba(255, 255, 255, 0.5);
            color: #fff;
            padding: 12px;
            border-radius: 10px;
            transition: all 0.3s ease;
        }
        input.form-control:focus {
            outline: none;
            box-shadow: 0 0 15px rgba(255, 255, 255, 0.7);
            background-color: rgba(255, 255, 255, 0.35);
        }
        input.form-control::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        /* Neon Glowing Button */
        .btn {
            background: linear-gradient(90deg, #00ddeb, #007bff);
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 1.1rem;
            font-weight: 600;
            border-radius: 10px;
            transition: all 0.3s ease-in-out;
            box-shadow: 0 0 15px rgba(0, 123, 255, 0.6);
        }
        .btn:hover {
            box-shadow: 0 0 25px rgba(0, 123, 255, 1);
            transform: scale(1.05);
            background: linear-gradient(90deg, #007bff, #00ddeb);
        }

        /* Centering Content */
        .container {
            max-width: 550px;
            margin-top: 100px;
        }

        /* Header Styling */
        .card-header {
            font-family: 'Poppins', sans-serif;
            font-size: 2rem;
            font-weight: 700;
            text-shadow: 2px 2px 15px rgba(255, 255, 255, 0.5);
            color: #fff;
        }

        /* Alerts */
        .alert {
            border-radius: 10px;
            font-weight: 500;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .container {
                padding: 15px;
                margin-top: 50px;
            }
            .paint-card {
                padding: 20px;
            }
            .card-header {
                font-size: 1.5rem;
            }
        }
    </style>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">
</head>
<body>
<%@include file="component/navbar.jsp"%>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <i class="bi bi-shield-lock fs-2" style="color: #00ddeb;"></i>
                    <h2 class="card-header mb-4">Admin Login</h2>

                    <!-- Success Message -->
                    <c:if test="${not empty succMsg}">
                        <div class="alert alert-success text-center">${succMsg}</div>
                        <c:remove var="succMsg" scope="session"/>
                    </c:if>

                    <!-- Error Message -->
                    <c:if test="${not empty errorMsg}">
                        <div class="alert alert-danger text-center">${errorMsg}</div>
                        <c:remove var="errorMsg" scope="session"/>
                    </c:if>

                    <!-- Login Form -->
                    <form action="adminLogin" method="post">
                        <div class="mb-4 text-start">
                            <label class="form-label">Email Address</label>
                            <input required name="email" type="email" class="form-control" placeholder="Enter your email">
                        </div>

                        <div class="mb-4 text-start">
                            <label class="form-label">Password</label>
                            <input required name="password" type="password" class="form-control" placeholder="Enter your password">
                        </div>

                        <button type="submit" class="btn col-12">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>