<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Reset Password</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    body {
      background-color: #f8f9fa;
    }
    .card {
      max-width: 400px;
      margin: 100px auto;
    }
    .form-control:focus {
      box-shadow: none;
      border-color: #0d6efd;
    }
  </style>
</head>
<body>

<div class="card shadow-sm">
  <div class="card-body">
    <h4 class="card-title text-center mb-4">Reset Your Password</h4>
    <form id="resetForm">
      <div class="mb-3">
        <label for="email" class="form-label"><i class="fas fa-envelope"></i> Email address</label>
        <input type="email" class="form-control" id="email" placeholder="Enter your email" required>
      </div>
      <div class="mb-3">
        <label for="newPassword" class="form-label"><i class="fas fa-lock"></i> New Password</label>
        <input type="password" class="form-control" id="newPassword" placeholder="New password" required>
      </div>
      <div class="mb-3">
        <label for="confirmPassword" class="form-label"><i class="fas fa-lock"></i> Confirm Password</label>
        <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm password" required>
      </div>
      <div class="d-grid">
        <button type="submit" class="btn btn-success"><i class="fas fa-save"></i> Save Password</button>
      </div>
    </form>
    <div id="alertMsg" class="alert alert-success mt-3 d-none" role="alert">
      Password has been successfully reset!
    </div>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
  document.getElementById('resetForm').addEventListener('submit', function(e) {
    e.preventDefault();
    const newPassword = document.getElementById('newPassword').value;
    const confirmPassword = document.getElementById('confirmPassword').value;
    
    if (newPassword !== confirmPassword) {
      alert("Passwords do not match!");
      return;
    }

    // saving password
    document.getElementById('alertMsg').classList.remove('d-none');
    
    // Redirect to login page after 2 seconds
    setTimeout(function() {
      window.location.href = "login.html";
    }, 2000);
  });
</script>
</body>
</html>
    