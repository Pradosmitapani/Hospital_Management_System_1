<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index Page</title>
    <!-- Add Css from component module -->
    <%@ include file="component/allcss.jsp" %>

    <!-- CSS for styling -->
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f8fb;
        }

        .paint-card {
            box-shadow: 0 0 15px rgba(0, 123, 255, 0.2);
            transition: transform 0.3s;
        }

        .paint-card:hover {
            transform: scale(1.05);
        }

        .carousel-item img {
            object-fit: cover;
            filter: brightness(85%);
            transition: filter 0.3s;
        }

        .carousel-item:hover img {
            filter: brightness(100%);
        }

        .container p.fs-2 {
            font-weight: bold;
            color: #007bff;
            padding-top: 10px;
        }

        .card-body img {
            border-radius: 50%;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease-in-out;
        }

        .card-body:hover img {
            transform: scale(1.1);
        }

        footer.bg-dark {
            background-color: #333;
        }
    </style>

</head>
<!-- Body part start -->
<body>
<!-- Add navbar from component module -->
<%@ include file="component/navbar.jsp" %>

<!-- Carousel -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <!-- Add First image in Carousel -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/WellSphere_01.jpg" class="d-block w-100" alt="Slide 1" style="height: 600px; object-fit:cover; object-position: 60% 30%;">
            <div class="carousel-caption d-none d-md-block">
                <h5 style="color: white;">Welcome to Our Hospital</h5>
                <p style="color: #f1f1f1;">Providing comprehensive healthcare with dedication and innovation.</p>
            </div>
        </div>
        <!-- Add Second image in Carousel -->
        <div class="carousel-item">
            <img src="img/all1.jpg" class="d-block w-100" alt="Slide 2" height="600px">
            <div class="carousel-caption d-none d-md-block">
                <h5 style="color: white;">Exceptional Patient Care</h5>
                <p style="color: #f1f1f1;">Our staff is dedicated to ensuring your well-being.</p>
            </div>
        </div>
        <!-- Add Third image in Carousel -->
        <div class="carousel-item">
            <img src="img/doct88.jpg" class="d-block w-100" alt="Slide 3" style="height: 600px; object-fit:cover; object-position: 80% 30%;">
            <div class="carousel-caption d-none d-md-block">
                <h5 style="color: white;">Innovative Medical Research</h5>
                <p style="color: #f1f1f1;">Pioneering treatments and advancing medical knowledge.</p>
            </div>
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
</div>

<!-- Key Features Section -->
<div class="container p-3">
    <p class="text-center fs-2">Key Features of our Hospital</p>
    <div class="row">
        <div class="col-md-8 p-5">
            <div class="row">
                <div class="row g-3">
                    <div class="col-md-6">
                        <div class="card paint-card h-100 d-flex flex-column">
                            <div class="card-body text-center flex-grow-1">
                                <i class="fa fa-shield-alt fs-3 text-primary"></i>
                                <p class="fs-5 mt-2 fw-bold">100% Safety</p>
                                <p class="text-muted">Ensuring patient care, hygiene, trained staff, protocols, and equipment reliability.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="card paint-card h-100 d-flex flex-column">
                            <div class="card-body text-center flex-grow-1">
                                <i class="fa fa-leaf fs-3 text-primary"></i>
                                <p class="fs-5 mt-2 fw-bold">Clean Environment</p>
                                <p class="text-muted">Maintain hygiene, disinfect surfaces, proper waste disposal, sterile equipment, ventilation.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="card paint-card h-100 d-flex flex-column">
                            <div class="card-body text-center flex-grow-1">
                                <i class="fa fa-user-md fs-3 text-primary"></i>
                                <p class="fs-5 mt-2 fw-bold">Friendly Doctors</p>
                                <p class="text-muted">Approachable, compassionate, attentive, patient-focused, supportive, empathetic, understanding.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="card paint-card h-100 d-flex flex-column">
                            <div class="card-body text-center flex-grow-1">
                                <i class="fa fa-flask fs-3 text-primary"></i>
                                <p class="fs-5 mt-2 fw-bold">Medical Research</p>
                                <p class="text-muted">Innovative studies, clinical trials, data analysis, patient participation, advancing treatments.</p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="col-md-4 d-flex flex-column align-items-center">
            <img alt="Hospital Team" src="img/doct1.jpg" class="img-fluid rounded"
                 style="height: 380px; width: 100%; object-fit: cover; margin-top:85px;">
        </div>
    </div>
</div>

<hr>

<!-- Team Section -->
<div class="container p-2">
    <p class="text-center fs-2">Our Team</p>
    <div class="row">
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/doct8.jpg" width="200px" height="200px">
                    <p class="fw-bold fs-5">Dr. Siva Kumar</p>
                    <p class="fs-7">(CEO & Chairman)</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/doct7.jpg" width="200px" height="200px">
                    <p class="fw-bold fs-5">Dr. Samuani Simi</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/doct11.jpg" width="200px" height="200px">
                    <p class="fw-bold fs-5">Dr. Mathue Samuel</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/doct2.jpg" width="200px" height="200px">
                    <p class="fw-bold fs-5">Dr. Siva Niuise Paule</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer Section -->
<footer class="bg-dark text-white py-4">
    <div class="container">
        <div class="row">
            <!-- About Us Section -->
            <div class="col-md-4">
                <h5>About Us</h5>
                <p>Our hospital provides quality healthcare services and advanced medical research to ensure the best care for our patients.</p>
            </div>

            <!-- Quick Links Section -->
            <div class="col-md-2">
                <h5>Quick Links</h5>
                <ul class="list-unstyled">
                    <li><a href="index.jsp" class="text-white text-decoration-none">Home</a></li>
                    <li><a href="admin_login.jsp" class="text-white text-decoration-none">Admin</a></li>
                    <li><a href="doctor_login.jsp" class="text-white text-decoration-none">Doctor</a></li>
                    <li><a href="user_appointment.jsp" class="text-white text-decoration-none">Appointment</a></li>
                    <li><a href="user_login.jsp" class="text-white text-decoration-none">User</a></li>
                </ul>
            </div>

            <!-- Contact Section -->
            <div class="col-md-3">
                <h5>Contact</h5>
                <p>Email: wellsphere@hospital.com</p>
                <p>Phone: (123) 456-7890</p>
                <p>Address: 123 Wellness Street, Health City</p>
            </div>

            <!-- Social Media Links -->
            <div class="col-md-3">
                <h5>Follow Us</h5>
                <a href="#" class="text-white me-2"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="text-white me-2"><i class="fab fa-twitter"></i></a>
                <a href="#" class="text-white me-2"><i class="fab fa-instagram"></i></a>
                <a href="#" class="text-white"><i class="fab fa-linkedin-in"></i></a>
            </div>
        </div>

        <hr class="bg-light">

        <!-- Copyright & Terms -->
        <div class="text-center">
            <p class="mb-0">&copy; 2025 WellSphere Hospital. All Rights Reserved.</p>
            <a href="#" class="text-white text-decoration-none">Terms of Service</a> |
            <a href="#" class="text-white text-decoration-none">Privacy Policy</a>
        </div>
    </div>
</footer>
</body>
