<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Title here</title>




<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
  
}

.header {
  background-color: #f1f1f1;
  padding: 30px;
  text-align: center;
}
.header-image {
    width: 100%;                /* Set the width of the image */
    height: 100%;                /* Maintain the image's aspect ratio */
    margin-right: 900px;  
    margin-botton: 100px;        /* Add space between the image and content */
}
header {
    background-image: url('img/doctor.jpg'); /* Path to your background image */
    background-size: cover;       /* Ensures the image covers the entire header */
    background-position: center;  /* Centers the image in the header */
    background-repeat: no-repeat; /* Prevents the image from repeating */
    height: 700px;                /* Set the height of the header */
    color: white;                 /* Set the text color */
    display: flex;                /* Use flexbox to align content */
    align-items: center;          /* Vertically center content */
    justify-content: center;      /* Horizontally center content */
    text-align: center;           /* Center the text within the header */
    padding: 20px;                /* Optional padding */
}

.header-content {
    max-width: 800px;             /* Optional: restrict the width of the content */
    margin: auto;
}

header h1 {
    font-size: 3rem;              /* Adjust the font size */
    margin: 0;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Adds shadow to make text stand out */
}

header p {
    font-size: 1.5rem;            /* Adjust the font size */
    margin: 10px 0 0 0;
    text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5); /* Adds shadow to make text stand out */
}


#navbar {
  overflow: hidden;
  background-color: #43C6DB;
}

#navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

#navbar a:hover {
  background-color: #ddd;
  color: black;
}

#navbar a.active {
  background-color: blue;
  color: white;
}

.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 60px;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
  overflow: hidden; /* Add this to ensure the image doesn't overflow the card */
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #1E90FF;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #0059FF;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

/* Add hover effect for images */
.card img {
  transition: transform 0.3s ease, filter 0.3s ease;
}

.card img:hover {
  transform: scale(1.05); /* Slightly enlarge the image */
  filter: brightness(1.1); /* Increase brightness */
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
  
}
</style>

</head>
<body>


<header>
        <div class="header-content">
            <h1>Doctors Center Hospital</h1>
            <p>Expert Care with a Human Touch</p>
        </div>
    </header>

<div id="navbar">
  <a class="active" href="index.jsp">Home</a>
  <a href="https://doctorscenterhospital.com/terms/">News</a>
  <a href="contact.jsp">Contact</a>
</div>

<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.scrollY >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="img/doct1.jpg" alt="Jane" style="width:100%; height:600px;">
      
      <div class="container">
        <h2>Dr.Siva Kumar</h2>
        <p class="title">CEO & Founder</p>
        <p>Neurology Specialist</p>
        <p>Siva35@gmail.com</p>
        
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="img/doct2.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Dr.Nilesh Kumar</h2>
        <p class="title">Chief Doctor</p>
        <p>Plastic Surgery </p>
        <p>Kumar94@gmail.com</p>
        
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="img/doct3.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Dr.Laxmipriya Kumari</h2>
        <p class="title">Chief Doctor</p>
        <p>Radiology </p>
        <p>priya73@gmail.com</p>
        
      </div>
    </div>
  </div>
  
  
