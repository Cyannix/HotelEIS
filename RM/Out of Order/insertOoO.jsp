<%@page import="java.sql.*"%>
<%@page import="configuration.dbConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<% 

String empname = request.getParameter("empname");


try{
dbConnection db = new dbConnection();
Connection conn = db.getConnection();
Statement statement = conn.createStatement();

String sql = "INSERT INTO `t_housekeeping`(`R.A_Maid`, `Cleaning_Status`, `Room Condition`, `Repair Status`, `Archive`) VALUES ('"+empname+"', 'Not Started','Out of Order','Not Started','recorded')";
statement.executeUpdate(sql);
} catch (SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
%>