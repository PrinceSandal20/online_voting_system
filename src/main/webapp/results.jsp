<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.voting.utils.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Results</title>
    <link rel="stylesheet" type="text/css" href="./css/styles.css">
</head>
<body>
    <div class="header">
        <h1>Voting Results</h1>
    </div>
    <table border="1">
        <tr>
            <th>Candidate</th>
            <th>City</th>
            <th>State</th>
            <th>Votes</th>
        </tr>
        <% 
            Connection con = com.voting.utils.DBConnection.getConnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM candidates ORDER BY votes DESC");
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("city") %></td>
            <td><%= rs.getString("state") %></td>
            <td><%= rs.getInt("votes") %></td>
        </tr>
        <% } %>
    </table>
    <!-- Back to Home Button -->
    <div class="nav" style="text-align: center; margin-top: 20px;">
        <a href="index.jsp" class="button">Back to Home</a>
    </div>
</body>
</html>
    