package doctor;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.jdi.connect.spi.Connection;

/**
 * Servlet implementation class doctorDashboard
 */
@WebServlet("/doctorDashboard")
public class doctorDashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public doctorDashboard() {
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
				String doctor_name,id,email,dept,ip,op;
				System.out.print(i);
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				//response.getWriter().append("Served at: ").append(request.getContextPath());
				
				
				try{
					Class.forName("com.mysql.jdbc.Driver");
					
					java.sql.Connection con = DriverManager.getConnection(url, user, pswd);
					if(con != null)
					{
						System.out.println("Connection successful !");
					}
					
					
					
					java.sql.Statement stmt = con.createStatement();
					

				String sql = String.format("SELECT doctor_id,doctor_name,email,Dept,admin_id FROM Doctor WHERE email=\"%s\"",j);
			    String q1 = String.format("select count(*) from inpatient");
				String q2 = String.format("select count(*) from Outpatient");
			
				  
				
				
				ResultSet res =  stmt.executeQuery(sql);
				if(res.next()){	
					
							id = res.getString(1);
							doctor_name= res.getString(2);
							email = res.getString(3);
							dept= res.getString(4);
//							dept= res.getString(4);
							request.setAttribute("doctor_id", id);
							request.setAttribute("name",doctor_name);
							request.setAttribute("email",email);
							request.setAttribute("dept",dept);
						
							ResultSet cip = stmt.executeQuery(q1);
							cip.next();
							ip= cip.getString(1);
							cip.close();
							ResultSet cop= stmt.executeQuery(q2);
							cop.next();
							op = cop.getString(1);
							cop.close();
							
							
							request.setAttribute("Incount",ip);
							request.setAttribute("Outcount",op);

							RequestDispatcher rs = request.getRequestDispatcher("/MyHospital/doctor/dashboard.jsp");					
							rs.forward(request, response);
					}
					else {
						
						
						out.println("<script type=\"text/javascript\">");  
						out.println("alert('Incorrect Username or Password');");
						out.println("location='/HMS/MyHospital/forms/signIn.html';");
						out.println("</script>");
						
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





