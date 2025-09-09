<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index Page - WellSphere</title>
    <%@ include file="component/allcss.jsp" %>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
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
            position: relative;
            overflow-x: hidden;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Subtle Overlay for Depth */
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.1);
            z-index: -1;
        }

        /* Card Styling */
        .paint-card {
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            overflow: hidden;
        }
        .paint-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 35px rgba(0, 0, 0, 0.25);
        }

        /* Carousel Styling */
        .carousel-item {
            position: relative;
        }
        .carousel-item img {
            object-fit: cover;
            height: 600px;
            filter: brightness(75%) contrast(110%);
            transition: filter 0.5s ease, transform 0.5s ease;
        }
        .carousel-item:hover img {
            filter: brightness(100%) contrast(100%);
            transform: scale(1.02);
        }
        .carousel-caption {
            background: rgba(0, 0, 0, 0.6);
            border-radius: 15px;
            padding: 20px;
            transform: translateY(20px);
            transition: transform 0.3s ease;
        }
        .carousel-item:hover .carousel-caption {
            transform: translateY(0);
        }
        .carousel-caption h5 {
            font-size: 2.2rem;
            font-weight: 700;
            color: #fff;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);
        }
        .carousel-caption p {
            font-size: 1.3rem;
            color: #e0f2fe;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
        }
        .carousel-control-prev-icon, .carousel-control-next-icon {
            background-color: #38bdf8;
            border-radius: 50%;
            padding: 10px;
        }

        /* Section Headers */
        .container p.fs-2 {
            font-size: 2.5rem;
            font-weight: 700;
            color: #1e3a8a;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 2rem;
            position: relative;
            text-align: center;
        }
        .container p.fs-2::after {
            content: '';
            position: absolute;
            width: 60px;
            height: 4px;
            background: #38bdf8;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            border-radius: 2px;
        }

        /* Card Body Styling */
        .card-body {
            padding: 25px;
        }
        .card-body i {
            color: #38bdf8;
            font-size: 2.5rem;
            transition: transform 0.3s ease;
        }
        .card-body:hover i {
            transform: scale(1.2);
        }
        .card-body p.fs-5 {
            font-weight: 600;
            color: #1e3a8a;
            margin-top: 15px;
        }
        .card-body p.text-muted {
            font-size: 0.95rem;
            line-height: 1.5;
        }
        .card-body img {
            border-radius: 50%;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card-body:hover img {
            transform: scale(1.1);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
        }

        /* Team Section Image */
        .col-md-4 img {
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .col-md-4:hover img {
            transform: scale(1.05);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
        }

        /* Footer Styling */
        footer.bg-dark {
            background: linear-gradient(90deg, #1e3a8a, #38bdf8);
            padding: 3rem 0;
            position: relative;
            overflow: hidden;
        }
        footer h5 {
            color: #fff;
            font-weight: 700;
            position: relative;
            margin-bottom: 1.5rem;
        }
        footer h5::after {
            content: '';
            position: absolute;
            width: 40px;
            height: 2px;
            background: #e0f2fe;
            bottom: -5px;
            left: 0;
        }
        footer p, footer a {
            color: #e0f2fe;
            transition: color 0.3s ease;
        }
        footer a:hover {
            color: #fff;
        }
        footer .social-icons a {
            font-size: 1.5rem;
            margin-right: 15px;
            transition: transform 0.3s ease;
        }
        footer .social-icons a:hover {
            transform: scale(1.2);
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .carousel-item img {
                height: 400px;
            }
            .carousel-caption h5 {
                font-size: 1.5rem;
            }
            .carousel-caption p {
                font-size: 1rem;
            }
            .container p.fs-2 {
                font-size: 1.75rem;
            }
            .card-body p.fs-5 {
                font-size: 1.25rem;
            }
            .card-body i {
                font-size: 2rem;
            }
            .col-md-4 img {
                margin-top: 20px;
            }
            footer {
                padding: 2rem 0;
            }
        }
    </style>
</head>
<body>
<%@ include file="component/navbar.jsp" %>

<!-- Carousel -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/WellSphere_01.jpg" class="d-block w-100" alt="Slide 1" style="height: 600px; object-fit: cover; object-position: 60% 30%;">
            <div class="carousel-caption d-none d-md-block">
                <h5>Welcome to Our Hospital</h5>
                <p>Providing comprehensive healthcare with dedication and innovation.</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="img/all1.jpg" class="d-block w-100" alt="Slide 2" style="height: 600px;">
            <div class="carousel-caption d-none d-md-block">
                <h5>Exceptional Patient Care</h5>
                <p>Our staff is dedicated to ensuring your well-being.</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="img/doct88.jpg" class="d-block w-100" alt="Slide 3" style="height: 600px; object-fit: cover; object-position: 80% 30%;">
            <div class="carousel-caption d-none d-md-block">
                <h5>Innovative Medical Research</h5>
                <p>Pioneering treatments and advancing medical knowledge.</p>
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
    <p class="text-center fs-2">Key Features of Our Hospital</p>
    <div class="row">
        <div class="col-md-8 p-5">
            <div class="row g-3">
                <div class="col-md-6">
                    <div class="card paint-card h-100 d-flex flex-column">
                        <div class="card-body text-center flex-grow-1">
                            <i class="fa fa-shield-alt"></i>
                            <p class="fs-5 mt-2 fw-bold">100% Safety</p>
                            <p class="text-muted">Ensuring patient care, hygiene, trained staff, protocols, and equipment reliability.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card paint-card h-100 d-flex flex-column">
                        <div class="card-body text-center flex-grow-1">
                            <i class="fa fa-leaf"></i>
                            <p class="fs-5 mt-2 fw-bold">Clean Environment</p>
                            <p class="text-muted">Maintain hygiene, disinfect surfaces, proper waste disposal, sterile equipment, ventilation.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card paint-card h-100 d-flex flex-column">
                        <div class="card-body text-center flex-grow-1">
                            <i class="fa fa-user-md"></i>
                            <p class="fs-5 mt-2 fw-bold">Friendly Doctors</p>
                            <p class="text-muted">Approachable, compassionate, attentive, patient-focused, supportive, empathetic, understanding.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card paint-card h-100 d-flex flex-column">
                        <div class="card-body text-center flex-grow-1">
                            <i class="fa fa-flask"></i>
                            <p class="fs-5 mt-2 fw-bold">Medical Research</p>
                            <p class="text-muted">Innovative studies, clinical trials, data analysis, patient participation, advancing treatments.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 d-flex flex-column align-items-center">
            <img alt="Hospital Team" src="img/doctor2.jpg" class="img-fluid" style="height: 380px; width: 100%; object-fit: cover; margin-top: 85px;">
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
                    <img src="img/ranjit.jpg" width="200px" height="200px">
                    <p class="fw-bold fs-5">Dr.Ranjit Dwibedy</p>
                    <p class="fs-7">(CEO & Chairman)</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/pani.jpg" width="200px" height="200px">
                    <p class="fw-bold fs-5">Dr.Pradosmita Pani</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/sahoo1.jpg" width="200px" height="200px">
                    <p class="fw-bold fs-5">Dr.Madhusmita Sahoo</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/doct2.jpg" width="200px" height="200px">
                    <p class="fw-bold fs-5">Dr.Rajashree Rout</p>
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
            <div class="col-md-4">
                <h5>About Us</h5>
                <p>Our hospital provides quality healthcare services and advanced medical research to ensure the best care for our patients.</p>
            </div>
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
            <div class="col-md-3">
                <h5>Contact</h5>
                <p>Email: wellsphere@hospital.com</p>
                <p>Phone: (123) 456-7890</p>
                <p>Address: 123 Wellness Street, Health City</p>
            </div>
            <div class="col-md-3">
                <h5>Follow Us</h5>
                <div class="social-icons">
                    <a href="#" class="text-white me-2"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="text-white me-2"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="text-white me-2"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="text-white"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        </div>
        <hr class="bg-light">
        <div class="text-center">
            <p class="mb-0">© 2025 WellSphere Hospital. All Rights Reserved.</p>
            <a href="#" class="text-white text-decoration-none">Terms of Service</a> |
            <a href="#" class="text-white text-decoration-none">Privacy Policy</a>
        </div>
    </div>
</footer>
</body>
</html>