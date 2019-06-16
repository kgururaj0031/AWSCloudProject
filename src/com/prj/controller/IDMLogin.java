package com.prj.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class IDMLogin
 */
@WebServlet("/IDMLogin")
public class IDMLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IDMLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		
RequestDispatcher rd = null;
		
		String username = request.getParameter("eid");
		
		String password = request.getParameter("pass");
		
		
		if(username.equals("idm@cloud.com") && password.equals("idm"))
		{
			response.sendRedirect("idmHome.jsp");
		}
		
		else
		{
			request.setAttribute("loginFailed","loginFailed");
			rd = request.getRequestDispatcher("/idmLogin.jsp");
			rd.forward(request, response);

		}

	}

}
