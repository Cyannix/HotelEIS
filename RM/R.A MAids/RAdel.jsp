<%@page import="java.sql.*"%>
<%@page import="configuration.dbConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<% 
String container = request.getParameter("container");
try{
dbConnection db = new dbConnection();
Connection conn = db.getConnection();
Statement statement = conn.createStatement();

String sql = "UPDATE `tb_r.a_maid` SET `Archive`='Archived' WHERE `R.A_Maid_ID` ='"+container+"'";
statement.executeUpdate(sql);
} catch (SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace(); 
}
%>