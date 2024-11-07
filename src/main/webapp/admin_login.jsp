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
                    background-image: url('img/doctor.jpg');
                    background-size: cover;
                    background-position: center;
                    background-repeat: no-repeat;
                    color: #fff;
                }
         .form-label {
             font-weight: bold;
             color: #333;  /* Dark gray color for better visibility */
         }

         input.form-control {
             background-color: #f0f0f0;  /* Light gray background */
             color: #333;  /* Dark text for input */
         }

        .paint-card {
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            overflow: hidden;
        }
        .container {
            max-width: 600px;
            margin-top: 50px;
        }
        .form-label {
            font-weight: bold;
        }
        .btn {
            background-color: #28a745;
            color: #fff;
            border: none;
        }
        .btn:hover {
            background-color: #218838;
        }

        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }
            .paint-card {
                box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
            }
        }
    </style>
</head>
<body>
<%@include file="component/navbar.jsp"%>

<div class="container p-4">
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6">
            <div class="card paint-card">
                <div class="card-body">
                    <h2 class="text-center mb-4" style="color: #003366;">Admin Login</h2>


                    <c:if test="${not empty succMsg}">
                        <div class="alert alert-success text-center">${succMsg}</div>
                        <c:remove var="succMsg" scope="session"/>
                    </c:if>

                    <c:if test="${not empty errorMsg}">
                        <div class="alert alert-danger text-center">${errorMsg}</div>
                        <c:remove var="errorMsg" scope="session"/>
                    </c:if>

                    <form action="adminLogin" method="post">
                        <div class="mb-3">
                            <label class="form-label">Email address</label>
                            <input required name="email" type="email" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input required name="password" type="password" class="form-control">
                        </div>

                        <button type="submit" class="btn col-12 py-2">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


</div>
</body>
</html>
