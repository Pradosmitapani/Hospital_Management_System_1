<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>User Login Page</title>
  <%@include file="component/allcss.jsp"%>
  <style type="text/css">
      body {
          background-image: url('img/all1.jpg');
          background-size: cover;
          background-position: center;
          background-repeat: no-repeat;
          color: #fff;
      }

      .paint-card {
          box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
      }

      .form-Label {
          font-weight: bold;
          color: #333;  /* Dark color for better contrast */
      }

      input.form-control {
          background-color: #f0f0f0;  /* Light background for input fields */
          color: #333;  /* Dark text color for better readability */
      }

      a {
          color: #ffc107;  /* Yellow color for the link text */
          text-decoration: none;  /* Remove underline */
      }

      a:hover {
          color: #28a745;  /* Green color when hovering over the link */
          text-decoration: underline;  /* Add underline on hover */
      }
  </style>
</head>
<body>
<%@include file="component/navbar.jsp"%>

<div class="container p-5">
  <div class="row">
    <div class="col-md-4 offset-md-4">
      <div class="card paint-card">
        <div class="card-body">
          <h2 class="text-center mb-4" style="color: #003366;">User Login</h2>

          <c:if test="${not empty succMsg}">
            <p class="text-center text-success fs-3">${succMsg}</p>
            <c:remove var="succMsg" scope="session"/>
          </c:if>

          <c:if test="${not empty errorMsg}">
            <p class="text-center text-danger fs-3">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session"/>
          </c:if>

          <form action="userLogin" method="post">
            <div class="mb-3">
              <label class="form-Label">Email address</label>
              <input required name="email" type="email" class="form-control">
            </div>

            <div class="mb-3">
              <label class="form-Label">Password</label>
              <input required name="password" type="password" class="form-control">
            </div>

            <button type="submit" class="btn bg-success text-white col-md-12">Login</button>
          </form>
          <br> <p style="color:blue">Don't have an account?</p> <a href="signup.jsp" class="text-decoration-none">Create One account</a>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</body>
</html>
