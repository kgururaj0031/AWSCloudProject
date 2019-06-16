package com.prj.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.Inet4Address;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prj.model.Keygen;

import databaseconnection.databasecon;

/**
 * Servlet implementation class CSCRegister
 */
@WebServlet("/AddComment")
public class AddComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddComment() {
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
		
		String un = request.getParameter("un");
		String eid = request.getParameter("eid");
		String mob = request.getParameter("mob");
		String ser = request.getParameter("ser");
		String comm = request.getParameter("comm");
		Keygen msr = new Keygen();
		String key = msr.generateRandomString();
		RequestDispatcher rd=null;
		PrintWriter out = response.getWriter();
		System.out.println(Inet4Address.getLocalHost().getHostAddress());
		Connection con;
		try
		{
		    databasecon db = new databasecon();
		    con = (Connection) db.getconnection();

			Statement st=(Statement) con.createStatement();
			String sql="insert into addcomment(username,email,mobile,service,comment) values ('"+un+"','"+eid+"','"+mob+"','"+ser+"','"+comm+"')";
			int x=st.executeUpdate(sql);     
			if(x!=0){
			
				
				request.setAttribute("regSuccess","regSuccess");
				
				rd = request.getRequestDispatcher("/review.jsp");
				rd.forward(request, response);
				
			}
			
			con.close();
			st.close();
		}		
		catch(Exception e1)
		{
			out.println(e1);

		}
		
		
		
	}

}
