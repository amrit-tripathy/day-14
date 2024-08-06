package com.grayMatter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class createAccounts
 */
public class createAccounts extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createAccounts() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		 
		int pin = Integer.parseInt(request.getParameter("pin"));
		int money = Integer.parseInt(request.getParameter("money"));
		int accno = Integer.parseInt(request.getParameter("accno"));
		String username = (String) session.getAttribute("username");
		String acctype = request.getParameter("acctype");
//		out.print(pin+" "+money+" "+accno+" "+username+" "+acctype);
		
		String query ="insert into accounts values(?,?,?,?,?)";
		DatabaseConnection dc = new DatabaseConnection();
		try {
			Connection con = dc.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, pin);
			ps.setInt(2, money);
			ps.setInt(3, accno);
			ps.setString(4, username);
			ps.setString(5, acctype);
			ps.executeUpdate();
			session.setAttribute("pin", pin);
			session.setAttribute("money",money);
			session.setAttribute("accno",accno);
			session.setAttribute("acctype",acctype);
			RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
			rd.forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
