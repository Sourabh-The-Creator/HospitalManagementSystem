import java.io.IOException;
import static javax.swing.JOptionPane.showMessageDialog;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginUser
 */
@WebServlet("/LoginUser")
public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String i = request.getParameter("userType");
	    String j = request.getParameter("email");
		String k = request.getParameter("password");
		String name,email;
		System.out.print(i);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "password@123");
			if(con != null)
			{
				System.out.println("Connection successful !");
			}
			
			
			
			java.sql.Statement stmt = con.createStatement();
			

		String sql = String.format("SELECT email FROM %s WHERE email=\"%s\" AND password=\"%s\"",i,j,k);
		  
		
		
		ResultSet res =  stmt.executeQuery(sql);
		
		
		
			if(res.next())
			{	
				System.out.println("Verified User");
				String sql1 = String.format("SELECT admin_name,email FROM administrator WHERE email=\"%s\" AND password=\"%s\"", j,k);
				ResultSet result =  stmt.executeQuery(sql1);
				if(result.next())
				{
					name = result.getString(1);
					email= result.getString(2);
					request.setAttribute("name",name);
					request.setAttribute("email",email);
					System.out.print(request);
					//request.getRequestDispatcher("/WEB-INF/dashboard.jsp").forward(request, response);
					RequestDispatcher rs = request.getRequestDispatcher("/MyHospital/screens/dashboard.jsp");
					
					rs.forward(request, response);
				}
				
				
				
				//response.sendRedirect("/HMS/MyHospital/screens/adminDashboard.jsp");
			}
			else {
				
				
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('Incorrect Username or Password');");
				out.println("location='/HMS/MyHospital/forms/signIn.html';");
				out.println("</script>");
				
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
