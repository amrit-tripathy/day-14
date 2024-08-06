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
 * Servlet implementation class signupServelet
 */
public class signupServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signupServelet() {
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
		
		DatabaseConnection dc = new DatabaseConnection();
		String name = request.getParameter("signup-name");
		String username = request.getParameter("username");
		String signupPassword = request.getParameter("signup-password");
		String signupConfirmPassword = request.getParameter("signup-confirm-password");
		String mobile = request.getParameter("mobile");
		String acctype = request.getParameter("acctype");
		
		try {
			Connection con = dc.getConnection();
			String query = "insert into bankUser values(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			if(signupConfirmPassword.equals(signupPassword)) {
				ps.setString(1, name);
				ps.setString(2, mobile);
				ps.setString(3, username);
				ps.setString(4, signupPassword);
				ps.setString(5, acctype);
				ps.executeUpdate();
				out.print("row inserted");
				session.setAttribute("name", name);
				session.setAttribute("mobile", mobile);
				
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			}
			else {
				out.print("confirm pwd!=pwd");
			}
			
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
