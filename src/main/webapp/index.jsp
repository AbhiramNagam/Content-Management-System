<%@ page import="com.example.servlets.articleList" %>
<%@ page import="com.example.data.Article" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>News Website</title>
    <!-- Add your CSS links here -->
    <link rel="stylesheet" href="style.css">

</head>
<body>

<div style="text-align:right;">

    <a href="login.jsp">Login</a>
    <% if (session.getAttribute("username") != null) { %>
    <a href="LogoutServlet">Logout</a>
    <% } %>
</div>

<center><h1 style="width: 75%">Enjoy readings blogs!!</h1></center>
<%--Get the articles from the articleList class and set it in the page scope--%>
<%
    articleList al = new articleList();
    List<Article> articles = al.getArticles();
    for(Article article : articles) {
%>
<div class="article-preview">
    <h2><a href="articleDetails.jsp?articleId=<%=article.getId()%>"><%=article.getTitle()%></a></h2>
    <p>Published by <%=article.getAuthor()%> on <fmt:formatDate value="<%=article.getPublicationDate()%>" pattern="dd/MM/yyyy"/></p>
    <p><%=article.getContent()%></p>
</div>
<%
    }
%>
<% if (session.getAttribute("username") != null) { %>
<center><a href="newArticle.jsp">Write Article</a></center>
<% } %>
</body>
</html>