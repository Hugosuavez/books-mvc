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


@WebServlet("/deletebook")
public class DeleteBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public DeleteBookController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setHeader("Cache-control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		
		int id = Integer.parseInt(request.getParameter("id")); 
				
		BookDAO dao = new BookDAO();
		
		Book deletedBook = dao.getBookByID(id);
		
		try {
			dao.deleteBook(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("title", deletedBook.getTitle());
		request.setAttribute("author", deletedBook.getAuthor());
		request.getRequestDispatcher("DeleteBookSuccess.jsp").include(request, response);

	}


	
	
}
