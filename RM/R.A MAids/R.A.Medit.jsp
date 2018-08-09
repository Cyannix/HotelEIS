<%@page import="java.sql.*"%>
<%@page import="configuration.dbConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<% 
String container = request.getParameter("container");
String empname = request.getParameter("empname");
String address = request.getParameter("address");
String tel_num = request.getParameter("tel_num");
String floorassgin = request.getParameter("floorassgin");
String position = request.getParameter("position");
String Supervior = request.getParameter("Supervior");
try{
dbConnection db = new dbConnection();
Connection conn = db.getConnection();
Statement statement = conn.createStatement();

String sql = "UPDATE `tb_r.a_maid` SET `Name`='"+empname+"',`Tele_num`='"+tel_num+"',`Address`='"+address+"',`Maid_Supervisor`='"+Supervior+"',`Position`='"+position+"',`Floor_assgin`='"+floorassgin+"' WHERE `R.A_Maid_ID`='"+container+"'";
statement.executeUpdate(sql);
} catch (SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace(); 
}
%>