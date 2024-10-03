
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Dashboard</title>
    <%@include file="../component/allcss.jsp"%>

    <style type="text/css">
        .paint-card {
            box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>

<%@include file="navbar.jsp"%>


<div class="container p-5">
    <p class="text/center fs-3">Admin Dashboard</p>
    <c:if test="${not empty errorMsg}">
        <p class="fs-3 text-center text-danger">${errorMsg}</p>
        <c:remove var="errorMsg" scope="session" />
    </c:if>

    <c:if test="${not empty succMsg}">
        <p class="fs-3 text-center text-danger">${succMsg}</p>
        <c:remove var="succMsg" scope="session" />
    </c:if>

    <div class="row">
        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center text-success">
                    <i class="fas fa-user-md fa-3x"></i><br>
                    <p class="fs-4 text-center">Doctor <br>10
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center text-success">
                    <i class="fas fa-user circle fa-3x"></i><br>
                    <p class="fs-4 text-center">User <br>100
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card paint-card">
                <div class="card-body text-center text-success">
                    <i class="fas fa-user circle fa-3x"></i><br>
                    <p class="fs-4 text-center">Total Appointment <br>400
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mt-2">
            <div class="card paint-card" data-bs-toggle="model" data-bs-target="#exampleModel">
                <div class="card-body text-center text-success">
                    <i class="fas fa-user circle fa-3x"></i><br>
                    <p class="fs-4 text-center">Specialist <br>21
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mt-2">
            <div class="card paint-card" data-bs-toggle="model" data-bs-target="#exampleModel">
                <div class="card-body text-center text-success">
                    <i class="fas fa-user circle fa-3x"></i><br>
                    <p class="fs-4 text-center">Patient <br>1003
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mt-2">
            <div class="card paint-card" data-bs-toggle="model" data-bs-target="#exampleModel">
                <div class="card-body text-center text-success">
                    <i class="fas fa-user circle fa-3x"></i><br>
                    <p class="fs-4 text-center">Compunder <br>5
                    </p>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>





</body>
</html>
