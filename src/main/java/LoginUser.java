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
		String user = "root";
		String pswd = "password@123";
		String url = "jdbc:mysql://localhost:3306/hospital";
		String i = request.getParameter("userType");
	    String j = request.getParameter("email");
		String k = request.getParameter("password");
		System.out.print(i);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pswd);
			if(con != null)
			{
				System.out.println("Connection successful !");
			}
			
		java.sql.Statement stmt = con.createStatement();
		
		
		
		String sql="";
		ResultSet res = null;
		if(i.equals("Administrator")) {
			sql = String.format("SELECT * FROM Administrator WHERE email=\"%s\" AND password=\"%s\"",j,k);
			res =  stmt.executeQuery(sql);
			
			if(res.next())
			{	
				System.out.println("Verified User");
				request.setAttribute("userType",i);
				request.setAttribute("email",j);	
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Incorrect Username or Password');");
				out.println("</script>");
				RequestDispatcher rs = request.getRequestDispatcher("/dashboard");
				rs.forward(request, response);		
			}
			else {
				
				
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('Incorrect Username or Password');");
				out.println("location='/HMS/MyHospital/forms/signIn.html';");
				out.println("</script>");
			}
		}
		else if(i.equals("Doctor")) {
			System.out.println(j+"  "+k);
			sql = String.format("SELECT email FROM Doctor WHERE email=\"%s\" AND password=\"%s\"",j,k);
			res =  stmt.executeQuery(sql);
			if(res.next())
			{	
				System.out.println("Verified User");
				request.setAttribute("userType",i);
				request.setAttribute("email",j);	
				RequestDispatcher rs = request.getRequestDispatcher("/doctorDashboard");
				rs.forward(request, response);		
			}
			else {
				System.out.println("Out");
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('Incorrect Username or Password');");
//				out.println("location='/HMS/MyHospital/forms/signIn.html';");
				out.println("</script>");
			}
			
		}
		else if(i.equals("Staff")) {
			sql = String.format("SELECT * FROM Staff WHERE email=\"%s\" AND password=\"%s\"",j,k);
			res =  stmt.executeQuery(sql);
			if(res.next())
			{	
				System.out.println("Verified User");
				request.setAttribute("userType",i);
				request.setAttribute("email",j);	
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Incorrect Username or Password');");
				out.println("</script>");
				RequestDispatcher rs = request.getRequestDispatcher("/dashboard");
				rs.forward(request, response);		
			}
			else {
				
				
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('Incorrect Username or Password');");
				out.println("location='/HMS/MyHospital/forms/signIn.html';");
				out.println("</script>");
			}
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
