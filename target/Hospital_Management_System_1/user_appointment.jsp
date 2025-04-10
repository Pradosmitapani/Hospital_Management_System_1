<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Appointment Page - WellSphere</title>
    <%@include file="component/allcss.jsp"%>
    <style type="text/css">
        /* Animated Gradient Background for Body */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            background: linear-gradient(135deg, #e6f3ff, #b3d9ff, #66b3ff, #3399ff);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Header Section Gradient */
        .header-section {
            background: linear-gradient(135deg, #3399ff, #66b3ff);
            height: 20vh;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        .header-section p {
            font-size: 2rem;
            font-weight: 700;
            color: #fff;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3);
            font-family: 'Poppins', sans-serif;
        }

        /* Card Styling */
        .paint-card {
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
            border-radius: 12px;
            background: #fff;
            transition: transform 0.3s ease;
        }
        .paint-card:hover {
            transform: translateY(-5px);
        }

        /* Form Styling */
        .form-control, .form-control:focus {
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 12px;
            border: 1px solid #3399ff;
            transition: all 0.3s ease;
        }
        .form-control:focus {
            box-shadow: 0 0 10px rgba(51, 153, 255, 0.5);
            border-color: #66b3ff;
        }
        select.form-control {
            appearance: none;
            background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="12" height="6"><path fill="%233399ff" d="M0 0h12l-6 6z"/></svg>') no-repeat right 10px center;
        }
        textarea.form-control {
            resize: vertical;
        }

        /* Button Styling */
        .btn-success {
            background: linear-gradient(90deg, #3399ff, #66b3ff);
            border: none;
            border-radius: 25px;
            padding: 12px 30px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(51, 153, 255, 0.4);
            color: #fff;
        }
        .btn-success:hover {
            background: linear-gradient(90deg, #66b3ff, #3399ff);
            transform: scale(1.05);
            box-shadow: 0 6px 20px rgba(51, 153, 255, 0.6);
            color: #fff;
        }

        /* Layout Adjustments */
        .col-md-6 {
            margin-bottom: 20px;
        }
        .card-body {
            padding: 35px;
        }
        .text-center {
            color: #003366;
        }
        .fs-3 {
            font-size: 1.8rem;
            font-weight: 700;
            font-family: 'Poppins', sans-serif;
        }
        .btn-submit-container {
            text-align: center;
            margin-top: 20px;
        }

        /* Image Styling */
        .img-fluid {
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .img-fluid:hover {
            transform: scale(1.02);
        }

        /* Footer */
        .footer {
            background: linear-gradient(90deg, #3399ff, #66b3ff);
            color: #fff;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .header-section {
                height: 15vh;
            }
            .header-section p {
                font-size: 1.5rem;
            }
            .card-body {
                padding: 20px;
            }
            .fs-3 {
                font-size: 1.5rem;
            }
        }
    </style>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">
</head>
<body>
<%@include file="component/navbar.jsp"%>

<div class="container-fluid header-section p-5">
    <p class="text-center">User Appointment</p>
</div>

<div class="container p-4">
    <div class="row align-items-center">
        <div class="col-md-6 p-5">
            <img alt="Doctor" src="img/doct10.jpg" class="img-fluid">
        </div>

        <div class="col-md-6">
            <div class="card paint-card">
                <div class="card-body">
                    <p class="text-center fs-3">User Appointment</p>

                    <c:if test="${not empty errorMsg}">
                        <p class="fs-4 text-center text-danger">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session" />
                    </c:if>

                    <c:if test="${not empty succMsg}">
                        <p class="fs-4 text-center text-success">${succMsg}</p>
                        <c:remove var="succMsg" scope="session" />
                    </c:if>

                    <form class="row g-3" action="appAppointment" method="post">
                        <input type="hidden" name="userid" value="${userObj.id}">

                        <div class="col-md-6">
                            <label for="fullname" class="form-label">Full Name</label>
                            <input required type="text" class="form-control" name="fullname" id="fullname">
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Gender</label>
                            <select class="form-control" name="gender" required>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label for="age" class="form-label">Age</label>
                            <input required type="number" class="form-control" name="age" id="age">
                        </div>

                        <div class="col-md-6">
                            <label for="appoint_date" class="form-label">Appointment Date</label>
                            <input type="date" class="form-control" required name="appoint_date" id="appoint_date">
                        </div>

                        <div class="col-md-6">
                            <label for="email" class="form-label">Email</label>
                            <input required type="email" class="form-control" name="email" id="email">
                        </div>

                        <div class="col-md-6">
                            <label for="phno" class="form-label">Phone No</label>
                            <input required type="text" class="form-control" name="phno" id="phno"
                                   pattern="\d{10}" maxlength="10"
                                   title="Phone number must be exactly 10 digits"
                                   oninput="this.value=this.value.replace(/[^0-9]/g,'')">
                        </div>

                        <div class="col-md-6">
                            <label for="diseases" class="form-label">Diseases</label>
                            <input required type="text" class="form-control" name="diseases" id="diseases">
                        </div>

                        <div class="col-md-6">
                            <label for="doct" class="form-label">Doctor</label>
                            <select required class="form-control" name="doct" id="doct">
                                <option value="">--Select--</option>
                                <%
                                    DoctorDao dao = new DoctorDao(DBConnect.getConn());
                                    List<Doctor> list = dao.getAllDoctor();
                                    for (Doctor d : list) {
                                %>
                                <option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>)</option>
                                <%
                                    }
                                %>
                            </select>
                        </div>

                        <div class="col-md-12">
                            <label for="address" class="form-label">Full Address</label>
                            <textarea required name="address" class="form-control" rows="3" id="address"></textarea>
                        </div>

                        <div class="btn-submit-container">
                            <c:if test="${empty userObj}">
                                <a href="user_login.jsp" class="btn btn-success">Login to Submit</a>
                            </c:if>

                            <c:if test="${not empty userObj}">
                                <button class="btn btn-success">Submit</button>
                            </c:if>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>