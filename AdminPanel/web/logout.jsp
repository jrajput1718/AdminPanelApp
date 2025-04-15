<%@ page session="true" %>
<%
    session.invalidate();  // End session
%>

<!DOCTYPE html>
<html>
<head>
    <title>Logged Out</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
</head>
<body class="bg-light d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow p-4 text-center">
        <h2 class="text-success">You have been logged out!</h2>
        <p>Thank you for using the Admin Panel.</p>
        <a href="login.jsp" class="btn btn-primary">Login Again</a>
    </div>
</body>
</html>
