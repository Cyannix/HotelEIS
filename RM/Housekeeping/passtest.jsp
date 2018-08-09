<%@page import="java.sql.*"%>
<%@page import="configuration.dbConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<% 

String container = request.getParameter("container");
String cleanstat = request.getParameter("cleanstat");
String roomcon = request.getParameter("roomcon");

try{
dbConnection db = new dbConnection();
Connection conn = db.getConnection();
Statement statement = conn.createStatement();

String sql = "UPDATE `t_housekeeping` SET `Cleaning_Status`='"+cleanstat+"',`Room Condition`='"+roomcon+"' ,`Repair Status`='Not Started' WHERE `pk_housekeeping`='"+container+"'";
statement.executeUpdate(sql);
} catch (SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
%>