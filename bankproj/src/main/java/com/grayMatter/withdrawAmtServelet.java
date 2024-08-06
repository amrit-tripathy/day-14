package com.grayMatter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class withdrawAmtServelet
 */
public class withdrawAmtServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public withdrawAmtServelet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        // Check if username is null
        if (username == null) {
            out.println("Error: User not logged in.");
            return;
        }

        // Retrieve and validate amount
        int amt = 0;
        try {
            amt = Integer.parseInt(request.getParameter("amt"));
            if (amt <= 0) {
                out.println("Error: Withdrawal amount must be greater than 0.");
                return;
            }
        } catch (NumberFormatException e) {
            out.println("Error: Invalid amount format.");
            return;
        }

        String query1 = "SELECT money FROM accounts WHERE username=?";
        String query2 = "UPDATE accounts SET money=? WHERE username=?";

        DatabaseConnection dc = new DatabaseConnection();
        try (Connection cons = dc.getConnection();
             PreparedStatement ps1 = cons.prepareStatement(query1);
             PreparedStatement ps2 = cons.prepareStatement(query2)) {

            // Check initial amount
            ps1.setString(1, username);
            ResultSet rs = ps1.executeQuery();
            int initialamt = 0;
            if (rs.next()) {
                initialamt = rs.getInt(1);
            } else {
                out.println("Error: Account not found.");
                return;
            }

            // Validate sufficient funds
            if (initialamt < amt) {
                out.println("Error: Insufficient funds.");
                return;
            }

            // Update amount
            int finalamt = initialamt - amt;
            ps2.setInt(1, finalamt);
            ps2.setString(2, username);
            ps2.executeUpdate();

            out.println("Success: Withdrawal completed. New balance: " + finalamt);
            session.setAttribute("money",finalamt);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.println("Error: An error occurred while processing your request.");
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
