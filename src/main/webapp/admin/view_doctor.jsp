<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
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
    <title>View Doctor - WellSphere</title>
    <%@include file="../component/allcss.jsp"%>
    <style type="text/css">
        /* Animated Gradient Background */
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            background: linear-gradient(135deg, #e0f2fe, #bae6fd, #7dd3fc, #38bdf8);
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
            background: linear-gradient(90deg, #38bdf8, #7dd3fc);
            color: #fff;
            font-weight: 600;
            padding: 15px;
            text-align: center;
            border-bottom: 2px solid #38bdf8;
        }
        .table tbody tr {
            transition: background 0.3s ease;
        }
        .table tbody tr:nth-child(even) {
            background: #f9fafb;
        }
        .table tbody tr:hover {
            background: #e0f2fe;
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
            color: #1e40af;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 1.5rem;
        }

        /* Button Styling */
        .btn-primary {
            background: linear-gradient(90deg, #38bdf8, #7dd3fc);
            border: none;
            border-radius: 20px;
            padding: 6px 15px;
            font-weight: 600;
            color: #fff;
            transition: all 0.3s ease;
            box-shadow: 0 4px 10px rgba(56, 189, 248, 0.4);
        }
        .btn-primary:hover {
            background: linear-gradient(90deg, #7dd3fc, #38bdf8);
            transform: scale(1.05);
            box-shadow: 0 6px 15px rgba(56, 189, 248, 0.6);
            color: #fff;
        }
        .btn-danger {
            background: linear-gradient(90deg, #ef4444, #f87171);
            border: none;
            border-radius: 20px;
            padding: 6px 15px;
            font-weight: 600;
            color: #fff;
            transition: all 0.3s ease;
            box-shadow: 0 4px 10px rgba(239, 68, 68, 0.4);
        }
        .btn-danger:hover {
            background: linear-gradient(90deg, #f87171, #ef4444);
            transform: scale(1.05);
            box-shadow: 0 6px 15px rgba(239, 68, 68, 0.6);
            color: #fff;
        }

        /* Alerts */
        .text-danger {
            color: #ef4444 !important;
        }
        .text-success {
            color: #10b981 !important;
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
                color: #1e40af;
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

<div class="container-fluid p-3">
    <div class="row">
        <div class="col-md-12">
            <div class="card paint-card">
                <div class="card-body">
                    <p class="fs-3 text-center">Doctor Details</p>
                    <c:if test="${not empty errorMsg}">
                        <p class="fs-3 text-center text-danger">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session" />
                    </c:if>
                    <c:if test="${not empty succMsg}">
                        <div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
                        <c:remove var="succMsg" scope="session" />
                    </c:if>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Full Name</th>
                                <th scope="col">DOB</th>
                                <th scope="col">Qualification</th>
                                <th scope="col">Specialist</th>
                                <th scope="col">Email</th>
                                <th scope="col">Mob No</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
                                List<Doctor> list2 = dao2.getAllDoctor();
                                for (Doctor d : list2) {
                            %>
                            <tr>
                                <td data-label="Full Name"><%=d.getFullName()%></td>
                                <td data-label="DOB"><%=d.getDob()%></td>
                                <td data-label="Qualification"><%=d.getQualification()%></td>
                                <td data-label="Specialist"><%=d.getSpecialist()%></td>
                                <td data-label="Email"><%=d.getEmail()%></td>
                                <td data-label="Mob No"><%=d.getMobNo()%></td>
                                <td data-label="Action">
                                    <a href="edit_doctor.jsp?id=<%=d.getId()%>" class="btn btn-sm btn-primary">Edit</a>
                                    <a href="../deleteDoctor?id=<%=d.getId()%>" class="btn btn-sm btn-danger">Delete</a>
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
    </div>
</div>
</body>
</html>