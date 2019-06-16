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
@WebServlet("/CSCRegister")
public class CSCRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CSCRegister() {
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
		String pass = request.getParameter("pass");
		String mob = request.getParameter("mob");
		Keygen msr = new Keygen();
		String key = msr.generateRandomString();
		String status = "inactive";
		RequestDispatcher rd=null;
		PrintWriter out = response.getWriter();
		String idmkey = "00000";
		System.out.println(Inet4Address.getLocalHost().getHostAddress());
		String IP = Inet4Address.getLocalHost().getHostAddress();
		Connection con;
		try
		{
		    databasecon db = new databasecon();
		    con = (Connection) db.getconnection();

			Statement st=(Statement) con.createStatement();
			Statement st2=(Statement) con.createStatement();
			String sql="insert into cscreg(username,email,password,mobile,idmkey,status,IP) values ('"+un+"','"+eid+"','"+pass+"','"+mob+"','"+idmkey+"','"+status+"','"+IP+"')";
			int x=st.executeUpdate(sql);     
			if(x!=0){
			
				
				request.setAttribute("regSuccess","regSuccess");
				
				rd = request.getRequestDispatcher("/cscregister.jsp");
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
