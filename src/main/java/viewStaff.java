

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class viewStaff
 */
@WebServlet("/viewStaff")
public class viewStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewStaff() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = "root";
		String pswd = "password@123";
		String url = "jdbc:mysql://localhost:3306/hospital";
		PrintWriter out = response.getWriter();
		ArrayList staffList = new ArrayList(); 
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pswd);
			if(con != null)
			{
				System.out.println("Connection successful !");
			}
			
			
			
			java.sql.Statement stmt = con.createStatement();
			

		String sql = String.format("SELECT staff_id, staff_name, admin_id  FROM Staff");
		ResultSet res =  stmt.executeQuery(sql);
			if(res.next())
			{	
				 while(res.next()) {
					 staffList.add(res.getInt("staff_id"));
					  staffList.add(res.getString("staff_name"));
					  staffList.add(res.getString("admin_id"));
					  
				 }
			}
			else {
				
				
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('No staff Added yet');");
				out.println("location='/HMS/MyHospital/screens/dashboard.jsp';");
				out.println("</script>");
				
			//	response.sendRedirect("");
				
			}
		
		}catch(Exception e)
		{
		
			System.out.println(e);
		}
		
		 request.setAttribute("staffList", staffList);

		  RequestDispatcher dispatcher = request.getRequestDispatcher("/MyHospital/screens/staffBook.jsp");

		  if (dispatcher != null){

		  dispatcher.forward(request, response);

		  } 
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
