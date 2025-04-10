<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us - WellSphere</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            min-height: 100vh;
        }

        .contact-container {
            margin-top: 50px;
            padding: 40px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
        }

        .contact-header {
            font-family: 'Poppins', sans-serif;
            color: #4A00E0;
            font-size: 2.5rem;
            font-weight: 700;
            text-align: center;
            margin-bottom: 30px;
        }

        .form-label {
            color: #8E2DE2;
            font-weight: 500;
        }

        .form-control, .form-control:focus {
            border-radius: 10px;
            border: 1px solid #8E2DE2;
            box-shadow: none;
        }

        .btn-submit {
            background: linear-gradient(135deg, #4A00E0, #8E2DE2);
            color: #fff;
            font-weight: 600;
            padding: 10px 30px;
            border: none;
            border-radius: 25px;
            transition: all 0.3s ease;
        }

        .btn-submit:hover {
            background: linear-gradient(135deg, #8E2DE2, #4A00E0);
            transform: translateY(-2px);
            color: #FFD700;
        }

        .contact-info {
            background: linear-gradient(135deg, #4A00E0, #8E2DE2);
            color: #fff;
            padding: 30px;
            border-radius: 15px;
            height: 100%;
        }

        .contact-info h4 {
            font-family: 'Poppins', sans-serif;
            font-size: 1.5rem;
            margin-bottom: 20px;
        }

        .contact-info p, .contact-info a {
            color: #FFD700;
            font-size: 1.1rem;
            margin-bottom: 15px;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .contact-info a:hover {
            color: #fff;
        }

        .icon {
            margin-right: 10px;
            color: #FFD700;
        }

        /* Responsive Adjustments */
        @media (max-width: 767px) {
            .contact-container {
                padding: 20px;
            }
            .contact-header {
                font-size: 2rem;
            }
            .contact-info {
                margin-top: 30px;
            }
        }
    </style>
</head>
<body>
    <!-- Include Navbar (Assuming it's in a separate file or already included) -->
    <%@include file="component/navbar.jsp"%>

    <div class="container contact-container">
        <h1 class="contact-header">Contact Us</h1>
        <div class="row">
            <!-- Contact Form -->
            <div class="col-md-6">
                <form action="submit_contact.jsp" method="post">
                    <div class="mb-3">
                        <label for="name" class="form-label">Full Name</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email Address</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                    </div>
                    <div class="mb-3">
                        <label for="subject" class="form-label">Subject</label>
                        <input type="text" class="form-control" id="subject" name="subject" placeholder="Enter subject" required>
                    </div>
                    <div class="mb-3">
                        <label for="message" class="form-label">Message</label>
                        <textarea class="form-control" id="message" name="message" rows="5" placeholder="Your message here..." required></textarea>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-submit">Send Message</button>
                    </div>
                </form>
            </div>

            <!-- Contact Information -->
            <div class="col-md-6">
                <div class="contact-info">
                    <h4>Get in Touch</h4>
                    <p><i class="fas fa-map-marker-alt icon"></i> 123 WellSphere Lane, Health City, HC 45678</p>
                    <p><i class="fas fa-phone-alt icon"></i> +1 (555) 123-4567</p>
                    <p><i class="fas fa-envelope icon"></i> <a href="mailto:support@wellsphere.com">support@wellsphere.com</a></p>
                    <p><i class="fas fa-globe icon"></i> <a href="https://www.wellsphere.com" target="_blank">www.wellsphere.com</a></p>
                    <p><i class="fab fa-twitter icon"></i> <a href="https://twitter.com/wellsphere" target="_blank">@WellSphere</a></p>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS (for form responsiveness) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
