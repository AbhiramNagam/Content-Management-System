<%--
  Created by IntelliJ IDEA.
  User: saiki
  Date: 12-03-2024
  Time: 01:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create New Article</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>

<h2>Create New Article</h2>
<form action="SaveArticleServlet" method="post">
    <div class="createNewArticle">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required>
    </div>
    <div>
        <label for="content">Content:</label>
        <textarea id="content" name="content" rows="10" cols="50" required></textarea>
    </div>
    <div>
        <label for="category">Category:</label>
        <select id="category" name="category">
            <!-- Populate categories dynamically from the database -->
            <option value="2">News</option>
            <option value="1">Technology</option>
            <option value="3">Entertainment</option>
            <!-- Add more categories as needed -->
        </select>
    </div>
    <div>
        <button type="submit">Submit Article</button>
    </div>
</form>

</body>
</html>

