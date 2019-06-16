package com.prj.controller;

import java.io.File;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.prj.model.KeyAuthenticator;

import databaseconnection.databasecon;

/**
 * Servlet implementation class CSCSecLogin
 */
@WebServlet("/CSCSecLogin")
public class CSCSecLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CSCSecLogin() {
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
		
		String key = request.getParameter("key");
		String result=null;
		RequestDispatcher rd= null;
		Statement st = null;
		ResultSet rs = null;
		try{
			databasecon db = new databasecon();
			Connection con = (Connection) db.getconnection();

			st = (Statement) con.createStatement();
			String qry ="select * from cscreg where  idmkey='"+key+"'"; 
			rs = (ResultSet) st.executeQuery(qry);
			if(rs.next()){
				String id = rs.getString("id");
				request.setAttribute("id", id);
				request.setAttribute("success", "success");
				rd = request.getRequestDispatcher("cscHome.jsp");
				rd.forward(request, response);
			}
			else{
				request.setAttribute("fail", "fail");
				rd = request.getRequestDispatcher("cscSecLogin.jsp");
				System.out.println("Enter correct Key");
				rd.forward(request, response);
			}

			
			con.close();
			st.close();
		}
		catch(Exception ex){
			System.out.println(ex);
		}
	
	}

}
