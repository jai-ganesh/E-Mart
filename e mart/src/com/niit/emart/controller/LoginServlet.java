package com.niit.emart.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.emart.userdao.UserDAO;



/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		UserDAO userDAO=new UserDAO();
		String username=(String) request.getParameter("username");
		String password=(String) request.getParameter("password");
		
		
		if(userDAO.isValidCredentials(username,password)==true)
		{
			RequestDispatcher dispatcher=request.getRequestDispatcher("Home.jsp");
		dispatcher.forward(request,response);
		
		}
			
			 else
			 {
				 RequestDispatcher dispatcher=request.getRequestDispatcher("Login.jsp");
				 PrintWriter out=response.getWriter();
				 out.println("Invalid Credentials");
				 
				 dispatcher.include(request,response);
				 
			 }
			 
	
	}

}
