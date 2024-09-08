<nav class="navbar navbar-expand-lg navbar-dark bg-info p-5">
  <div class="container-fluid">
    <!-- Updated image source -->
    <div style="position: fixed; width: 100%; top: 0; left: 0; background-color: #318CE7; color: white; padding: 14px 20px; display: flex; justify-content: space-between; align-items: center; z-index: 1000;">
      <div style="font-size: 24px; font-weight: bold;">Doctors Center Hospital</div>
      <ul style="list-style: none; margin: 0; padding: 0; display: flex; gap: 20px;">
        <li style="display: inline-block;"><a href="index.jsp" style="color: white; text-decoration: none; padding: 10px; transition: background-color 0.3s ease; border-radius: 5px;">Home</a></li>
        <li style="display: inline-block;"><a href="Aboutus.jsp" style="color: white; text-decoration: none; padding: 10px; transition: background-color 0.3s ease; border-radius: 5px;">About</a></li>
        <li style="display: inline-block;"><a href="contact.jsp" style="color: white; text-decoration: none; padding: 10px; transition: background-color 0.3s ease; border-radius: 5px;">Contact Us</a></li>
        <li style="display: inline-block;"><a href="#" style="color: white; text-decoration: none; padding: 10px; transition: background-color 0.3s ease; border-radius: 5px;"></a></li>


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

















