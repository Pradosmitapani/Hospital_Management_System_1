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

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Appointment Page</title>
    <%@include file="component/allcss.jsp"%>
    <style type="text/css">
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7f6;
        }
        .paint-card {
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .backImg {
            background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)), url("img/4pp.jpg");
            height: 20vh;
            background-size: cover;
            background-repeat: no-repeat;
        }

        .form-control {
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 10px;
        }

        .form-control:focus {
            border-color: #28a745;
            box-shadow: 0 0 5px rgba(40, 167, 69, 0.5);
        }

        .btn-success {
            background-color: #28a745;
            border-color: #28a745;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn-success:hover {
            background-color: #218838;
        }

        .col-md-6 {
            margin-bottom: 15px;
        }

        .card-body {
            padding: 30px;
        }

        .col-md-12 {
            margin-top: 20px;
        }

        .text-center {
            color: #003366;
        }

        .fs-3 {
            font-size: 1.6rem;
            font-weight: 600;
        }

        .btn-submit-container {
            text-align: center;
        }

        /* Responsive styles */
        @media (max-width: 768px) {
            .container-fluid {
                padding: 10px;
            }

            .card-body {
                padding: 20px;
            }

            .col-md-6 {
                margin-bottom: 10px;
            }

            .col-md-12 {
                margin-top: 15px;
            }

            .btn-submit-container a, .btn-submit-container button {
                width: 100%;
                margin-top: 10px;
            }
        }

    </style>
</head>
<body>
<%@include file="component/navbar.jsp"%>

<div class="container-fluid backImg p-5">
    <p class="text-center fs-2 text-white">User Appointment</p>
</div>

<div class="container p-3">
    <div class="row">
        <div class="col-md-6 p-5">
            <img alt="" src="img/doct10.jpg" class="img-fluid rounded">
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
                            <label for="inputEmail4" class="form-label">Full Name</label>
                            <input required type="text" class="form-control" name="fullname">
                        </div>

                        <div class="col-md-6">
                            <label>Gender</label>
                            <select class="form-control" name="gender" required>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Age</label>
                            <input required type="number" class="form-control" name="age">
                        </div>

                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Appointment Date</label>
                            <input type="date" class="form-control" required name="appoint_date">
                        </div>

                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Email</label>
                            <input required type="email" class="form-control" name="email">
                        </div>

                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Phone No</label>
                            <input maxlength="10" required type="number" class="form-control" name="phno">
                        </div>

                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Diseases</label>
                            <input required type="text" class="form-control" name="diseases">
                        </div>

                        <div class="col-md-6">
                            <label for="inputPassword4" class="form-label">Doctor</label>
                            <select required class="form-control" name="doct">
                                <option value="">--select--</option>
                                <%
                                    DoctorDao dao = new DoctorDao(DBConnect.getConn());
                                    List<Doctor> list = dao.getAllDoctor();
                                    for (Doctor d : list) {
                                %>
                                <option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>)
                                </option>
                                <%
                                    }
                                %>
                            </select>
                        </div>

                        <div class="col-md-12">
                            <label>Full Address</label>
                            <textarea required name="address" class="form-control" rows="3" cols=""></textarea>
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

<br>
<div class="container-fluid p-1 bg-primary text-center text-white">
    <p>&copy; hospital.com</p>
</div>

</body>
</html>
