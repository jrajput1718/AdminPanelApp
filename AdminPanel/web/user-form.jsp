<%--
<%@ page import="dao.UserDAO, model.User" %>
<%
    String idParam = request.getParameter("id");
    User user = new User();
    String action = "add";

    if (idParam != null) {
        int id = Integer.parseInt(idParam);
        user = UserDAO.getUser(id);
        action = "edit";
    }
%>
<h2><%= action.equals("add") ? "Add" : "Edit" %> User</h2>
<form action="<%= action %>" method="post">
    <% if (action.equals("edit")) { %>
        <input type="hidden" name="id" value="<%= user.getId() %>">
    <% } %>
    Name: <input type="text" name="name" value="<%= user.getName() %>"><br>
    Email: <input type="text" name="email" value="<%= user.getEmail() %>"><br>
    <input type="submit" value="<%= action.equals("add") ? "Add" : "Update" %>">
</form>
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.UserDAO, model.User" %>
<%
    String idParam = request.getParameter("id");
    User user = new User();
    String action = "add";

    if (idParam != null) {
        int id = Integer.parseInt(idParam);
        user = UserDAO.getUser(id);
        action = "edit";
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= action.equals("add") ? "Add" : "Edit" %> User</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .container {
            max-width: 600px;
            margin-top: 60px;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
    </style>
</head>
<body class="bg-light">

<div class="container bg-white p-4 rounded shadow">
    <div class="header mb-4">
        <h3><%= action.equals("add") ? "➕ Add" : "✏️ Edit" %> User</h3>
        <a href="logout.jsp" class="btn btn-outline-danger btn-sm">Logout</a>
    </div>

    <form action="<%= action %>" method="post">
        <% if (action.equals("edit")) { %>
            <input type="hidden" name="id" value="<%= user.getId() %>">
        <% } %>

        <div class="mb-3">
            <label class="form-label">👤 Name</label>
            <input type="text" name="name" class="form-control" value="<%= user.getName() != null ? user.getName() : "" %>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">📧 Email</label>
            <input type="email" name="email" class="form-control" value="<%= user.getEmail() != null ? user.getEmail() : "" %>" required>
        </div>

        <div class="d-grid">
            <button type="submit" class="btn btn-primary">
                <%= action.equals("add") ? "Add User" : "Update User" %>
            </button>
        </div>
    </form>
</div>

<!-- Bootstrap 5 JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>


