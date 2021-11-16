package doctor;

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
 * Servlet implementation class addOutpatient
 */
@WebServlet("/addOutpatient")
public class addOutpatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addOutpatient() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = "root";
		String pswd = "password@123";
		String url = "jdbc:mysql://localhost:3306/hospital";
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
		PreparedStatement stmt = con.prepareStatement("insert into Outpatient values(?,?,?,?)");
		 int id1 = 101;
		 int amount = 0;
		 int lab_no = 3;
		 String id = request.getParameter("id");
		 String amt = request.getParameter("amount");
		 String l_no = request.getParameter("lab_no");
		
		if(id!=null)
		{
		    id1 = Integer.parseInt(id);
		}
		if(amt!=null)
		{
			System.out.print("Hii");
	        try{
	        	 amount = Integer.parseInt(amt);
	        }
	        catch (NumberFormatException ex){
	            ex.printStackTrace();
	        }
		}
		if(l_no!=null)
		{
		    lab_no = Integer.parseInt(l_no);
		}
		
		 stmt.setInt(1, Integer.valueOf(id1));
		 stmt.setInt(2, Integer.valueOf(lab_no));		
		 stmt.setString(3,request.getParameter("date"));    
		 stmt.setInt(4, Integer.valueOf(amount));
		 
		 int res = stmt.executeUpdate();
		 
		
		
		
			if(res > 0)
			{
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('Add Successful');");
				out.println("location='/HMS/viewOutpatient?location=Doctor';");
				out.println("</script>");
				 
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
