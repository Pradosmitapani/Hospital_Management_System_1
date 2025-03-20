<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <%@include file="../component/allcss.jsp"%>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style type="text/css">

        .paint-card {
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            transition: all 0.3s ease-in-out;
        }

        .paint-card:hover {
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        }

        .card-body {
            padding: 20px;
        }

        .card-body i {
            color: #28a745;
            transition: transform 0.3s ease;
        }

        .card-body i:hover {
            transform: scale(1.2);
        }

        .text-success {
            color: #28a745 !important;
        }

        .modal-content {
            border-radius: 10px;
        }

        .modal-header {
            background-color: #28a745;
            color: white;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .modal-footer {
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
        }

        .modal-body input.form-control {
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: border-color 0.3s ease;
        }

        .modal-body input.form-control:focus {
            border-color: #28a745;
            box-shadow: 0 0 5px rgba(40, 167, 69, 0.5);
        }

        .btn-primary {
            background-color: #28a745;
            border-color: #28a745;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #218838;
        }

        .fs-3 {
            font-size: 1.75rem;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .fs-3 {
                font-size: 1.25rem;
            }

            .paint-card {
                margin-bottom: 15px;
            }

            .col-md-4 {
                margin-bottom: 20px;
            }

            .text-center {
                text-align: center;
            }

            .modal-dialog {
                max-width: 90%;
            }
        }
    </style>
</head>
<body>
<%@include file="navbar.jsp"%>

<c:if test="${ empty adminObj }">
    <c:redirect url="../admin_login.jsp"></c:redirect>
</c:if>

<div class="container p-5">
    <p class="text-center fs-3">Admin Dashboard</p>

    <c:if test="${not empty errorMsg}">
        <p class="fs-3 text-center text-danger">${errorMsg}</p>
        <c:remove var="errorMsg" scope="session" />
    </c:if>

    <c:if test="${not empty succMsg}">
        <div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
        <c:remove var="succMsg" scope="session" />
    </c:if>

    <%
        DoctorDao dao = new DoctorDao(DBConnect.getConn());
    %>
    <div class="row">
        <!-- Doctor Card -->
        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <i class="fas fa-user-md fa-3x"></i><br>
                    <p class="fs-4">
                        Doctor <br><%=dao.countDoctor()%>
                    </p>
                </div>
            </div>
        </div>

        <!-- User Card -->
        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <i class="fas fa-user-circle fa-3x"></i><br>
                    <p class="fs-4">
                        User <br><%=dao.countUSer()%>
                    </p>
                </div>
            </div>
        </div>

        <!-- Total Appointment Card -->
        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <i class="far fa-calendar-check fa-3x"></i><br>
                    <p class="fs-4">
                        Total Appointment <br><%=dao.countAppointment()%>
                    </p>
                </div>
            </div>
        </div>

        <!-- Specialist Card with Modal -->
        <div class="col-md-4 mt-2">
            <div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
                <div class="card-body text-center">
                    <i class="far fa-calendar-check fa-3x"></i><br>
                    <p class="fs-4">
                        Specialist <br><%=dao.countSpecialist()%>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal for adding specialist -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Specialist</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="../addSpecialist" method="post">
                    <div class="form-group">
                        <label>Enter Specialist Name</label>
                        <input type="text" name="specName" class="form-control" required>
                    </div>
                    <div class="text-center mt-3">
                        <button type="submit" class="btn btn-primary">Add</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
