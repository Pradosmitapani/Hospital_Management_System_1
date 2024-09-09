<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <%@include file="component/allcss.jsp"%>
    <style>
        @keyframes bounceIn {
            from {
                opacity: 0;
                transform: translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .animate {
            animation: bounceIn 1s ease-out;
        }
        .doctor-animation {
            width: 100px;
            height: 100px;
            animation: bounceIn 2s infinite;
        }
        .form-container {
            max-width: 800px; /* Increased width of the form container */
            margin: 30px auto; /* Added more margin for spacing */
            padding: 30px; /* Increased padding for better visual appearance */
            background-color: #fff; 
            border-radius: 8px; 
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); /* Increased box shadow for more depth */
        }
        .input-field {
            margin-bottom: 20px; /* Increased spacing between input fields */
        }
        .input-field label {
            display: block; 
            margin-bottom: 5px; 
            font-weight: bold;
        }
        .input-field input, .input-field textarea {
            width: 100%; 
            padding: 15px; 
            border: 1px solid #ddd; 
            border-radius: 4px;
        }
        .submit-button {
            background-color: #333; 
            color: #fff; 
            border: none; 
            padding: 15px 25px; 
            border-radius: 4px; 
            cursor: pointer; 
            font-size: 16px;
        }
        .submit-button:hover {
            background-color: #555;
        }
    </style>
</head>
<body style="font-family: Arial, sans-serif; margin: 0; padding: 0; background-color: white;">
<div style="position: fixed; width: 100%; top: 0; left: 0; background-color: #318CE7; color: white; padding: 14px 20px; display: flex; justify-content: space-between; align-items: center; z-index: 1000;">
    <div style="font-size: 24px; font-weight: bold;">Doctors Center Hospital</div>
    <ul style="list-style: none; margin: 0; padding: 0; display: flex; gap: 20px;">
      <li style="display: inline-block;"><a href="index.jsp" style="color: white; text-decoration: none; padding: 10px; transition: background-color 0.3s ease; border-radius: 5px;">Home</a></li>
      <li style="display: inline-block;"><a href="Aboutus.jsp" style="color: white; text-decoration: none; padding: 10px; transition: background-color 0.3s ease; border-radius: 5px;">About</a></li>
      <li style="display: inline-block;"><a href="contact.jsp" style="color: white; text-decoration: none; padding: 10px; transition: background-color 0.3s ease; border-radius: 5px;">Contact Us</a></li>
      <li style="display: inline-block;"><a href="#" style="color: white; text-decoration: none; padding: 10px; transition: background-color 0.3s ease; border-radius: 5px;">Appoinment</a></li>
      
      
      <div style="position: relative; display: inline-block;">
    <a href="#" id="dropdown-toggle" style="padding: 10px; background-color: #4CAF50; color: white; text-decoration: none;">Login</a>
    
    <div id="dropdown-menu" style="display: none; position: absolute; background-color: #f9f9f9; box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); z-index: 1;">
        <a href="user_login.jsp" style="color: black; padding: 10px 20px; text-decoration: none; display: block;">User</a>
        <a href="admin_login.jsp" style="color: black; padding: 10px 20px; text-decoration: none; display: block;">Admin</a>
        <a href="doctor_login.jsp" style="color: black; padding: 10px 20px; text-decoration: none; display: block;">Doctor</a>
    </div>
</div>

<script>
    // JavaScript to toggle dropdown visibility
    document.getElementById('dropdown-toggle').addEventListener('click', function(event) {
        event.preventDefault();
        var dropdown = document.getElementById('dropdown-menu');
        dropdown.style.display = dropdown.style.display === 'block' ? 'none' : 'block';
    });
</script>
      
      
    </ul>
  </div>
    
        
    <div class="form-container animate">
    <h2 class="form-heading"><center>Contact Us</center></h2>
        <form>
            <div class="input-field">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="input-field">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-field">
                <label for="message">Message</label>
                <textarea id="message" name="message" rows="5" required></textarea>
            </div>
            <div>
                <button type="submit" class="submit-button animate">Send</button>
            </div>
        </form>
    </div>
    <div style="text-align: center; margin-top: 20px;">
        <img src="img/ol.gif" alt="Doctor Cartoon 1" class="doctor-animation">
        <img src="img/op.gif" alt="Doctor Cartoon 2" class="doctor-animation">
        <img src="img/om.gif" alt="Doctor Cartoon 3" class="doctor-animation">
    </div>
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
