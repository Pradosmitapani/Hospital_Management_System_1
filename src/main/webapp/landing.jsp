<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to WellSphere</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style type="text/css">
        /* 3D Background Effect */
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #1e3c72, #2a5298, #4a00e0, #8e2de2);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
            overflow: hidden;
            color: #fff;
            position: relative;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* 3D Spheres Effect */
        .bg-spheres {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 0;
            overflow: hidden;
        }
        .sphere {
            position: absolute;
            border-radius: 50%;
            background: radial-gradient(circle, rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0));
            animation: float 10s infinite ease-in-out;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.2);
        }
        .sphere:nth-child(1) {
            width: 200px;
            height: 200px;
            top: 10%;
            left: 15%;
            animation-duration: 12s;
        }
        .sphere:nth-child(2) {
            width: 150px;
            height: 150px;
            top: 60%;
            left: 70%;
            animation-duration: 15s;
        }
        .sphere:nth-child(3) {
            width: 100px;
            height: 100px;
            top: 40%;
            left: 30%;
            animation-duration: 18s;
        }
        @keyframes float {
            0%, 100% { transform: translateY(0) rotate(0deg); }
            50% { transform: translateY(-50px) rotate(180deg); }
        }

        /* Content Styling */
        .content {
            position: relative;
            z-index: 1;
            text-align: center;
            padding: 5rem 2rem;
        }
        .hero-title {
            font-size: 3.5rem;
            font-weight: 700;
            text-shadow: 2px 2px 15px rgba(0, 0, 0, 0.3);
            margin-bottom: 1rem;
        }
        .hero-subtitle {
            font-size: 1.5rem;
            font-weight: 400;
            color: #ffd700;
            margin-bottom: 2rem;
        }

        /* Notes Section */
        .notes-container {
            max-width: 800px;
            margin: 0 auto 3rem;
            padding: 2rem;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
        }
        .notes-container h3 {
            font-size: 2rem;
            font-weight: 600;
            color: #fff;
            margin-bottom: 1.5rem;
        }
        .notes-container p {
            font-size: 1.1rem;
            line-height: 1.6;
            color: #e0e0e0;
        }

        /* Get Started Button */
        .get-started-btn {
            background: linear-gradient(90deg, #ffd700, #ffaa00);
            color: #1e3c72;
            font-size: 1.2rem;
            font-weight: 600;
            padding: 12px 40px;
            border: none;
            border-radius: 25px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(255, 215, 0, 0.5);
        }
        .get-started-btn:hover {
            background: linear-gradient(90deg, #ffaa00, #ffd700);
            transform: scale(1.1);
            box-shadow: 0 6px 20px rgba(255, 215, 0, 0.8);
            color: #1e3c72;
            text-decoration: none;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .hero-title {
                font-size: 2.5rem;
            }
            .hero-subtitle {
                font-size: 1.2rem;
            }
            .notes-container {
                padding: 1.5rem;
            }
            .notes-container h3 {
                font-size: 1.5rem;
            }
            .notes-container p {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <!-- 3D Background Spheres -->
    <div class="bg-spheres">
        <div class="sphere"></div>
        <div class="sphere"></div>
        <div class="sphere"></div>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h1 class="hero-title">Welcome to WellSphere</h1>
        <p class="hero-subtitle">Your Trusted Partner in Healthcare</p>

        <!-- Notes About Hospital -->
        <div class="notes-container">
            <h3>About WellSphere</h3>
            <p>WellSphere is a state-of-the-art healthcare platform dedicated to connecting patients with top-tier medical professionals. Our mission is to provide seamless access to appointments, expert care, and personalized health solutions.</p>
            <p>With a network of skilled doctors and advanced technology, we ensure your health is in safe hands. Whether you need a routine check-up or specialized treatment, WellSphere is here to support you every step of the way.</p>
        </div>

        <!-- Get Started Button -->
        <a href="index.jsp" class="get-started-btn">Get Started</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>