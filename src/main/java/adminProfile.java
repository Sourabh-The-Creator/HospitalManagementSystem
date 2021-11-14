

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
 * Servlet implementation class adminProfile
 */
@WebServlet("/adminProfile")
public class adminProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				String user = "root";
				String pswd = "password@123";
				String url = "jdbc:mysql://localhost:3306/hospital";
				String name,email,id,gender;
				String j = request.getParameter("email");
				String i = request.getParameter("name");
				
				PrintWriter out = response.getWriter();
				//response.getWriter().append("Served at: ").append(request.getContextPath());
				
				
				try{
					Class.forName("com.mysql.jdbc.Driver");
					
					Connection con = DriverManager.getConnection(url, user, pswd);
					if(con != null)
					{
						System.out.println("Connection successful !");
					}
					
					
					
					System.out.print(i+" "+j);
					java.sql.Statement stmt = con.createStatement();
					
					String sql = String.format("SELECT admin_id,admin_name,gender,email FROM administrator WHERE email=\"%s\" AND admin_name=\"%s\"", j,i);
				
				  
				
				
				ResultSet result =  stmt.executeQuery(sql);
				if(result.next())
				{	
					id = result.getString(1);
					name= result.getString(2);
					gender = result.getString(3);
					email= result.getString(4);
					request.setAttribute("name",name);
					request.setAttribute("email",email);
					request.setAttribute("id",id);
					request.setAttribute("gender",gender);
					 
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
				

				  RequestDispatcher dispatcher = request.getRequestDispatcher("/MyHospital/screens/profile.jsp");

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
