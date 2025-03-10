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


@WebServlet("/updatebook")
public class UpdateBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateBookController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Cache-control", "no-cache");
		response.setHeader("Pragma", "no-cache"); 
		int id = Integer.parseInt(request.getParameter("id"));
		
		BookDAO dao = new BookDAO();
		Book book = dao.getBookByID(id);
		
		request.setAttribute("book", book);
		
		request.getRequestDispatcher("UpdateBookForm.jsp").include(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Cache-control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String date = request.getParameter("date");
		String genres = request.getParameter("genres");
		String characters = request.getParameter("characters");
		String synopsis = request.getParameter("synopsis");
		
		if(title == null || author == null || date == null || genres == null || characters == null || synopsis == null
				||  title.isEmpty() || author.isEmpty() || date.isEmpty() || genres.isEmpty()
				|| characters.isEmpty() || synopsis.isEmpty()) {
			response.sendRedirect("UpdateBookForm.jsp?error=Invalid+fields");
		}
		
		Book book = new Book(id, title, author, date, genres, characters, synopsis);
		
		BookDAO dao = new BookDAO();
		
		try {
			dao.updateBook(book);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("title", title);
		request.setAttribute("author", author);
		request.setAttribute("verb", "updated");
		request.getRequestDispatcher("AddBookSuccess.jsp").include(request, response);
	}

}
