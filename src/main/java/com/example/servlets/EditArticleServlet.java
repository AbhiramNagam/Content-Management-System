package com.example.servlets;

import com.example.data.Article;
import com.example.data.Persist;
import com.example.data.conn;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/EditArticleServlet")
public class EditArticleServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        Long articleId = Long.parseLong(request.getParameter("articleId"));
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        // Fetch the Article object from the database
        Article article = (Article) conn.getFactory().openSession().get(Article.class, articleId);

        // Update the title and content of the Article object
        article.setTitle(title);
        article.setContent(content);

        // Save the updated Article object to the database
        boolean isUpdated = new Persist().update(article);

        if (isUpdated) {
            // Redirect the user back to the articleDetails.jsp page
            response.sendRedirect("articleDetails.jsp?articleId=" + articleId);
        } else {
            request.setAttribute("errorMessage", "Failed to update the article. Please try again.");
            request.getRequestDispatcher("editArticle.jsp?articleId=" + articleId).forward(request, response);
        }
    }
}