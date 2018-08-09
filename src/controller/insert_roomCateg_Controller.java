package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import systemSetup.dbConnection;

/**
 * Servlet implementation class insert_roomCateg_Controller
 */
@WebServlet("/insert_roomCateg_Controller")
public class insert_roomCateg_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insert_roomCateg_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");
		String type = request.getParameter("_type");// eto yung parameter na nandun sa js mo
		String desc = request.getParameter("_desc");
		String adult = request.getParameter("_adult");
		String child = request.getParameter("_child");

		dbConnection db = new dbConnection(); //ito yung class na ginawa mo iimport mo siya
		Connection conn = db.getConnection();
		String sql = "Insert into roomct (ct_name,description,occAdult,occChildren) values ('"+type+"', '"+desc+"', '"+adult+"', '"+child+"')";// eto na yung query
		
		Statement stmnt = null;
		try {
			stmnt = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			stmnt.execute(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
