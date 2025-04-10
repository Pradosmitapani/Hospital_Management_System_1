<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Page - WellSphere</title>
    <%@include file="../component/allcss.jsp"%>
    <style type="text/css">
        /* Animated Gradient Background */
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            background: linear-gradient(135deg, #d1fae5, #a7f3d0, #6ee7b7, #34d399);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
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
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(5px);
            margin: 2rem 0;
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
            background: linear-gradient(90deg, #34d399, #6ee7b7);
            color: #fff;
            font-weight: 600;
            padding: 15px;
            text-align: center;
            border-bottom: 2px solid #34d399;
        }
        .table tbody tr {
            transition: background 0.3s ease;
        }
        .table tbody tr:nth-child(even) {
            background: #f9fafb;
        }
        .table tbody tr:hover {
            background: #d1fae5;
        }
        .table td, .table th {
            padding: 15px;
            text-align: center;
            vertical-align: middle;
        }

        /* Header Styling */
        .card-body .fs-3 {
            font-size: 2rem;
            font-weight: 700;
            color: #065f46;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 1.5rem;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
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
                color: #065f46;
                text-align: left;
            }
            .card-body .fs-3 {
                font-size: 1.5rem;
            }
        }
    </style>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
</head>
<body>
<%@include file="navbar.jsp"%>

<div class="container">
    <div class="col-md-12">
        <div class="card paint-card">
            <div class="card-body">
                <p class="fs-3 text-center">Patient Details</p>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Full Name</th>
                            <th scope="col">Gender</th>
                            <th scope="col">Age</th>
                            <th scope="col">Appointment</th>
                            <th scope="col">Email</th>
                            <th scope="col">Mob No</th>
                            <th scope="col">Diseases</th>
                            <th scope="col">Doctor Name</th>
                            <th scope="col">Address</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
                            DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
                            List<Appointment> list = dao.getAllAppointment();
                            for (Appointment ap : list) {
                                Doctor d = dao2.getDoctorById(ap.getDoctorId());
                        %>
                        <tr>
                            <td data-label="Full Name"><%=ap.getFullName()%></td>
                            <td data-label="Gender"><%=ap.getGender()%></td>
                            <td data-label="Age"><%=ap.getAge()%></td>
                            <td data-label="Appointment"><%=ap.getAppoinDate()%></td>
                            <td data-label="Email"><%=ap.getEmail()%></td>
                            <td data-label="Mob No"><%=ap.getPhNo()%></td>
                            <td data-label="Diseases"><%=ap.getDiseases()%></td>
                            <td data-label="Doctor Name"><%=d.getFullName()%></td>
                            <td data-label="Address"><%=ap.getAddress()%></td>
                            <td data-label="Status"><%=ap.getStatus()%></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>