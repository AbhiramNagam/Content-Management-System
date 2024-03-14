<%--
  Created by IntelliJ IDEA.
  User: saiki
  Date: 13-03-2024
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.example.data.Article" %>
<%@ page import="com.example.data.conn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Article</title>
    <link rel="stylesheet" href="style.css">
    <!-- Add your CSS links here -->
</head>
<body>

<%--Get the articleId from the URL and fetch the corresponding Article object--%>
<%
    Long articleId = Long.parseLong(request.getParameter("articleId"));
//    System.out.println("Article ID: " + articleId);
    Article article = (Article) conn.getFactory().openSession().get(Article.class, articleId);
%>

<%--Display a form for editing the article details--%>
<form action="EditArticleServlet" method="post">
    <input type="hidden" name="articleId" value="<%=article.getId()%>">
    <label for="title">Title:</label><br>
    <input type="text" id="title" name="title" value="<%=article.getTitle()%>"><br>
    <label for="content">Content:</label><br>
    <textarea id="content" name="content"><%=article.getContent()%></textarea><br>
    <div class="submitInEditArticle">
        <input type="submit" value="Submit">

    </div>
</form>

</body>
</html>