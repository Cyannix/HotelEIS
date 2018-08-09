<%@page import="java.sql.*"%>
<%@page import="configuration.dbConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<% 

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

String sql = "INSERT INTO `tb_r.a_maid`( `Name`, `Tele_num`, `Address`, `Maid_Supervisor`, `Position`, `Floor_assgin`,`Archive`) VALUES ('"+empname+"','"+tel_num+"','"+address+"','"+Supervior+"','"+position+"','"+floorassgin+"','recorded')";
statement.executeUpdate(sql);
} catch (SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
%>