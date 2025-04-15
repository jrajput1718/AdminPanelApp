<%--<%@ page import="java.util.*, model.User" %>
<%
    List<User> users = (List<User>) request.getAttribute("userList");
%>

<h2>User List</h2>
<a href="user-form.jsp">Add User</a>

<% if (users != null && !users.isEmpty()) { %>
<table border="1">
    <tr><th>ID</th><th>Name</th><th>Email</th><th>Actions</th></tr>
    <% for (User user : users) { %>
    <tr>
        <td><%= user.getId() %></td>
        <td><%= user.getName() %></td>
        <td><%= user.getEmail() %></td>
        <td>
            <a href="user-form.jsp?id=<%= user.getId() %>">Edit</a>
            <a href="delete?id=<%= user.getId() %>">Delete</a>
        </td>
    </tr>
    <% } %>
</table>
<% } else { %>
    <p>No users found.</p>
<% } %>
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, model.User" %>
<%
    List<User> users = (List<User>) request.getAttribute("userList");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .container {
            margin-top: 60px;
        }
        .btn-actions a {
            margin-right: 10px;
        }
    </style>
</head>
<body class="bg-light">

<div class="container bg-white p-4 rounded shadow">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h3>👥 User List</h3>
        <div>
            <a href="user-form.jsp" class="btn btn-success">➕ Add User</a>
            <a href="logout.jsp" class="btn btn-outline-danger ms-2">Logout</a>
        </div>
    </div>

    <% if (users != null && !users.isEmpty()) { %>
        <div class="table-responsive">
            <table class="table table-bordered table-hover align-middle">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th class="text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (User user : users) { %>
                    <tr>
                        <td><%= user.getId() %></td>
                        <td><%= user.getName() %></td>
                        <td><%= user.getEmail() %></td>
                        <td class="text-center btn-actions">
                            <a href="user-form.jsp?id=<%= user.getId() %>" class="btn btn-primary btn-sm">Edit</a>
                            <a href="delete?id=<%= user.getId() %>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this user?');">Delete</a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    <% } else { %>
        <div class="alert alert-info">No users found.</div>
    <% } %>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
