<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <!-- Add your CSS links here -->
    <link rel="stylesheet" href="style.css">

</head>
<body>

<h2>Register</h2>
<form action="RegisterServlet" method="post">
    <div class="registerDiv">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
<%--    </div>--%>
<%--    <div>--%>
    <br>
    <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
<%--    </div>--%>
<%--    <div>--%>
    <br>
    <br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
<%--    </div>--%>
    <!-- Include additional fields as necessary -->
<%--    <div>--%>
        <button type="submit">Register</button>
    </div>
</form>

</body>
</html>
