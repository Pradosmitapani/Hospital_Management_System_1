<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin login page</title>
<%@include file="component/allcss.jsp"%>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<!-- Footer Section -->
    <footer style="background: rgba(135, 206, 250, 0.3); backdrop-filter: blur(10px); color: #fff; padding: 40px 20px; text-align: center; position: relative; z-index: 1;">
        <div style="max-width: 1200px; margin: 0 auto;">
            <!-- Additional Information -->
            <div style="display: flex; justify-content: space-between; flex-wrap: wrap; margin-bottom: 30px;">
                <div style="flex: 1; min-width: 200px; padding: 10px;">
                    <h3 style="margin-bottom: 20px; font-size: 1.8em; color: #007BFF;">About Us</h3>
                    <p style="color: black; line-height: 1.6;">We are a healthcare company dedicated to providing the best services to our customers. Our mission is to improve lives by offering top-quality health solutions.</p>
                </div>
                <div style="flex: 1; min-width: 200px; padding: 10px;">
                    <h3 style="margin-bottom: 20px; font-size: 1.8em; color: #007BFF;">Quick Links</h3>
                    <ul style="list-style: none; padding: 0; color: black; line-height: 1.6;">
                        <li><a href="#" style="color: black; text-decoration: none; transition: color 0.3s;">Home</a></li>
                        <li><a href="#" style="color: black; text-decoration: none; transition: color 0.3s;">Services</a></li>
                        <li><a href="#" style="color: black; text-decoration: none; transition: color 0.3s;">About Us</a></li>
                        <li><a href="#" style="color: black; text-decoration: none; transition: color 0.3s;">Contact</a></li>
                    </ul>
                </div>
                <div style="flex: 1; min-width: 200px; padding: 10px;">
                    <h3 style="margin-bottom: 20px; font-size: 1.8em; color: #007BFF;">Contact Us</h3>
                    <p style="color: black; line-height: 1.6;">123 Health St, Wellness City, HC 12345</p>
                    <p style="color: black; line-height: 1.6;">Phone: (123) 456-7890</p>
                    <p style="color: black; line-height: 1.6;">Email: doctors77@healthcare.com</p>
                </div>
            </div>
            
            <!-- Contact Form -->
            <div style="margin-bottom: 30px;">
                <h3 style="margin-bottom: 20px; font-size: 1.8em; color: #007BFF;">Send Us a Message</h3>
                <form>
                    <div style="margin-bottom: 15px;">
                        <input type="text" name="name" placeholder="Your Name" required style="width: 100%; padding: 12px; border-radius: 8px; border: 1px solid #ddd; font-size: 1em; background: rgba(255, 255, 255, 0.3); color: #333; transition: background 0.3s, border-color 0.3s;">
                    </div>
                    <div style="margin-bottom: 15px;">
                        <input type="email" name="email" placeholder="Your Email" required style="width: 100%; padding: 12px; border-radius: 8px; border: 1px solid #ddd; font-size: 1em; background: rgba(255, 255, 255, 0.3); color: #333; transition: background 0.3s, border-color 0.3s;">
                    </div>
                    <div style="margin-bottom: 15px;">
                        <textarea name="message" placeholder="Your Message" rows="5" required style="width: 100%; padding: 12px; border-radius: 8px; border: 1px solid #ddd; font-size: 1em; background: rgba(255, 255, 255, 0.3); color: #333; transition: background 0.3s, border-color 0.3s;"></textarea>
                    </div>
                    <button type="submit" style="background-color: #007BFF; color: #fff; padding: 12px 25px; border: none; border-radius: 8px; font-size: 1.1em; cursor: pointer; transition: background-color 0.3s, transform 0.3s;">Send Message</button>
                </form>
            </div>

            <!-- Social Media Icons -->
            <div style="margin-top: 30px;">
                <a href="#" style="color: #fff; margin: 0 15px; text-decoration: none; font-size: 1.8em; transition: color 0.3s;">
                    <img src="https://img.icons8.com/ios-filled/50/ffffff/facebook-new.png" alt="Facebook" style="width: 30px;">
                </a>
                <a href="#" style="color: #fff; margin: 0 15px; text-decoration: none; font-size: 1.8em; transition: color 0.3s;">
                    <img src="https://img.icons8.com/ios-filled/50/ffffff/twitter.png" alt="Twitter" style="width: 30px;">
                </a>
                <a href="#" style="color: #fff; margin: 0 15px; text-decoration: none; font-size: 1.8em; transition: color 0.3s;">
                    <img src="https://img.icons8.com/ios-filled/50/ffffff/instagram-new.png" alt="Instagram" style="width: 30px;">
                </a>
                <a href="#" style="color: #fff; margin: 0 15px; text-decoration: none; font-size: 1.8em; transition: color 0.3s;">
                    <img src="https://img.icons8.com/ios-filled/50/ffffff/linkedin.png" alt="LinkedIn" style="width: 30px;">
                </a>
            </div>
        </div>
    </foote> 
    
  
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
      © 2024 Copyright:
      <a class="text-white" href="https://mdbootstrap.com/">Doctors Center Hospital</a>
    </div>
    <!-- Copyright -->
  </footer>
  
</div>
<!-- End of .container -->
</body>
</html>