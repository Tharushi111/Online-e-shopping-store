<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Seller Dashboard</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- FontAwesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
  <style>
    body {
      min-height: 100vh;
      display: flex;
      font-family: 'Segoe UI', sans-serif;
    }
    .sidebar {
      min-width: 220px;
      background-color: #1F2F56;
      color: white;
    }
    .sidebar a {
      color: white;
      padding: 15px;
      display: block;
      text-decoration: none;
    }
    .sidebar a:hover {
      background-color: #1c263f;
    }
    .topbar {
      height: 60px;
      background-color: #f8f9fa;
      padding: 0 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-bottom: 1px solid #dee2e6;
    }
    .content {
      flex: 1;
      padding: 20px;
      background-color: #f1f3f5;
    }
    .seller-photo {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      object-fit: cover;
    }
  </style>
</head>
<body>
  
  <div class="sidebar d-flex flex-column">
   <h4 class="text-center py-3">Dashboard</h4>
	 <hr class="border-light m-0">
	   <a href="SellerDashboard.html"><i class="fas fa-user"></i> Profile</a>
	   <a href="#"><i class="fas fa-box-open"></i> Product Management</a>
  </div>

  <!-- Main content -->
  <div class="flex-grow-1 d-flex flex-column">
    <!-- Topbar -->
    <div class="topbar d-flex justify-content-between align-items-center">
      <div><strong>Welcome, Tharushi Paranagama</strong></div>
      <div class="d-flex align-items-center gap-3">
        <button class="btn btn-outline-danger btn-sm ms-4"><i class="fa fa-sign-out-alt"></i> Logout</button> 
        <img src="images/admin1.jpg" alt="Seller Photo" class="seller-photo">
      </div>
    </div>

    <!-- Content Area -->
    <div class="content">
      <div class="card p-4">
        <h5>Seller Profile</h5>
        <form id="profileForm">
          <div class="mb-3">
            <label class="form-label">Name</label>
            <input type="text" class="form-control" id="sellerName" value="John Doe" disabled>
          </div>
          <div class="mb-3">
            <label class="form-label">Email</label>
            <input type="email" class="form-control" id="sellerEmail" value="john@example.com" disabled>
          </div>
          <div class="mb-3">
            <label class="form-label">Phone</label>
            <input type="text" class="form-control" id="sellerPhone" value="+123456789" disabled>
          </div>
          <div class="mb-3">
            <label class="form-label">Address</label>
            <input type="text" class="form-control" id="sellerAddress" value="123 Main St, Springfield" disabled>
          </div>
          <div class="mb-3">
            <label class="form-label">Country</label>
            <input type="text" class="form-control" id="sellerCountry" value="Sri Lanka" disabled>
          </div>
          <button type="button" class="btn btn-primary" id="editBtn">Edit</button>
          <button type="submit" class="btn btn-success d-none" id="saveBtn">Save</button>
        </form>
        <div class="alert alert-success mt-3 d-none" id="saveAlert">
          Profile saved successfully!
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap and JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    const editBtn = document.getElementById('editBtn');
    const saveBtn = document.getElementById('saveBtn');
    const inputs = document.querySelectorAll('#profileForm input');
    const saveAlert = document.getElementById('saveAlert');

    editBtn.addEventListener('click', () => {
      inputs.forEach(input => input.disabled = false);
      editBtn.classList.add('d-none');
      saveBtn.classList.remove('d-none');
    });

    document.getElementById('profileForm').addEventListener('submit', (e) => {
      e.preventDefault();
      inputs.forEach(input => input.disabled = true);
      editBtn.classList.remove('d-none');
      saveBtn.classList.add('d-none');
      saveAlert.classList.remove('d-none');
      setTimeout(() => {
        saveAlert.classList.add('d-none');
      }, 3000);
    });
  </script>
</body>
</html>
    