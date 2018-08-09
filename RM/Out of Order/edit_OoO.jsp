<%@page import="java.sql.*"%>
<%@page import="configuration.dbConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<% 

String container = request.getParameter("container");
String RAmaid = request.getParameter("RAmaid");
String repairstat = request.getParameter("repairstat");
String roomstat = request.getParameter("roomstat");
try{
dbConnection db = new dbConnection();
Connection conn = db.getConnection();
Statement statement = conn.createStatement();

String sql = "UPDATE `t_housekeeping` SET `R.A_Maid`='"+RAmaid+"',`Cleaning_Status`='Not Started',`Room Condition`='"+roomstat+"',`Repair Status`='"+repairstat+"' WHERE `pk_housekeeping` = '"+container+"'";
statement.executeUpdate(sql);
} catch (SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
%>