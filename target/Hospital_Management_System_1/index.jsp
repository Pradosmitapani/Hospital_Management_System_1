<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index Page</title>
    <%@ include file="component/allcss.jsp" %>
    <style type="text/css">
        .paint-card {
            box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>

<%@ include file="component/navbar.jsp" %>

<!-- Carousel -->
<section id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/doctor2.jpg" class="d-block w-100" alt="..." height="500px">
        </div>
        <div class="carousel-item">
            <img src="img/all.jpg" class="d-block w-100" alt="..." height="500px">
        </div>
        <div class="carousel-item">
            <img src="img/doct88.jpg" class="d-block w-100" alt="..." height="500px">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</section>

<!-- Key Features Section -->
<section class="container p-3">
    <h2 class="text-center">Key Features of our Hospital</h2>
    <div class="row">
        <div class="col-md-8 p-5">
            <div class="row">
                <c:forEach var="feature" items="${features}">
                    <div class="col-md-6">
                        <div class="card paint-card">
                            <div class="card-body">
                                <p class="fs-5">${feature.title}</p>
                                <p>${feature.description}</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="col-md-4">
            <img alt="" src="img/doct1.jpg" height="380px">
        </div>
    </div>
</section>

<!-- Our Team Section -->
<section class="container p-2">
    <h2 class="text-center">Our Team</h2>
    <div class="row">
        <c:forEach var="doctor" items="${doctors}">
            <div class="col-md-3">
                <div class="card paint-card">
                    <div class="card-body text-center">
                        <img src="${doctor.image}" width="255px" height="250px">
                        <p class="fw-bold fs-5">${doctor.name}</p>
                        <p class="fs-7">(${doctor.position})</p>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</section>

</body>
</html>
