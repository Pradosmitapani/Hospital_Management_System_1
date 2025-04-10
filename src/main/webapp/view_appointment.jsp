<%@page import="com.entity.User"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
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
    <title>View Appointment Page - WellSphere</title>
    <%@include file="component/allcss.jsp"%>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
    <style type="text/css">
        /* Animated Gradient Background */
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            background: linear-gradient(135deg, #fefce8, #fef9c3, #fef08a, #fde047);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
            font-family: 'Poppins', sans-serif;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Header Banner */
        .backImg {
            height: 20vh;
            width: 100%;
            background: linear-gradient(135deg, rgba(254, 252, 232, 0.8), rgba(253, 224, 71, 0.8));
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            margin-bottom: 2rem;
        }
        .backImg p {
            font-size: 2.5rem;
            font-weight: 700;
            color: #713f12;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
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

        /* Table Styling */
        .table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            background: #fff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }
        .table thead th {
            background: linear-gradient(90deg, #facc15, #fde047);
            color: #713f12;
            font-weight: 600;
            padding: 15px;
            text-align: center;
            border-bottom: 2px solid #facc15;
        }
        .table tbody tr {
            transition: background 0.3s ease;
        }
        .table tbody tr:nth-child(even) {
            background: #fefce8;
        }
        .table tbody tr:hover {
            background: #fef9c3;
        }
        .table td, .table th {
            padding: 15px;
            text-align: center;
            vertical-align: middle;
        }

        /* Card Header Styling */
        .card-body .fs-4 {
            font-size: 1.75rem;
            font-weight: 700;
            color: #713f12;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 1.5rem;
        }

        /* Button Styling */
        .btn-warning {
            background: linear-gradient(90deg, #facc15, #fde047);
            border: none;
            border-radius: 20px;
            padding: 6px 15px;
            font-weight: 600;
            color: #713f12;
            transition: all 0.3s ease;
            box-shadow: 0 4px 10px rgba(250, 204, 21, 0.4);
        }
        .btn-warning:hover {
            background: linear-gradient(90deg, #fde047, #facc15);
            transform: scale(1.05);
            box-shadow: 0 6px 15px rgba(250, 204, 21, 0.6);
            color: #713f12;
        }

        /* Image Styling */
        .col-md-3 img {
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
            width: 100%;
            height: auto;
        }
        .col-md-3 img:hover {
            transform: scale(1.05);
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .backImg p {
                font-size: 1.5rem;
            }
            .card-body .fs-4 {
                font-size: 1.25rem;
            }
            .table thead {
                display: none;
            }
            .table, .table tbody, .table tr, .table td {
                display: block;
                width: 100%;
            }
            .table tr {
                margin-bottom: 15px;
                border: 1px solid #e5e7eb;
                border-radius: 8px;
                background: #fff;
            }
            .table td {
                text-align: right;
                padding-left: 50%;
                position: relative;
            }
            .table td::before {
                content: attr(data-label);
                position: absolute;
                left: 15px;
                font-weight: 600;
                color: #713f12;
                text-align: left;
            }
            .col-md-3 {
                margin-top: 1rem;
                text-align: center;
            }
        }
    </style>
</head>
<body>
<c:if test="${empty userObj}">
    <c:redirect url="user_login.jsp"></c:redirect>
</c:if>
<%@include file="component/navbar.jsp"%>

<div class="container-fluid backImg p-5">
    <p class="text-center">Your Appointments</p>
</div>
<div class="container p-3">
    <div class="row">
        <div class="col-md-9">
            <div class="card paint-card">
                <div class="card-body">
                    <p class="fs-4 fw-bold text-center">Appointment List</p>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Full Name</th>
                                <th scope="col">Gender</th>
                                <th scope="col">Age</th>
                                <th scope="col">Appoint Date</th>
                                <th scope="col">Diseases</th>
                                <th scope="col">Doctor Name</th>
                                <th scope="col">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                User user = (User) session.getAttribute("userObj");
                                AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
                                DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
                                List<Appointment> list = dao.getAllAppointmentByLoginUser(user.getId());
                                for (Appointment ap : list) {
                                    Doctor d = dao2.getDoctorById(ap.getDoctorId());
                            %>
                            <tr>
                                <td data-label="Full Name"><%=ap.getFullName()%></td>
                                <td data-label="Gender"><%=ap.getGender()%></td>
                                <td data-label="Age"><%=ap.getAge()%></td>
                                <td data-label="Appoint Date"><%=ap.getAppoinDate()%></td>
                                <td data-label="Diseases"><%=ap.getDiseases()%></td>
                                <td data-label="Doctor Name"><%=d.getFullName()%></td>
                                <td data-label="Status">
                                    <%
                                        if ("Pending".equals(ap.getStatus())) {
                                    %>
                                        <a href="#" class="btn btn-sm btn-warning">Pending</a>
                                    <%
                                        } else {
                                    %>
                                        <%=ap.getStatus()%>
                                    <%
                                        }
                                    %>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-3 p-3">
            <img alt="Doctor" src="img/doct2.jpg">
        </div>
    </div>
</div>
</body>
</html>