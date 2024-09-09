<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <title>Index Page</title>
    <%@include file="component/allcss.jsp"%>

<<<<<<< HEAD
<style>
body{
  margin:0;
  padding:0;
  background:#f2f2f2;
  font-family: 'Acme';
  height:500px;

  font-family: 'Muli', sans-serif;
     height: 100% !important;
     background-color: primary;
     padding-bottom: 0 !important;
     margin-bottom: 0 !important;
     color: primary;
 
}

.container{
  max-width:1000px;
  margin:100px auto;
  display:flex;
  flex-wrap:wrap;
  justify-content:space-around;
}


.card{
  position:relative;
  margin:20px 0;
  width:300px;
  height:400px;
  background: #fff;
  transform-style:preserve-3d;
  transform:perspective(2000px);
  transition:1s;
  box-shadow:inset 100px 0 50px rgba(0,0,0,0.5);
}

.card:hover{
  z-index:1111;
  transform:perspective(2000px) rotate(-10deg);
  box-shadow:inset 20px 0 50px rgba(0,0,0,0.5);
}

.card .img-container{
  position:relative;
  width:100%;
  height:100%;
  border:1px solid #000;
  box-sizing:border-box;
  transform-origin:left;
  z-index:1;
  transition:1s;
}

.card .img-container img{
  position:absolute;
  left:0;
  top:0;
  height:100%;
  width:100%;
  object-fit:cover;
}

.card:hover .img-container{
  transform:rotateY(-135deg);
}

.card .card-details{
  position:absolute;
  left:0;
  top:0;
  box-sizing:border-box;
  padding:20px;
  color:#000;
}


 .card .card-details h2{
  margin:0;
  padding:0.5em 0;
  text-transform:uppercase;
  font-size:2em;
  color:#ed363a;
}

.card .card-details p{
  margin:0;
  padding:0;
  line-height:25px;
  font-size:1.1em;
  
 }
 
=======
    <style>
        body{
            margin:0;
            padding:0;
            background:#f2f2f2;
            font-family: 'Acme';
            height:500px;
>>>>>>> e6735714a79d153efa920e360d1a5e3629ecbccc



            font-family: 'Muli', sans-serif;
            height: 100% !important;
            background-color: primary;
            padding-bottom: 0 !important;
            margin-bottom: 0 !important;
            color: primary;

        }

        .container{
            max-width:1000px;
            margin:100px auto;
            display:flex;
            flex-wrap:wrap;
            justify-content:space-around;
        }

        .card{
            position:relative;
            margin:20px 0;
            width:300px;
            height:400px;
            background: #fff;
            transform-style:preserve-3d;
            transform:perspective(2000px);
            transition:1s;
            box-shadow:inset 100px 0 50px rgba(0,0,0,0.5);
        }

        .card:hover{
            z-index:1111;
            transform:perspective(2000px) rotate(-10deg);
            box-shadow:inset 20px 0 50px rgba(0,0,0,0.5);
        }

        .card .img-container{
            position:relative;
            width:100%;
            height:100%;
            border:1px solid #000;
            box-sizing:border-box;
            transform-origin:left;
            z-index:1;
            transition:1s;
        }

        .card .img-container img{
            position:absolute;
            left:0;
            top:0;
            height:100%;
            width:100%;
            object-fit:cover;
        }

        .card:hover .img-container{
            transform:rotateY(-135deg);
        }

        .card .card-details{
            position:absolute;
            left:0;
            top:0;
            box-sizing:border-box;
            padding:20px;
            color:#000;
        }

        .card .card-details h2{
            margin:0;
            padding:0.5em 0;
            text-transform:uppercase;
            font-size:2em;
            color:#ed363a;
        }

        .card .card-details p{
            margin:0;
            padding:0;
            line-height:25px;
            font-size:1.1em;

        }






    </style>
</head>
<body>

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

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/doctor.jpg" class="d-block w-100" alt="..." height="760px">
        </div>
        <div class="carousel-item">
            <img src="img/doct88.jpg" class="d-block w-100" alt="..." height="760px">
        </div>
        <div class="carousel-item">
            <img src="img/doctor2.jpg" class="d-block w-100" alt="..." height="760px">
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
<br><br>
<center>
    <h1>Expert Care Nationwide</h1>
    <h4><p>
        Our expert doctors provides specialized care across 21 hospitals nationwide,covering 110+ specialities such as cardiac sciences,cancer care,orthopaedics,neurology,gastroenterology,liver and kidney transplants etc.
    </p></h4></center>
