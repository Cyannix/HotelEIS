package configuration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import configuration.dbConnection;
/**
 * Servlet implementation class testinsert
 */
@WebServlet("/testinsert")
public class testinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testinsert() {
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
		String empname = request.getParameter("_empname");// eto yung parameter na nandun sa js mo
		String roomstat = request.getParameter("_roomstat");
		String cleanstat = request.getParameter("_cleanstat");
		
		dbConnection db = new dbConnection(); //ito yung class na ginawa mo iimport mo siya
		Connection conn = db.getConnection();
		String sql = "Insert into t_housekeeping R.A_Maid, Cleaning_Status, Room Condition values '"+empname+"', '"+roomstat+"','"+cleanstat+"'";// eto na yung query
		
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