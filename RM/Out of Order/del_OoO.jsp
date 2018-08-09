<%@page import="java.sql.*"%>
<%@page import="configuration.dbConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<% 

String data = request.getParameter("container");

try{
dbConnection db = new dbConnection();
Connection conn = db.getConnection();
Statement statement = conn.createStatement();

String sql = "UPDATE `t_housekeeping` SET `Archive`= 'archived' WHERE `pk_housekeeping` = '"+data+"'";
statement.executeUpdate(sql);
} catch (SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
%>