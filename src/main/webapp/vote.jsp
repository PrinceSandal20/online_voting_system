<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.voting.utils.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Vote</title>
    <link rel="stylesheet" type="text/css" href="./css/styles.css">
</head>
<body>
       <div class="head">
        <h1>cast your vote</h1>
        </div>
       <form action="RegisterVoteServlet" method="post">
	    <label>Username:</label>
	    <input type="text" name="username" required><br>
	    <label>City:</label>
	    <input type="text" name="city" required><br>
	    <label>State:</label>
	    <input type="text" name="state" required><br>
	    <label>Phone Number:</label>
	    <input type="text" name="phone_number" required><br>
	    <label>Select Candidate:</label>
	    <select name="candidate_id">
	        <% 
	            Connection con = com.voting.utils.DBConnection.getConnection();
	            Statement stmt = con.createStatement();
	            ResultSet rs = stmt.executeQuery("SELECT * FROM candidates");
	            while (rs.next()) {
	                out.println("<option value='" + rs.getInt("id") + "'>" + rs.getString("name") + "</option>");
	            }
	        %>
	    </select><br>
	    <button type="submit">Submit Vote</button>
	   </form> 
</body>
</html>
    