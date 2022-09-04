package servlets;

import manager.AuthorManager;
import manager.BookManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/books/remove")
public class RemoveBookServlet extends HttpServlet {

    private BookManager bookManager = new BookManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        bookManager.removeBookById( Integer.parseInt(req.getParameter("bookId") ));
        resp.sendRedirect("/books");
    }
}
