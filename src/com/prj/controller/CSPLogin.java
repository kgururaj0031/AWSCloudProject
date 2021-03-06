package com.prj.controller;

import java.io.IOException;
import java.net.Inet4Address;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CSPLogin
 */
@WebServlet("/CSPLogin")
public class CSPLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CSPLogin() {
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
		String ipAddress  = request.getHeader("X-FORWARDED-FOR");
		System.out.println(Inet4Address.getLocalHost().getHostAddress());
		
		if(username.equals("provider@cloud.in") && password.equals("cloud"))
		{
			response.sendRedirect("cspHome.jsp");
		}
		
		else
		{
			request.setAttribute("loginFailed","loginFailed");
			rd = request.getRequestDispatcher("/csplogin.jsp");
			rd.forward(request, response);

		}
		
		
	
	}

}
