

import java.io.IOException;
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
 * Servlet implementation class dashboard
 */
@WebServlet("/dashboard")
public class dashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dashboard() {
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
		String admin_name,email,d,ip,op,sm,admins,gender,admin_id;
		System.out.print(i);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pswd);
			if(con != null)
			{
				System.out.println("Connection successful !");
			}
			
			
			
			java.sql.Statement stmt = con.createStatement();
			

		String sql = String.format("SELECT admin_id,admin_name,gender,email FROM %s WHERE email=\"%s\"",i,j);
		String q1 = String.format("select count(*) from Doctor");
	    String q2 = String.format("select count(*) from inpatient");
		String q3 = String.format("select count(*) from Outpatient");
		String q4 = String.format("select count(*) from Staff");
		String q5 = String.format("select count(*) from Administrator");
		  
		
		
		ResultSet res =  stmt.executeQuery(sql);
		if(res.next()){	
			
					admin_id = res.getString(1);
					admin_name= res.getString(2);
					gender = res.getString(3);
					email= res.getString(4);
					request.setAttribute("name",admin_name);
					request.setAttribute("email",email);
					request.setAttribute("admin_id",admin_id);
					request.setAttribute("gender",gender);
					ResultSet cd = stmt.executeQuery(q1);
					cd.next();
					d = cd.getString(1);
					cd.close();
					ResultSet cip = stmt.executeQuery(q2);
					cip.next();
					ip= cip.getString(1);
					cip.close();
					ResultSet cop= stmt.executeQuery(q3);
					cop.next();
					op = cop.getString(1);
					cop.close();
					ResultSet csm= stmt.executeQuery(q4);
					csm.next();
					sm = csm.getString(1);
					csm.close();
					ResultSet admn = stmt.executeQuery(q5);
					admn.next();
					admins= admn.getString(1);
					admn.close();
					
					request.setAttribute("Dcount",d);
					request.setAttribute("Incount",ip);
					request.setAttribute("Outcount",op);
					request.setAttribute("Scount",sm);
					request.setAttribute("admins",admins);

					RequestDispatcher rs = request.getRequestDispatcher("/MyHospital/screens/dashboard.jsp");					
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
