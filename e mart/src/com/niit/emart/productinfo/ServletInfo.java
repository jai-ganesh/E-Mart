package com.niit.emart.productinfo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletInfo
 */
@WebServlet("/ServletInfo")
public class ServletInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String id =request.getParameter("id");
		int id1=Integer.parseInt(id);
		if(id1==1)
		{
			String name="Apple";
			String description="This is one of the type of apple";
			String price="Rs 35/-";
			request.setAttribute("name",name);
			request.setAttribute("description", description);
			request.setAttribute("price",price);
		}
		if(id1==2)
		{
			String name="Orange";
			String description="This is one of the type of orange";
			String price="Rs 25/-";
			request.setAttribute("name",name);
			request.setAttribute("description", description);
			request.setAttribute("price",price);
		}
		if(id1==3)
		{
			String name="Onion";
			String description="This is onion";
			String price="Rs 30/-";
			request.setAttribute("name",name);
			request.setAttribute("description", description);
			request.setAttribute("price",price);
		}
		if(id1==4)
		{
			String name="Tomato";
			String description="This is tomato";
			String price="Rs 40/-";
			request.setAttribute("name",name);
			request.setAttribute("description", description);
			request.setAttribute("price",price);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("productinfo.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		}

}
