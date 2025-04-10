<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page - WellSphere</title>
    <%@include file="component/allcss.jsp"%>
    <style type="text/css">
        /* Animated Gradient Background */
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            background: linear-gradient(135deg, #f5f7fa, #d4e4ff, #b8c6ff, #9fa8da);
            background-size: 400% 400%;
            animation: gradientBG 12s ease infinite;
            color: #333;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Card Styling with Glassmorphism Touch */
        .paint-card {
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(5px);
            transition: transform 0.3s ease;
        }
        .paint-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        /* Form Styling */
        .form-label {
            font-weight: 600;
            color: #2c3e50;
            font-family: 'Poppins', sans-serif;
        }
        input.form-control {
            background-color: #f9f9f9;
            color: #333;
            border: 1px solid #9fa8da;
            border-radius: 10px;
            padding: 12px;
            transition: all 0.3s ease;
        }
        input.form-control:focus {
            border-color: #b8c6ff;
            box-shadow: 0 0 10px rgba(184, 198, 255, 0.5);
            background-color: #fff;
            outline: none;
        }
        input::placeholder {
            color: #777;
        }

        /* Button Styling */
        button[type="submit"] {
            background: linear-gradient(90deg, #9fa8da, #b8c6ff);
            color: #fff;
            border: none;
            border-radius: 25px;
            padding: 12px 0;
            font-weight: 600;
            font-size: 1.1rem;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(159, 168, 218, 0.4);
        }
        button[type="submit"]:hover {
            background: linear-gradient(90deg, #b8c6ff, #9fa8da);
            transform: scale(1.05);
            box-shadow: 0 6px 20px rgba(159, 168, 218, 0.6);
        }

        /* Header Styling */
        .card-header {
            font-family: 'Poppins', sans-serif;
            font-size: 2rem;
            font-weight: 700;
            color: #2c3e50;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
        }

        /* Link Styling */
        .login-link {
            color: #5a67d8;
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }
        .login-link:hover {
            color: #9fa8da;
            text-decoration: underline;
        }

        /* Layout Adjustments */
        .container {
            padding: 5rem 0;
        }
        .card-body {
            padding: 2.5rem;
        }

        /* Alerts */
        .text-success {
            color: #28a745 !important;
        }
        .text-danger {
            color: #dc3545 !important;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .container {
                padding: 3rem 1rem;
            }
            .card-body {
                padding: 1.5rem;
            }
            .card-header {
                font-size: 1.5rem;
            }
        }
    </style>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600;700&display=swap" rel="stylesheet">
</head>
<body>
<%@include file="component/navbar.jsp"%>

<div class="container p-5">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card paint-card">
                <div class="card-body">
                    <h2 class="text-center mb-4 card-header">User Register</h2>

                    <%--Session Messages--%>
                    <c:if test="${not empty sucMsg}">
                        <p class="text-center text-success fs-3">${sucMsg}</p>
                        <c:remove var="sucMsg" scope="session"/>
                    </c:if>

                    <c:if test="${not empty errorMsg}">
                        <p class="text-center text-danger fs-3">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session"/>
                    </c:if>

                    <form action="user_register" method="post">
                        <div class="mb-3">
                            <label class="form-label">Full Name</label>
                            <input required name="fullname" type="text" class="form-control" placeholder="Enter your full name">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input required name="email" type="email" class="form-control" placeholder="Enter your email">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input required name="password" type="password" class="form-control" placeholder="Create a password">
                        </div>

                        <button type="submit" class="btn col-md-12">Register</button>

                        <p class="text-center mt-3" style="color: #2c3e50;">
                            Already have an account?
                            <a href="user_login.jsp" class="login-link">Login here</a>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>