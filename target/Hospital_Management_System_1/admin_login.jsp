<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login Page</title>
    <%@include file="component/allcss.jsp"%>

    <style type="text/css">
        body {
            background-image: url('img/index_5.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #fff;
        }

        /* Glassmorphism Card */
        .paint-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
            transition: 0.4s ease-in-out;
            border: 2px solid rgba(255, 255, 255, 0.2);
        }
        .paint-card:hover {
            box-shadow: 0 0 25px rgba(255, 255, 255, 0.3);
            transform: scale(1.03);
        }

        /* Form Enhancements */
        .form-label {
            font-weight: bold;
            color: #fff; /* White text for contrast */
        }
        input.form-control {
            background-color: rgba(255, 255, 255, 0.2);
            border: none;
            color: #fff;
            padding: 10px;
            border-radius: 8px;
        }
        input.form-control:focus {
            outline: none;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
        }

        /* Neon Glowing Button */
        .btn {
            background: linear-gradient(90deg, #00c6ff, #0072ff);
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            border-radius: 8px;
            transition: 0.3s ease-in-out;
            box-shadow: 0 0 10px rgba(0, 114, 255, 0.5);
        }
        .btn:hover {
            box-shadow: 0 0 20px rgba(0, 114, 255, 0.8);
            transform: scale(1.05);
        }

        /* Centering Content */
        .container {
            max-width: 500px;
            margin-top: 80px;
        }

        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
<%@include file="component/navbar.jsp"%>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <h2 class="mb-4" style="color: #fff; text-shadow: 2px 2px 10px rgba(255, 255, 255, 0.5);">Admin Login</h2>

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
                        <div class="mb-3 text-start">
                            <label class="form-label">Email Address</label>
                            <input required name="email" type="email" class="form-control">
                        </div>

                        <div class="mb-3 text-start">
                            <label class="form-label">Password</label>
                            <input required name="password" type="password" class="form-control">
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
