<%@page import="com.entity.Appointment"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comment Page - WellSphere</title>
    <%@include file="../component/allcss.jsp"%>
    <style type="text/css">
        /* Animated Gradient Background */
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            background: linear-gradient(135deg, #fef3c7, #fde68a, #fcd34d, #fbbf24);
            background-size: 400% 400%;
            animation: gradientBG 12s ease infinite;
            font-family: 'Poppins', sans-serif;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Header Section */
        .header-section {
            background: linear-gradient(135deg, #fbbf24, #fcd34d);
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
        }

        /* Card Styling */
        .paint-card {
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.95);
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
            border: 1px solid #fbbf24;
            border-radius: 10px;
            padding: 12px;
            color: #333;
            transition: all 0.3s ease;
        }
        .form-control[readonly] {
            background-color: #e5e7eb;
            cursor: not-allowed;
        }
        .form-control:focus {
            border-color: #fcd34d;
            box-shadow: 0 0 10px rgba(252, 211, 77, 0.5);
            background-color: #fff;
            outline: none;
        }
        textarea.form-control {
            resize: vertical;
        }

        /* Button Styling */
        .btn-primary {
            background: linear-gradient(90deg, #fbbf24, #fcd34d);
            border: none;
            border-radius: 25px;
            padding: 10px 20px;
            font-weight: 600;
            color: #2c3e50;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(251, 191, 36, 0.4);
        }
        .btn-primary:hover {
            background: linear-gradient(90deg, #fcd34d, #fbbf24);
            transform: scale(1.05);
            box-shadow: 0 6px 20px rgba(251, 191, 36, 0.6);
            color: #2c3e50;
        }

        /* Header Styling */
        .fs-4 {
            font-size: 1.8rem;
            font-weight: 700;
            color: #2c3e50;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 1.5rem;
        }

        /* Layout Adjustments */
        .container {
            padding: 3rem 1rem;
        }
        .card-body {
            padding: 2rem;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .header-section {
                height: 15vh;
            }
            .header-section p {
                font-size: 1.5rem;
            }
            .container {
                padding: 2rem 1rem;
            }
            .card-body {
                padding: 1.5rem;
            }
            .fs-4 {
                font-size: 1.5rem;
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

<div class="container-fluid header-section p-5">
    <p class="text-center">Patient Comment</p>
</div>

<div class="container p-3">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card paint-card">
                <div class="card-body">
                    <p class="text-center fs-4">Patient Comment</p>
                    <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
                        Appointment ap = dao.getAppointmentById(id);
                    %>
                    <form class="row" action="../updateStatus" method="post">
                        <div class="col-md-6">
                            <label class="form-label">Patient Name</label>
                            <input type="text" readonly value="<%=ap.getFullName()%>" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Age</label>
                            <input type="text" value="<%=ap.getAge()%>" readonly class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Mob No</label>
                            <input type="text" readonly value="<%=ap.getPhNo()%>" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Diseases</label>
                            <input type="text" readonly value="<%=ap.getDiseases()%>" class="form-control">
                        </div>
                        <div class="col-md-12">
                            <label class="form-label">Comment</label>
                            <textarea required name="comm" class="form-control" rows="3"></textarea>
                        </div>
                        <input type="hidden" name="id" value="<%=ap.getId()%>">
                        <input type="hidden" name="did" value="<%=ap.getDoctorId()%>">
                        <button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>