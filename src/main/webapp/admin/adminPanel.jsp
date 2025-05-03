<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin Dashboard</title>
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
    .custom-btn {
    background-color: #FF7A00;
    color: white; 
    border: none; 
    }

    .custom-btn:hover {
    background-color: #e66a00; 
    }
  </style>
</head>
<body>

  <div class="sidebar">
    <h2 class="text-center py-3">EasyPick</h2>
    <hr class="border-light mx-3">
    <a href="adminHome.jsp"><i class="fa fa-home"></i> Home</a>
    <a href="#"><i class="fa fa-users"></i> User Management</a>
    <a href="#"><i class="fa fa-box"></i> Product Management</a>
    <a href="#"><i class="fa fa-shopping-cart"></i> Order Management</a>
  </div>

  <div class="content">
    <div class="topbar">
      <h5 class="mb-0">Admin Dashboard</h5>
      <div class="admin-info">
        <img src="../images/admin1.jpg" alt="Admin Photo">
        <span>Admin Name</span>
        <button class="btn btn-outline-danger btn-sm ms-4"><i class="fa fa-sign-out-alt"></i> Logout</button>  
      </div>
    </div>

    <div class="mt-4">
      <div class="d-flex justify-content-between mb-3">
        <h4>User Management</h4>
        <a href="adminCreate.jsp" class="btn custom-btn"><i class="fa fa-user-plus"></i> Add New User</a>
      </div>
      <table class="table table-bordered table-hover bg-white">
        <thead class="table-dark">
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Role</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <!-- Sample user rows -->
          <tr>
            <td>1</td>
            <td>Jane Doe</td>
            <td>jane@example.com</td>
            <td>Admin</td>
            <td>
              <button class="btn btn-sm btn-info"><i class="fa fa-edit"></i> Edit</button>
              <button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> Delete</button>
            </td>
          </tr>
          <tr>
            <td>2</td>
            <td>John Smith</td>
            <td>john@example.com</td>
            <td>Customer</td>
            <td>
                <button class="btn btn-sm btn-info"><i class="fa fa-edit"></i> Edit</button>
                <button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> Delete</button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
  </html>