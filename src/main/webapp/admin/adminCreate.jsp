<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Add New User - Admin Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
  <style>
    body {
      min-height: 100vh;
      background-color: #f8f9fa;
    }
    .sidebar {
      height: 100vh;
      background-color: #1F2F56;
      color: #d1d1d1;
      position: fixed;
      width: 220px;
    }
    .sidebar a {
      color: #d1d1d1;
      text-decoration: none;
      display: block;
      padding: 12px 20px;
    }
    .sidebar a:hover {
      background-color: #1c263f;
    }
    .content {
      margin-left: 240px; /* Increased margin-left for better spacing */
      padding: 20px;
    }
    .topbar {
      background-color: #fff;
      padding: 10px 20px;
      border-bottom: 1px solid #dee2e6;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    .admin-info {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .admin-info img {
      width: 40px;
      height: 40px;
      border-radius: 50%;
    }
    .custom-btn {
      background-color: #FF7A00;
      color: white; 
      border: none; 
    }

    .custom-btn:hover {
      background-color: #e66a00; 
    }

    .form-container {
      background-color: #fff;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
      margin-top: 20px; /* Added margin-top for spacing from top bar */
      margin-right: 20px; /* Added margin-right for space from the right side */
    }
  </style>
</head>
<body>

  <div class="sidebar">
    <h2 class="text-center py-3">EasyPick</h2>
    <hr class="border-light mx-3">
    <a href="#"><i class="fa fa-home"></i> Home</a>
    <a href="adminPanel.jsp"><i class="fa fa-users"></i> User Management</a>
    <a href="#"><i class="fa fa-box"></i> Product Management</a>
    <a href="#"><i class="fa fa-shopping-cart"></i> Order Management</a>
  </div>

  <div class="content">
    <div class="topbar">
      <h5 class="mb-0">Admin Dashboard - Add New User</h5>
      <div class="admin-info">
        <img src="images/admin1.jpg" alt="Admin Photo">
        <span>Admin Name</span>
        <button class="btn btn-outline-danger btn-sm ms-4"><i class="fa fa-sign-out-alt"></i> Logout</button>  
      </div>
    </div>

    <div class="mt-4">
      <!-- Alert Message -->
      <div id="alertMessage" class="alert alert-success d-none" role="alert">
        New user added successfully!
      </div>

      <div class="form-container">
        <h4 class="mb-3">Add New User</h4>
        <form id="addUserForm">
          <div class="mb-3">
            <label for="userName" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="userName" placeholder="Enter full name" required>
          </div>
          <div class="mb-3">
            <label for="userEmail" class="form-label">Email Address</label>
            <input type="email" class="form-control" id="userEmail" placeholder="Enter email address" required>
          </div>
          <div class="mb-3">
            <label for="userType" class="form-label">User Type</label>
            <select class="form-select" id="userType" required>
              <option value="Admin">Admin</option>
              <option value="Seller">Seller</option>
              <option value="Customer">Customer</option>
            </select>
          </div>
          <div class="mb-3">
            <label for="userPassword" class="form-label">Password</label>
            <input type="password" class="form-control" id="userPassword" placeholder="Enter password" required>
          </div>
          <div class="mb-3">
            <label for="userConfirmPassword" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" id="userConfirmPassword" placeholder="Confirm password" required>
          </div>
          <button type="button" class="btn custom-btn" onclick="addUser()"><i class="fa fa-user-plus"></i> Add User</button>
          <button type="button" class="btn btn-secondary ms-2" onclick="goBack()">
            <i class="fa fa-arrow-left"></i> Back
          </button>
        </form>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
      function addUser() {
        // Get form values
        var userName = document.getElementById("userName").value;
        var userEmail = document.getElementById("userEmail").value;
        var userType = document.getElementById("userType").value;
        var userPassword = document.getElementById("userPassword").value;
        var userConfirmPassword = document.getElementById("userConfirmPassword").value;

        // Check if all fields are filled
        if (userName && userEmail && userType && userPassword && userConfirmPassword) {
          // Check if password and confirm password match
          if (userPassword === userConfirmPassword) {
            // Show success alert
            document.getElementById('alertMessage').classList.remove('d-none');
            
            // Hide the alert after 3 seconds
            setTimeout(function() {
              document.getElementById('alertMessage').classList.add('d-none');
            }, 3000);
            
            // Reset form
            document.getElementById("addUserForm").reset();

            setTimeout(function() {
          window.location.href = "adminPanel.jsp"; 
           }, 3000);

          } else {
            alert("Passwords do not match!");
          }
        } else {
          alert("Please fill in all fields.");
        }
      }
      function goBack() {
         window.location.href = "adminPanel.jsp";
      }
    </script>
  </body>
</html>
    