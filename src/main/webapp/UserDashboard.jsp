<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>User Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />
  <style>
    body {
      background-color: #bbbfd9;
      font-family: 'Segoe UI', sans-serif;
    }
    .profile-container {
      max-width: 900px;
      margin: 60px auto;
      background: #fff;
      border-radius: 15px;
      box-shadow: 0 4px 25px rgba(0, 0, 0, 0.1);
      display: flex;
      overflow: hidden;
    }
    .profile-sidebar {
      background-color: #59739a;
      width: 300px;
      padding: 40px 20px;
      text-align: center;
      border-right: 1px solid #ddd;
    }
    .profile-sidebar img {
      width: 110px;
      height: 110px;
      object-fit: cover;
      border-radius: 50%;
      margin-bottom: 15px;
    }
    .profile-form {
      flex-grow: 1;
      padding: 40px;
    }
    .form-label i {
      margin-right: 6px;
      color: #6c63ff;
    }
    .btn-purple {
      background-color: #b366f5;
      border: none;
    }
    .btn-purple:hover {
      background-color: #9446e0;
    }
    .alert {
      display: none;
    }
  </style>
</head>
<body>

<div class="container">
  <div class="d-flex justify-content-center align-items-center min-vh-100">
  <div class="profile-container">
    <div class="profile-sidebar">
      <img src="images/admin1.jpg" alt="User Photo" />
      <h5>Tharushi Paranagama</h5>
      <p>john_doe@example.com</p>
      <p>Sri Lanka</p>
    </div>

    <div class="profile-form">
      <h4 class="mb-4">User Profile</h4>

      <div class="alert alert-success" id="successAlert">
        <i class="fas fa-check-circle"></i> Profile updated successfully!
      </div>

      <form id="profileForm">
        <div class="row mb-3">
          <div class="col-md-6">
            <label class="form-label"><i class="fas fa-user"></i> Full Name</label>
            <input type="text" class="form-control" id="name" value="Tharushi Paranagama" readonly />
          </div>
          <div class="col-md-6">
            <label class="form-label"><i class="fas fa-envelope"></i> Email</label>
            <input type="email" class="form-control" id="email" value="john_doe@example.com" readonly />
          </div>
        </div>
        <div class="mb-3">
          <label class="form-label"><i class="fas fa-map-marker-alt"></i> Address</label>
          <input type="text" class="form-control" id="address" value="123 Main St, kandy" readonly />
        </div>
        <div class="row mb-3">
          <div class="col-md-6">
            <label class="form-label"><i class="fas fa-map-pin"></i> Postal Code</label>
            <input type="text" class="form-control" id="postal" value="02118" readonly />
          </div>
          <div class="col-md-6">
            <label class="form-label"><i class="fas fa-phone"></i> Phone Number</label>
            <input type="text" class="form-control" id="phone" value="+1 234 567 890" readonly />
          </div>
        </div>
        <div class="d-flex justify-content-between">
          <button type="button" class="btn btn-outline-primary" id="editBtn">
            <i class="fas fa-edit"></i> Edit
          </button>
          <button type="submit" class="btn btn-purple text-white" id="saveBtn" disabled>
            <i class="fas fa-save"></i> Save Profile
          </button>
        </div>
      </form>
    </div>
  </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
  const editBtn = document.getElementById('editBtn');
  const saveBtn = document.getElementById('saveBtn');
  const fields = ['name', 'email', 'address', 'postal', 'phone'].map(id => document.getElementById(id));
  const successAlert = document.getElementById('successAlert');

  editBtn.addEventListener('click', () => {
    fields.forEach(field => field.removeAttribute('readonly'));
    saveBtn.removeAttribute('disabled');
  });

  document.getElementById('profileForm').addEventListener('submit', function (e) {
    e.preventDefault();
    successAlert.style.display = 'block';
    setTimeout(() => {
      successAlert.style.display = 'none';
    }, 3000);
    fields.forEach(field => field.setAttribute('readonly', true));
    saveBtn.setAttribute('disabled', true);
  });
</script>

</body>
</html>
    