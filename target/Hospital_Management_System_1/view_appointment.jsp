<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="component/allcss.jsp"%>
    <style type="text/css">
        .paint-card{
            box-shadow: 0 0 8px 0 rgba(0,0,0,0.3);
        }
        .backImg{
            background: linear-gradient(rgba(0,0,0,.4), rgba(0,0,0,.4)),
            url("img/4pp.jpg");
            height:20vh ;
            width: 100%;
            background-size: cover;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<div class="container-fulid backImg p-5">
    <p class="text=-center fs-2 text-white"></p>
</div>
<div class="container p-3"></div>
<div class="row">
    <div class="col-md-9">
        <div class=" card paint-card">
            <div class="card-body">
                <p class="fs-4 fw-bold text-center text-success">Appointment List</p>
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
                    <tr>
                        <th></th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>

                    </tr>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
    <div class="col-md-3 p-3">
        <img alt="" src="img/doct9.jpg">
    </div>
    </div>
</div>

</body>
</html>
