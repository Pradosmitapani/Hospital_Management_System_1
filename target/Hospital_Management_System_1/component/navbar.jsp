<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        /* Custom Navbar Styling */
        .navbar {
            background: linear-gradient(135deg, #4A00E0, #8E2DE2); /* Unique gradient */
            padding: 1rem 2rem;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            transition: all 0.3s ease;
        }

        .navbar-brand {
            font-family: 'Poppins', sans-serif;
            font-size: 1.8rem;
            font-weight: 700;
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: transform 0.3s ease;
        }

        .navbar-brand:hover {
            transform: scale(1.05);
            color: #FFD700; /* Gold hover effect */
        }

        .nav-link {
            color: #fff !important;
            font-family: 'Roboto', sans-serif;
            font-size: 1.1rem;
            font-weight: 500;
            padding: 0.5rem 1.2rem !important;
            transition: all 0.3s ease;
        }

        .nav-link:hover {
            color: #FFD700 !important;
            transform: translateY(-2px);
        }

        .nav-item {
            margin: 0 0.5rem;
        }

        .dropdown-menu {
            background: #fff;
            border: none;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .dropdown-item {
            color: #4A00E0;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .dropdown-item:hover {
            background: #8E2DE2;
            color: #fff;
        }

        .btn-custom {
            background: #FFD700;
            color: #4A00E0;
            font-weight: 600;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 20px;
            transition: all 0.3s ease;
        }

        .btn-custom:hover {
            background: #fff;
            color: #8E2DE2;
            transform: scale(1.05);
        }

        /* Responsive Adjustments */
        @media (max-width: 991px) {
            .navbar-nav {
                text-align: center;
                padding: 1rem 0;
            }
            .nav-item {
                margin: 0.5rem 0;
            }
            .dropdown-menu {
                text-align: center;
            }
        }
    </style>
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&family=Roboto:wght@500&display=swap" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">WellSphere</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <c:if test="${empty userObj}">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fa-solid fa-right-to-bracket"></i> Admin</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="doctor_login.jsp"><i class="fa-solid fa-user-doctor"></i> Doctor</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="user_appointment.jsp"><i class="fa-solid fa-calendar-check"></i> Appointment</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="user_login.jsp"><i class="fa-solid fa-user"></i> User</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="contact_us.jsp"><i class="fa-solid fa-envelope"></i> Contact Us</a>
          </li>
        </c:if>

        <c:if test="${not empty userObj}">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="user_appointment.jsp"><i class="fa-solid fa-calendar-check"></i> Appointment</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="view_appointment.jsp"><i class="fa-solid fa-eye"></i> View Appointment</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="contact_us.jsp"><i class="fa-solid fa-envelope"></i> Contact Us</a>
          </li>
          <li class="nav-item dropdown">
            <button class="btn btn-custom dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
              <i class="fa-solid fa-circle-user"></i> ${userObj.fullName}
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
              <li><a class="dropdown-item" href="change_password.jsp"><i class="fa-solid fa-key"></i> Change Password</a></li>
              <li><a class="dropdown-item" href="userLogout"><i class="fa-solid fa-right-from-bracket"></i> Logout</a></li>
            </ul>
          </li>
        </c:if>
      </ul>
    </div>
  </div>
</nav>
</body>
</html>