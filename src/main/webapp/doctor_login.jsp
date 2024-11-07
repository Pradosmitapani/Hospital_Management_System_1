<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Login Page</title>
    <%@include file="component/allcss.jsp"%>
    <style type="text/css">
        body {
            background-image: url('img/doctor.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #fff;
        }
        .paint-card {
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            border-radius: 15px;
            overflow: hidden;
            background-color: rgba(255, 255, 255, 0.9);
        }
        .container {
            max-width: 600px;
            margin-top: 80px;
        }
        .form-label {
            font-weight: bold;
            color: #333;
        }
        .btn {
            background-color: #28a745;
            color: #fff;
            border: none;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #218838;
        }
        .footer {
            background-color: #007bff;
            color: #fff;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
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
                     <h2 class="text-center mb-4" style="color: #003366;">Doctor Login</h2>


                        <c:if test="${not empty succMsg }">
                            <div class="alert alert-success text-center">${succMsg}</div>
                            <c:remove var="succMsg" scope="session" />
                        </c:if>

                        <c:if test="${not empty errorMsg }">
                            <div class="alert alert-danger text-center">${errorMsg}</div>
                            <c:remove var="errorMsg" scope="session" />
                        </c:if>

                        <form action="doctorLogin" method="post">
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
        </div
