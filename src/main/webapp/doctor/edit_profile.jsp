<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile Page - WellSphere</title>
    <%@include file="../component/allcss.jsp"%>
    <style type="text/css">
        /* Animated Gradient Background */
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            background: linear-gradient(135deg, #e9d5ff, #c4b5fd, #a78bfa, #8b5cf6);
            background-size: 400% 400%;
            animation: gradientBG 12s ease infinite;
            font-family: 'Poppins', sans-serif;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Card Styling */
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
        }
        .form-control {
            background-color: #f9f9f9;
            border: 1px solid #8b5cf6;
            border-radius: 10px;
            padding: 12px;
            color: #333;
            transition: all 0.3s ease;
        }
        .form-control:focus {
            border-color: #a78bfa;
            box-shadow: 0 0 10px rgba(167, 139, 250, 0.5);
            background-color: #fff;
            outline: none;
        }
        .form-control[readonly] {
            background-color: #e5e7eb;
            cursor: not-allowed;
        }
        select.form-control {
            appearance: none;
            background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="12" height="6"><path fill="%238b5cf6" d="M0 0h12l-6 6z"/></svg>') no-repeat right 10px center;
        }

        /* Button Styling */
        .btn-success, .btn-primary {
            background: linear-gradient(90deg, #8b5cf6, #a78bfa);
            border: none;
            border-radius: 25px;
            padding: 10px 20px;
            font-weight: 600;
            color: #fff;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(139, 92, 246, 0.4);
        }
        .btn-success:hover, .btn-primary:hover {
            background: linear-gradient(90deg, #a78bfa, #8b5cf6);
            transform: scale(1.05);
            box-shadow: 0 6px 20px rgba(139, 92, 246, 0.6);
            color: #fff;
        }

        /* Header Styling */
        .fs-3 {
            font-size: 2rem;
            font-weight: 700;
            color: #2c3e50;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 1.5rem;
        }

        /* Alerts */
        .text-success {
            color: #10b981 !important;
        }
        .text-danger {
            color: #ef4444 !important;
        }

        /* Layout Adjustments */
        .container {
            padding: 4rem 1rem;
        }
        .card-body {
            padding: 2rem;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .container {
                padding: 2rem 1rem;
            }
            .card-body {
                padding: 1.5rem;
            }
            .fs-3 {
                font-size: 1.5rem;
            }
            .col-md-4, .col-md-5 {
                margin-bottom: 2rem;
            }
        }
    </style>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
</head>
<body>
<c:if test="${empty doctObj}">
    <c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>

<%@include file="navbar.jsp"%>

<div class="container p-4">
    <div class="row">
        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body">
                    <p class="text-center fs-3">Change Password</p>
                    <c:if test="${not empty succMsg}">
                        <p class="text-center text-success fs-3">${succMsg}</p>
                        <c:remove var="succMsg" scope="session"/>
                    </c:if>
                    <c:if test="${not empty errorMsg}">
                        <p class="text-center text-danger fs-5">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session"/>
                    </c:if>
                    <form action="../doctChangePassword" method="post">
                        <div class="mb-3">
                            <label class="form-label">Enter New Password</label>
                            <input type="text" name="newPassword" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Enter Old Password</label>
                            <input type="text" name="oldPassword" class="form-control" required>
                        </div>
                        <input type="hidden" value="${doctObj.id}" name="uid">
                        <button class="btn btn-success col-md-12">Change Password</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-5 offset-md-2">
            <div class="card paint-card">
                <div class="card-body">
                    <p class="text-center fs-3">Edit Profile</p>
                    <c:if test="${not empty succMsgd}">
                        <p class="text-center text-success fs-3">${succMsgd}</p>
                        <c:remove var="succMsgd" scope="session"/>
                    </c:if>
                    <c:if test="${not empty errorMsgd}">
                        <p class="text-center text-danger fs-5">${errorMsgd}</p>
                        <c:remove var="errorMsgd" scope="session"/>
                    </c:if>
                    <form action="../doctorUpdateProfile" method="post">
                        <div class="mb-3">
                            <label class="form-label">Full Name</label>
                            <input type="text" required name="fullname" class="form-control" value="${doctObj.fullName}">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">DOB</label>
                            <input type="date" required name="dob" class="form-control" value="${doctObj.dob}">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Qualification</label>
                            <input required name="qualification" type="text" class="form-control" value="${doctObj.qualification}">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Specialist</label>
                            <select name="spec" required class="form-control">
                                <option>${doctObj.specialist}</option>
                                <%
                                    SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
                                    List<Specalist> list = dao.getAllSpecialist();
                                    for (Specalist s : list) {
                                %>
                                <option><%=s.getSpecialistName()%></option>
                                <%
                                    }
                                %>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="text" readonly required name="email" class="form-control" value="${doctObj.email}">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Mob No</label>
                            <input type="text" required name="mobno" class="form-control" value="${doctObj.mobNo}"
                                   pattern="\d{10}" title="Phone number must be exactly 10 digits">
                        </div>
                        <input type="hidden" name="id" value="${doctObj.id}">
                        <button type="submit" class="btn btn-primary col-md-12">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>