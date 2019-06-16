package com.prj.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import databaseconnection.databasecon;

/**
 * Servlet implementation class CSCLogin
 */
@WebServlet("/CSCLogin")
public class CSCLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CSCLogin() {
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

		String eid = request.getParameter("eid");
		String pass = request.getParameter("pass");

		RequestDispatcher rd=null;
		PrintWriter out = response.getWriter();
		Statement st = null;
		ResultSet rs = null;

		try{

			databasecon db = new databasecon();
			Connection con = (Connection) db.getconnection();

			st = (Statement) con.createStatement();
			String qry ="select * from cscreg where  email='"+eid+"' AND password='"+pass+"'"; 
			rs = (ResultSet) st.executeQuery(qry);
			if(rs.next()){

				//response.sendRedirect("/cscSecLogin.jsp");
				rd = request.getRequestDispatcher("/cscSecLogin.jsp");
				rd.forward(request, response);

			}
			else{

					request.setAttribute("user", "user");
					rd = request.getRequestDispatcher("/csclogin.jsp");
					rd.forward(request, response);
				}
			con.close();
			st.close();
		}
		catch(Exception ex){
			out.println(ex);
		}


	}

}
