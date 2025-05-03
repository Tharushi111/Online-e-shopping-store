<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Sign Up</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #b0cbe6;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .signup-container {
      background-color: white;
      border-radius: 15px;
      overflow: hidden;
      max-width: 900px;
      width: 100%;
      display: flex;
      box-shadow: 0 0 20px rgba(0,0,0,0.1);
    }
    .signup-image {
      width: 50%;
      background: url('images/img1.webp') center/cover no-repeat;
    }
    .signup-form {
      padding: 40px 30px;
      width: 50%;
    }
    .signup-form h4 {
      font-weight: bold;
      margin-bottom: 20px;
    }
    .form-control {
      margin-bottom: 15px;
    }
    .form-footer {
      font-size: 0.9rem;
    }
    #error-message {
      color: red;
      font-size: 0.9rem;
      display: none;
    }
    .extra-info {
      display: none;
    }

    /* Custom radio button styling */
    .user-type-radio {
      display: flex;
      justify-content: center;
      margin-bottom: 20px;
    }
    .user-type-radio label {
      cursor: pointer;
      background-color: #f0f0f0;
      padding: 10px 20px;
      margin: 0 10px;
      border-radius: 25px;
      font-size: 1rem;
      transition: background-color 0.3s ease;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    .user-type-radio input[type="radio"] {
      display: none;
    }
    .user-type-radio input[type="radio"]:checked + label {
      background-color: #007bff;
      color: white;
      box-shadow: 0 0 15px rgba(0,123,255,0.4);
    }
    .user-type-radio label:hover {
      background-color: #e0e0e0;
    }

  </style>
</head>
<body>
  
<div class="signup-container">
  <div class="signup-image d-none d-md-block"></div>
  <div class="signup-form">
    <div class="text-center mb-4">
      <i class="fa fa-cart-plus fa-2x text-primary"></i>
      <h4>EasyPick</h4>
    </div>
    <p class="text-muted mb-4 text-center">Create a new account</p>
    
    <form id="signupForm">

      <div id="success-alert" class="alert alert-success d-none" role="alert">
        Form submitted successfully!
      </div>
      
      <div class="user-type-radio">
        <input type="radio" name="userType" value="customer" id="customer" checked>
        <label for="customer">Customer</label>
        <input type="radio" name="userType" value="seller" id="seller">
        <label for="seller">Seller</label>
      </div>
      <input type="text" class="form-control" placeholder="Full Name" required>
      <input type="email" class="form-control" placeholder="Email Address" required>
      <input type="password" class="form-control" placeholder="Password" id="password" required>
      <input type="password" class="form-control" placeholder="Confirm Password" id="confirmPassword" required>
      <div id="error-message">Passwords do not match</div>
      
      <!-- Additional Fields for Seller -->
      <div class="extra-info">
        <input type="text" class="form-control" placeholder="Phone Number" id="phoneNumber">
        <input type="text" class="form-control" placeholder="Address" id="address">
        <input type="text" class="form-control" placeholder="Country" id="country">
      </div>

      <button type="submit" class="btn btn-dark w-100">Sign Up</button>
    </form>

    <div class="text-center form-footer mt-3">
      Already have an account? <a href="login.jsp">Login here</a>
    </div>

    <div class="text-center form-footer mt-3">
      <a href="#">Terms of use</a> | <a href="#">Privacy policy</a>
    </div>
  </div>
</div>
<script>
  document.getElementById("signupForm").addEventListener("submit", function (e) {
    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("confirmPassword").value;
    const errorMessage = document.getElementById("error-message");
    const successAlert = document.getElementById("success-alert");

    if (password !== confirmPassword) {
      e.preventDefault();
      errorMessage.style.display = "block";
      successAlert.classList.add("d-none");
    } else {
      errorMessage.style.display = "none";
      successAlert.classList.remove("d-none");
      setTimeout(() => {
        successAlert.classList.add("d-none");
      }, 4000);

    }
  });

  // Show/hide additional fields based on user type selection
  document.querySelectorAll('input[name="userType"]').forEach((radio) => {
    radio.addEventListener("change", function () {
      const extraInfo = document.querySelector(".extra-info");
      if (this.value === "seller") {
        extraInfo.style.display = "block";
      } else {
        extraInfo.style.display = "none";
      }
    });
  });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    