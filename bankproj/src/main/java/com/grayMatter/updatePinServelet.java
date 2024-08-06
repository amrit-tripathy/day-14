package com.grayMatter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class updatePinServelet
 */
public class updatePinServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatePinServelet() {
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
        String username = (String) session.getAttribute("username");
        int newPin = Integer.parseInt(request.getParameter("upin"));
        
        DatabaseConnection dc = new DatabaseConnection();
        try {
			Connection con = dc.getConnection();
			PreparedStatement ps1 = con.prepareStatement(SqlCommands.retrievePin);
			PreparedStatement ps2 = con.prepareStatement(SqlCommands.updatePinquery);
			
			ps1.setString(1, username);
			ResultSet rs = ps1.executeQuery();
			int initialPin = 0;
			if(rs.next()) {
				initialPin = rs.getInt(1);
			}
			if(newPin==initialPin) {
				out.print("same pin detected");
				RequestDispatcher rd = request.getRequestDispatcher("updatePin.jsp");
				rd.forward(request, response);
			}
			else if(newPin!=initialPin){
				ps2.setInt(1, newPin);
				ps2.setString(2, username);
				ps2.executeUpdate();
				out.print("pin updated successfully");
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
