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
 * Servlet implementation class addInpatient
 */
@WebServlet("/addInpatient")
public class addInpatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addInpatient() {
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
		PreparedStatement stmt = con.prepareStatement("insert into inpatient values(?,?,?,?,?,?,?,?)");
		 int id1 = 101;
		 int phone_no = 1111111111;
		 int doctor_id = 10;
		 int lab_no = 3;
		 String id = request.getParameter("id");
		 String ph_no = request.getParameter("phone");
		 String l_no = request.getParameter("lab_no");
		 
		 System.out.print(ph_no);
		
		if(id!=null)
		{
		    id1 = Integer.parseInt(id);
		}
		if(ph_no!=null)
		{
			System.out.print("Hii");
	        try{
	        	 phone_no = Integer.parseInt(ph_no);
	            System.out.println(phone_no); // output = 25
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
		 stmt.setString(2,request.getParameter("name"));    
		 stmt.setString(3,request.getParameter("address")); 
		 stmt.setString(4,request.getParameter("gender"));
		 stmt.setString(5,request.getParameter("disease"));  
		 stmt.setInt(6, Integer.valueOf(phone_no));
		 stmt.setInt(7, Integer.valueOf(doctor_id));
		 stmt.setInt(8, Integer.valueOf(lab_no));
		 int res = stmt.executeUpdate();
		 
		
		
		
			if(res > 0)
			{
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('Add Successful');");
				out.println("location='/HMS/viewInpatient?location=Doctor';");
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
