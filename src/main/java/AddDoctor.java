

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddDoctor
 */
@WebServlet("/AddDoctor")
public class AddDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDoctor() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pswd);
			if(con != null)
			{
				System.out.println("Connection successful !");
			}
			
			
			
			

		//String sql = String.format("insert into Doctor values(?,?,?,?,?,?)");
		PreparedStatement stmt = con.prepareStatement("insert into Doctor values(?,?,?,?,?,?)");
		 int id1 = 101;
		 String id = request.getParameter("id");
		   
		
		int admin = 3;
		if(id!=null)
		{
		    id1 = Integer.parseInt(id);
		}
		
		 stmt.setInt(1, Integer.valueOf(id1));
		 stmt.setString(2,request.getParameter("name"));    
		 stmt.setString(3,request.getParameter("email")); 
		 stmt.setString(4,"Sourabh@1234");
		 stmt.setString(5,request.getParameter("dept"));     
		 stmt.setInt(6, Integer.valueOf(admin));
		 int res = stmt.executeUpdate();
		 
		
		
		
			if(res > 0)
			{
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('Add Successful');");
				out.println("location='/HMS/viewDoctor';");
				out.println("</script>");
				 
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
