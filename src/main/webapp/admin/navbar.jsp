<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600;700&family=Roboto:wght@500&display=swap" rel="stylesheet">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style type="text/css">
        /* Animated Gradient Background for Navbar */
        .navbar {
            background: linear-gradient(135deg, #047857, #10b981, #34d399, #6ee7b7);
            background-size: 400% 400%;
            animation: gradientBG 10s ease infinite;
            padding: 1rem 2rem;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Navbar Brand Styling */
        .navbar-brand {
            font-family: 'Poppins', sans-serif;
            font-size: 1.8rem;
            font-weight: 700;
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: all 0.3s ease;
        }
        .navbar-brand:hover {
            color: #fef08a;
            transform: scale(1.05);
        }

        /* Nav Link Styling */
        .nav-link {
            color: #fff !important;
            font-family: 'Roboto', sans-serif;
            font-size: 1.1rem;
            font-weight: 500;
            padding: 0.5rem 1.2rem !important;
            transition: all 0.3s ease;
            position: relative;
        }
        .nav-link:hover, .nav-link.active {
            color: #fef08a !important;
            transform: translateY(-2px);
        }
        .nav-link::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: 0;
            left: 50%;
            background: #fef08a;
            transition: all 0.3s ease;
            transform: translateX(-50%);
        }
        .nav-link:hover::after, .nav-link.active::after {
            width: 50%;
        }

        /* Dropdown Button Styling */
        .btn-light {
            background: linear-gradient(90deg, #fef08a, #fde047);
            color: #047857;
            font-weight: 600;
            border: none;
            border-radius: 20px;
            padding: 0.5rem 1.2rem;
            transition: all 0.3s ease;
            box-shadow: 0 4px 10px rgba(254, 240, 138, 0.4);
        }
        .btn-light:hover {
            background: linear-gradient(90deg, #fde047, #fef08a);
            transform: scale(1.05);
            box-shadow: 0 6px 15px rgba(254, 240, 138, 0.6);
            color: #047857;
        }

        /* Dropdown Menu Styling */
        .dropdown-menu {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(5px);
            border: none;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            margin-top: 0.5rem;
        }
        .dropdown-item {
            color: #047857;
            font-weight: 500;
            padding: 0.5rem 1.5rem;
            transition: all 0.3s ease;
        }
        .dropdown-item:hover {
            background: #34d399;
            color: #fff;
        }

        /* Toggler Icon Styling */
        .navbar-toggler {
            border: none;
            color: #fff;
        }
        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba(255, 255, 255, 1)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
        }

        /* Responsive Adjustments */
        @media (max-width: 991px) {
            .navbar-nav {
                text-align: center;
                padding: 1rem 0;
                background: rgba(4, 120, 87, 0.9);
                border-radius: 10px;
                margin-top: 0.5rem;
            }
            .nav-item {
                margin: 0.5rem 0;
            }
            .dropdown-menu {
                text-align: center;
                width: 100%;
            }
            .btn-light {
                margin: 0.5rem auto;
                display: block;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="../index.jsp">WELLSPHERE</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" href="index.jsp">HOME</a></li>
                    <li class="nav-item"><a class="nav-link active" href="doctor.jsp">DOCTOR</a></li>
                    <li class="nav-item"><a class="nav-link active" href="view_doctor.jsp">VIEW DOCTOR</a></li>
                    <li class="nav-item"><a class="nav-link active" href="patient.jsp">PATIENT</a></li>
                </ul>
                <form class="d-flex">
                    <div class="dropdown">
                        <button class="btn btn-light dropdown-toggle" type="button"
                                id="dropdownMenuButton1" data-bs-toggle="dropdown"
                                aria-expanded="false">
                            Admin
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
                        </ul>
                    </div>
                </form>
            </div>
        </div>
    </nav>

    <!-- Bootstrap & jQuery (Required for Dropdown) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FontAwesome (For Icons, though not used here) -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/js/all.min.js"></script>
</body>
</html>