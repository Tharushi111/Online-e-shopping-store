<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Admin Dashboard Home</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />
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
      margin-left: 220px;
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

    .stat-card {
      padding: 20px;
      border-radius: 12px;
      color: white;
      box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
    }

    .stat-icon {
      font-size: 2rem;
    }

    .graph-placeholder {
      height: 300px;
      background-color: #e9ecef;
      border-radius: 12px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #6c757d;
      font-size: 1.2rem;
      margin-top: 30px;
    }
    @keyframes fadeInUp {
    from {
    opacity: 0;
    transform: translateY(20px);
    }
    to {
    opacity: 1;
    transform: translateY(0);
    }
    }

    .fade-in {
    animation: fadeInUp 1s ease-in-out;
    }

  </style>
</head>
<body>
  <div class="sidebar">
    <h2 class="text-center py-3">EasyPick</h2>
    <hr class="border-light mx-3" />
    <a href="adminHome.jsp"><i class="fa fa-home"></i> Home</a>
    <a href="adminPanel.jsp"><i class="fa fa-users"></i> User Management</a>
    <a href="#"><i class="fa fa-box"></i> Product Management</a>
    <a href="#"><i class="fa fa-shopping-cart"></i> Order Management</a>
  </div>

  <div class="content">
    <div class="topbar">
      <h5 class="mb-0">Dashboard Home</h5>
      <div class="admin-info">
        <img src="../images/admin1.jpg" alt="Admin Photo" />
        <span>Admin Name</span>
        <button class="btn btn-outline-danger btn-sm ms-4">
          <i class="fa fa-sign-out-alt"></i> Logout
        </button>
      </div>
    </div>

    <!-- Stats Section -->
    <div class="row mt-4">
      <div class="col-md-3 mb-3">
        <div class="stat-card bg-primary">
          <div class="d-flex justify-content-between">
            <div>
              <h6>Total Users</h6>
              <h4>4350</h4>
            </div>
            <div class="stat-icon"><i class="fa fa-users"></i></div>
          </div>
        </div>
      </div>
      <div class="col-md-3 mb-3">
        <div class="stat-card bg-success">
          <div class="d-flex justify-content-between">
            <div>
              <h6>Sales</h6>
              <h4>Rs.1344000.00</h4>
            </div>
            <div class="stat-icon"><i class="fa fa-dollar-sign"></i></div>
          </div>
        </div>
      </div>
      <div class="col-md-3 mb-3">
        <div class="stat-card bg-warning">
          <div class="d-flex justify-content-between">
            <div>
              <h6>Orders</h6>
              <h4>540</h4>
            </div>
            <div class="stat-icon"><i class="fa fa-shopping-cart"></i></div>
          </div>
        </div>
      </div>
      <div class="col-md-3 mb-3">
        <div class="stat-card bg-danger">
          <div class="d-flex justify-content-between">
            <div>
              <h6>Visitors</h6>
              <h4>7,100</h4>
            </div>
            <div class="stat-icon"><i class="fa fa-eye"></i></div>
          </div>
        </div>
      </div>
    </div>

    <!-- Best Selling Products Table -->
<div class="bg-white p-4 rounded shadow-sm mt-4">
    <h6 class="mb-3">Best Selling Products</h6>
    <div class="table-responsive">
      <table class="table table-bordered align-middle">
        <thead class="table-dark">
          <tr>
            <th>Image</th>
            <th>Product Name</th>
            <th>Category</th>
            <th>Price</th>
            <th>Quantity Sold</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><img src="../images/laptop.jpeg" alt="Laptop" width="50" class="rounded" /></td>
            <td>HP Pavilion 15</td>
            <td>Laptop</td>
            <td>Rs.2000000.00</td>
            <td>25</td>
          </tr>
          <tr>
            <td><img src="../images/phone.webp" alt="Smartphone" width="50" class="rounded" /></td>
            <td>Samsung Galaxy S21</td>
            <td>Smartphone</td>
            <td>Rs.2800000.00</td>
            <td>30</td>
          </tr>
          <tr>
            <td><img src="../images/keyboard.webp" alt="Keyboard" width="50" class="rounded" /></td>
            <td>Logitech MX Keys</td>
            <td>Accessories</td>
            <td>Rs.110000.00</td>
            <td>85</td>
          </tr>
          <tr>
            <td><img src="../images/headphone.webp" alt="Headphones" width="50" class="rounded" /></td>
            <td>Sony WH-1000XM5</td>
            <td>Audio</td>
            <td>Rs.110000.00</td>
            <td>50</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>   
</div>
</body>
</html>
    