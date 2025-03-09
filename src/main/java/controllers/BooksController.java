package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.BookDAO;
import models.Book;


@WebServlet("/books")
public class BooksController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BooksController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setHeader("Cache-control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		BookDAO dao = new BookDAO();
		ArrayList<Book> books = dao.getAllBooks();
		request.setAttribute("books", books);
		request.getRequestDispatcher("books.jsp").include(request, response);
	}

}
