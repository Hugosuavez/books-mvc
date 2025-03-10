package controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.BookDAO;
import models.Book;


@WebServlet("/addbook")
public class AddBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddBookController() {
        super();
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setHeader("Cache-control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		
		request.getRequestDispatcher("AddBookForm.jsp").include(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setHeader("Cache-control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String date = request.getParameter("date");
		String genres = request.getParameter("genres");
		String characters = request.getParameter("characters");
		String synopsis = request.getParameter("synopsis");
		
		if(title == null || author == null || date == null || genres == null || characters == null || synopsis == null
				|| title.isEmpty() || author.isEmpty() || date.isEmpty() || genres.isEmpty()
				|| characters.isEmpty() || synopsis.isEmpty()) {
			response.sendRedirect("AddBookForm.jsp?error=Invalid+fields");
		}
		
		Book book = new Book(title, author, date, genres, characters, synopsis);
		
		BookDAO dao = new BookDAO();
		
		try {
			dao.insertBook(book);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("title", title);
		request.setAttribute("author", author);
		request.getRequestDispatcher("AddBookSuccess.jsp").include(request, response);
	}

}
