package com.prj.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.net.Inet4Address;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;
import com.prj.model.Keygen;

import databaseconnection.databasecon;

/**
 * Servlet implementation class DeleteUser
 */
@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUser() {
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
		
		RequestDispatcher rd=null;
		PrintWriter out = response.getWriter();
		String un = request.getParameter("un");
		out.println(un);
		String query="select * from cscreg where username=?";
		Connection con;
		try
		{
		    databasecon db = new databasecon();
		    con = (Connection) db.getconnection();

		    PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
		    ((PreparedStatement) ps).setString(1, un);
		    ResultSet rs=ps.executeQuery();
		    
		   
		    while (rs.next()) {
		    	String username = rs.getString("username");
		    	
		    	if (username == "+un+")
		    	{
		    	rs.deleteRow();
		    	}
		    }
		    out.println("user has been deleted");
		    rs.close();
		    ps.close();
			con.close();
	
			
		}		
		catch(Exception e1)
		{
			out.println(e1);

		}
		
		
		
	}

}