<div class="container">
    <div class="card">
        <div class="img-container">
            <img src="https://5.imimg.com/data5/EL/OD/MY-78574409/surgical-item-500x500.jpg" alt=""/>
        </div>
        <div class="card-details">
            <h2>Cardiac Science</h2>
            <p>At Doctors hospital, we've been the pioneers in heart care since 2000. We're known worldwide for treating complex heart problems. </p>
        </div>
    </div>
    <div class="card">
        <div class="img-container">
            <img src="https://5.imimg.com/data5/EL/OD/MY-78574409/surgical-item-500x500.jpg" alt=""/>
        </div>
        <div class="card-details">
            <h2>cancer care</h2>
            <p>We lead in oncology services, blending expertise, compassion, and a legacy of healthcare excellence.</p>
        </div>
    </div>
    <div class="card">
        <div class="img-container">
            <img src="https://5.imimg.com/data5/EL/OD/MY-78574409/surgical-item-500x500.jpg" alt=""/>
        </div>
        <div class="card-details">
            <h2>neuro sciences</h2>
            <p>We specialize in Neurosciences, with dedicated teams for adult and pediatric neurosurgery and neurology..</p>
        </div>
    </div>
    <div class="card">
        <div class="img-container">
            <img src="https://5.imimg.com/data5/EL/OD/MY-78574409/surgical-item-500x500.jpg" alt=""/>
        </div>
        <div class="card-details">
            <h2>gastro sciences</h2>
            <p>With expert doctors specializing in all areas of gastrosciences, we offer treatment and care for adults and children.</p>
        </div>
    </div>
    <div class="card">
        <div class="img-container">
            <img src="https://5.imimg.com/data5/EL/OD/MY-78574409/surgical-item-500x500.jpg" alt=""/>
        </div>
        <div class="card-details">
            <h2>orthopaedics</h2>
            <p>As one of the top orthopaedic hospitals in India, we've served thousands over two decades, delivering quality healthcare.</p>
        </div>
    </div>
    <div class="card">
        <div class="img-container">
            <img src="https://5.imimg.com/data5/EL/OD/MY-78574409/surgical-item-500x500.jpg" alt=""/>
        </div>
        <div class="card-details">
            <h2>Urology</h2>
            <p>With expert doctors specializing in all areas of Urology, we offer treatment and care for men,women both.</p>
        </div>
    </div>

    <hr>

    <div class="container p-2">
        <p class="text-center fs-3">Our Team</p>
        <div class="row">

            <div class="col-md-5">
                <div class="card-paint-card">
                    <div class="card-body text-center">
                        <img src="img/doct1.jpg" width="400px" height="300px">
                        <p class="fw-bold fs-5">Dr.Siva Kumar</p>
                        <P class="fs-7">(CEO & Chairman)</P>

                    </div>

                </div>

            </div>

            <div class="col-md-5">
                <div class="card-paint-card">
                    <div class="card-body text-center">
                        <img src="img/doct2.jpg" width="400px" height="300px">
                        <p class="fw-bold fs-5">Dr.Nilesh kumar</p>
                        <P class="fs-7">(Chief Doctor)</P>

                    </div>

                </div>

            </div>


            <div class="col-md-5">
                <div class="card-paint-card">
                    <div class="card-body text-center">
                        <img src="img/doct3.jpg" width="400px" height="300px">
                        <p class="fw-bold fs-5">Dr.Laxmipriya kumari</p>
                        <P class="fs-7">(Chief Doctor)</P>

                    </div>

                </div>

            </div>


            <div class="col-md-5">
                <div class="card-paint-card">
                    <div class="card-body text-center">
                        <img src="img/doct4.jpg" width="400px" height="300px">
                        <p class="fw-bold fs-5">Dr.Durgeswari</p>
                        <P class="fs-7">(Chief Doctor)</P>

                    </div>

                </div>

            </div>




        </div>



    </div>


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