<div class="column">
    <div class="card">
      <img src="img/doct4.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Dr.Durgeswari</h2>
        <p class="title">Chief Doctor</p>
        <p>Surgery</p>
        <p>durgeswari93@gmail.com</p>
        
      </div>
    </div>
  </div>  
  
  
  
  <div class="column">
    <div class="card">
      <img src="img/doct5.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Dr.Abhikhya Singh</h2>
        <p class="title">Chief Doctor</p>
        <p>Skin & VD</p>
        <p>abhikhya728@gmail.com</p>
        
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="img/doct7.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Dr.Pratyushi Ray</h2>
        <p class="title">Chief Doctor</p>
        <p>General Medicines</p>
        <p>raypratyushi528@gmail.com</p>
        
      </div>
    </div>
  </div>
 <div class="column">
    <div class="card">
      <img src="img/doct6.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Dr.Sreyansh Behera</h2>
        <p class="title">Chief Doctor</p>
        <p>General Surgery</p>
        <p>beherasreyansh984@gmail.com</p>
        
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="img/doct8.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Dr.Suresh Rathor</h2>
        <p class="title">Chief Doctor</p>
        <p>Anaesthesiology</p>
        <p>rathorsuresh5@gmail.com</p>
        
      </div>
    </div>
  </div>
  <div class="row">
    
   
   <!-- Outer Div containing the card -->
    <div style="
        background-color: #e0e0e0;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
    ">
        <!-- Card Div -->
        <div style="
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
            width: 990px;
            height:600px;
            text-align: center;
        " onmouseover="this.style.transform='translateY(-10px)'; this.style.boxShadow='0 8px 16px rgba(0, 0, 0, 0.2)';" onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='0 4px 8px rgba(0, 0, 0, 0.1)';">
            
            <!-- Image in Card -->
            <img src="img/all.jpg" alt="Our Mission" style="width: 100%; border-top-left-radius: 10px; border-top-right-radius: 10px;">
            
            <!-- Card Content -->
            <div style="padding: 20px;">
                <h2 style="margin: 0 0 15px; color: #333333;">Our Mission</h2>
                <p style="color: #666666; line-height: 1.6;">
                    At Doctors Center Hospital, our mission is to provide compassionate, 
                    high-quality healthcare to every patient we serve. We are committed to improving the
                     health and well-being of our community by delivering patient-centered care, innovative treatments, 
                     and health education.
                </p>
            </div>
        </div>
  
  
  <div style="display: flex; align-items: center; justify-content: space-between; width: 750px; height: 350px; border: 1px solid #ccc; border-radius: 8px; padding: 16px; transition: background-color 0.3s, box-shadow 0.3s;">
        <div>
            <h2 style="margin: 0; font-size: 1.5em; color: #333;">Who We Are</h2>
            <p style="margin: 8px 0 0 0; color: #666;">Founded in 2000,Doctors Center Hospital has grown to become a leading provider of healthcare services in India Our team of experienced healthcare professionals, including doctors, nurses, specialists, and support staff, work together to offer comprehensive care tailored to the unique needs of each patient.</p>
        </div>
        <img src="img/all1.jpg" alt="Placeholder Image" style="width: 250px; height: 250px; border-radius: 8px; margin-left: 16px;">
    </div>

    <style>
        div:hover {
            background-color: skyblue;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
  
  
   <div style="text-align: right;">
        <div style="display: flex; align-items: center; justify-content: flex-end; width: 750px; height:350px; border: 1px solid #ccc; border-radius: 8px; padding: 16px; background-color: #fff; margin-left: auto;">
            <div style="flex-grow: 1;">
                <h2 style="margin: 0; font-size: 1.5em; color: #333;">Our Services</h2>
                <p style="margin: 8px 0 0 0; color: #666;">Primary Care: Preventative care, health screenings, and routine check-ups.<br>
Specialty Care: Expert care in areas such as cardiology, orthopedics, oncology, and more.<br><br>
Emergency Care: 24/7 emergency services for urgent health needs.<br>
</p>
            </div>
            <img src="img/all2.jpg" alt="Placeholder Image" style="width: 250px; height: 250px; border-radius: 8px; margin-left: 16px;">
        </div>
    </div>

    <style>
        div > div:hover {
            background-color: skyblue;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
   <div style="display: flex; align-items: center; justify-content: space-between; width: 750px; height: 350px; border: 1px solid #ccc; border-radius: 8px; padding: 16px; transition: background-color 0.3s, box-shadow 0.3s;">
        <div>
            <h2 style="margin: 0; font-size: 1.5em; color: #333;">Our Team</h2>
            <p style="margin: 8px 0 0 0; color: #666;">Our team is made up of highly skilled professionals who are passionate about healthcare. From our board-certified physicians to our caring nursing staff and supportive administrative team, everyone at Doctors Center Hospital is dedicated to providing you with the best possible care.</p>
        </div>
        <img src="img/all1.jpg" alt="Placeholder Image" style="width: 250px; height: 250px; border-radius: 8px; margin-left: 16px;">
    </div>

    <style>
        div:hover {
            background-color: skyblue;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
  
  
  
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