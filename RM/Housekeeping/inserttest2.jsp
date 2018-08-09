<%@page import="java.sql.*"%>
<%@page import="configuration.dbConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<% 

String empname = request.getParameter("empname");
String roomstat = request.getParameter("roomstat");
String cleanstat = request.getParameter("cleanstat");

try{
dbConnection db = new dbConnection();
Connection conn = db.getConnection();
Statement statement = conn.createStatement();

String sql = "INSERT INTO `t_housekeeping` (`R.A_Maid`, `Cleaning_Status`, `Room Condition`, `Repair Status` , `Archive`) VALUES ('"+empname+"', '"+cleanstat+"','"+roomstat+"','Not Started','recorded')";
statement.executeUpdate(sql);
} catch (SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
%>