<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--JSTL URI PATH--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false"%>
<html>
<head>
    <title>Register Page</title>
    <%@include file="component/allcss.jsp"%>
    <%--Shaddow in all page--%>
    <style type="text/css">
        body {
            background-image: url('img/all1.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #fff;
        }

        .paint-card {
            box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
        }

        .form-Label {
            font-weight: bold;
            color: #333;  /* Dark color for labels */
        }

        input.form-control {
            background-color: #f9f9f9;  /* Light background for input fields */
            color: #333;  /* Dark text color for better readability */
        }

        input::placeholder {
            color: #777;  /* Light gray color for placeholder text */
        }

        button[type="submit"] {
            background-color: #28a745;  /* Green color for the button */
            color: white;
        }

        button[type="submit"]:hover {
            background-color: #218838;  /* Darker green on hover */
        }
    </style>
</head>
<body>
<%@include file="component/navbar.jsp"%>

<div class="container p-5">

    <div class="row">

        <div class="col-md-4 offset-md-4">

            <div class="card paint-card">

                <div class="card-body">

                    <h2 class="text-center mb-4" style="color: #003366;">User Register</h2>

                    <%--Session create--%>
                    <c:if test="${not empty sucMsg}">
                        <p class="text-center text-success fs-3">${sucMsg}</p>
                        <c:remove var="sucMsg" scope="session"/>
                    </c:if>

                    <c:if test="${not empty errorMsg}">
                        <p class="text-center text-danger fs-3">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session"/>
                    </c:if>

                    <form action="user_register" method="post">

                        <div class="mb-3">
                            <label class="form-Label">Full Name</label>
                            <input required name="fullname" type="text" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-Label">Email</label>
                            <input required name="email" type="email" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-Label">Password</label>
                            <input required name="password" type="password" class="form-control">
                        </div>

                        <button type="submit" class="btn bg-success text-white col-md-12">Register</button>

                    </form>

                </div>

            </div>

        </div>

    </div>

</div>

</body>
</html>
