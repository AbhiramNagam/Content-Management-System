<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <!-- Add your CSS links here -->
    <link rel="stylesheet" href="style.css">
</head>
<body>

<h2>Login</h2>
<form action="LoginServlet" method="post">
    <div class="registerDiv">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
<%--    </div>--%>
<%--    <div>--%>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
<%--    </div>--%>
<%--    <div>--%>
        <button type="submit">Login</button>
<%--    </div>--%>
<%--        <br>--%>
<%--        <br>--%>
    </div>
<%--    <div>--%>
        Don't have an account? <a href="register.jsp">Register here</a>
<%--    </div>--%>
</form>

</body>
</html>
