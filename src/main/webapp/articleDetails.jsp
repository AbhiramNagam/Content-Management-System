<%@ page import="com.example.data.Article" %>
<%@ page import="com.example.data.conn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Article Details</title>
    <!-- Add your CSS links here -->
    <link rel="stylesheet" href="style.css">
</head>
<body>

<%--Get the articleId from the URL and fetch the corresponding Article object--%>
<%
    Long articleId = Long.parseLong(request.getParameter("articleId"));
    Article article = (Article) conn.getFactory().openSession().get(Article.class, articleId);
    String role = (String) session.getAttribute("username");
%>

<%--Display the details of the Article object--%>
<div class="article-details">
    <h2><%=article.getTitle()%></h2>
    <p>Published by <%=article.getAuthor()%> on <fmt:formatDate value="<%=article.getPublicationDate()%>" pattern="dd/MM/yyyy"/></p>
    <p><%=article.getContent()%></p>
    <% if (role!=null) { %>
    <a href="editArticle.jsp?articleId=<%=article.getId()%>">Edit</a>
    <% } %>
</div>

</body>
</html>