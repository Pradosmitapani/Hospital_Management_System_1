<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Doctor</title>
    <%@include file="../component/allcss.jsp"%>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style type="text/css">
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }

        .paint-card {
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            background-color: white;
            padding: 20px;
        }

        .paint-card:hover {
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }

        .fs-3 {
            font-size: 1.75rem;
        }

        .form-label {
            font-weight: bold;
            color: #333;
        }

        .form-control {
            border-radius: 8px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            transition: border-color 0.3s ease;
        }

        .form-control:focus {
            border-color: #28a745;
            box-shadow: 0 0 8px rgba(40, 167, 69, 0.3);
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

        .alert {
            border-radius: 8px;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .fs-3 {
                font-size: 1.5rem;
            }

            .col-md-5 {
                margin-top: 20px;
            }

            .card-body {
                padding: 15px;
            }

            .form-control {
                font-size: 0.9rem;
            }

            .btn-primary {
                width: 100%;
            }
        }

    </style>
</head>
<body>
<%@include file="navbar.jsp"%>

<div class="container-fluid p-3">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card paint-card">
                <div class="card-body">
                    <h3 class="fs-3 text-center mb-4">Add Doctor</h3>

                    <c:if test="${not empty errorMsg}">
                        <p class="fs-4 text-center text-danger">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session" />
                    </c:if>

                    <c:if test="${not empty succMsg}">
                        <div class="fs-4 text-center text-success" role="alert">${succMsg}</div>
                        <c:remove var="succMsg" scope="session" />
                    </c:if>

                    <form action="../addDoctor" method="post">
                        <div class="mb-3">
                            <label class="form-label">Full Name</label>
                            <input type="text" name="fullname" class="form-control" required placeholder="Enter full name">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">DOB</label>
                            <input type="date" name="dob" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Qualification</label>
                            <input type="text" name="qualification" class="form-control" required placeholder="Enter qualification">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Specialist</label>
                            <select name="spec" class="form-control" required>
                                <option>--select--</option>
                                <%
                                    SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
                                    List<Specalist> list = dao.getAllSpecialist();
                                    for (Specalist s : list) {
                                %>
                                <option><%= s.getSpecialistName() %></option>
                                <%
                                    }
                                %>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" name="email" class="form-control" required placeholder="Enter email address">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Mobile No</label>
                            <input type="text" name="mobno" class="form-control" required placeholder="Enter mobile number">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" name="password" class="form-control" required placeholder="Enter password">
                        </div>

                        <div class="text-center mt-4">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
