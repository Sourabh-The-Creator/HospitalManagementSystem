

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addStaff
 */
@WebServlet("/addStaff")
public class addStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addStaff() {
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
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		response.getWriter().append("Served at: ").append(request.getContextPath());
		

		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pswd);
			if(con != null)
			{
				System.out.println("Connection successful !");
			}
			
			
			
			

		//String sql = String.format("insert into Doctor values(?,?,?,?,?,?)");
		PreparedStatement stmt = con.prepareStatement("insert into Staff values(?,?,?,?,?)");
		 int id1 = 101;
		 int admin_id1=2;
		 String id = request.getParameter("id");
		 String admin_id = request.getParameter("id");
		   
		if(id!=null)
		{
		    id1 = Integer.parseInt(id);
		}
		if(admin_id!=null)
		{
		    admin_id1 = Integer.parseInt(id);
		}
		
		 stmt.setInt(1, Integer.valueOf(id1));
		 stmt.setString(2,request.getParameter("name"));    
		 stmt.setString(3,request.getParameter("email")); 
		 stmt.setString(4,request.getParameter("password"));
		 stmt.setInt(5, 2);
		 int res = stmt.executeUpdate();
		    out.println("<script type=\"text/javascript\">");  
			out.println("location='/HMS/viewStaff';");
			out.println("</script>");
		
		
		
			if(res > 0)
			{
				System.out.println("Verified User");
				 
			}
			else {
				
				
//				out.println("<script type=\"text/javascript\">");  
//				out.println("alert('Incorrect Username or Password');");
//				out.println("location='/HMS/MyHospital/forms/signIn.html';");
//				out.println("</script>");
				
			//	response.sendRedirect("");
				
			}
		
		}catch(Exception e)
		{
		
			System.out.println(e);
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
