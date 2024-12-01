package com.voting.servlets;
import com.voting.utils.DBConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterVoteServlet")
public class RegisterVoteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String phoneNumber = request.getParameter("phone_number");
        int candidateId = Integer.parseInt(request.getParameter("candidate_id"));

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO votes (username, city, state, phone_number, candidate_id) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, city);
            pstmt.setString(3, state);
            pstmt.setString(4, phoneNumber);
            pstmt.setInt(5, candidateId);
            pstmt.executeUpdate();

            String updateSql = "UPDATE candidates SET votes = votes + 1 WHERE id = ?";
            PreparedStatement updateStmt = conn.prepareStatement(updateSql);
            updateStmt.setInt(1, candidateId);
            updateStmt.executeUpdate();

            //response.getWriter().println("Vote Registered Successfully!");
            response.sendRedirect("success.jsp");
        } catch (Exception e) {
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}