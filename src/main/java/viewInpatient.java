

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
 * Servlet implementation class viewInpatient
 */
@WebServlet("/viewInpatient")
public class viewInpatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewInpatient() {
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
		String loc = request.getParameter("location");
		PrintWriter out = response.getWriter();
		ArrayList inpatientList = new ArrayList(); 
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pswd);
			if(con != null)
			{
				System.out.println("Connection successful !");
			}
			
			
			
			java.sql.Statement stmt = con.createStatement();
			

		String sql = String.format("SELECT patient_id,patient_name,address,gender,disease,phone_no,doctor_id,lab_no FROM inpatient");
		ResultSet res =  stmt.executeQuery(sql);
			if(res.next())
			{	
				 while(res.next()) {
					  inpatientList.add(res.getInt("patient_id"));
					  inpatientList.add(res.getString("patient_name"));
					  inpatientList.add(res.getString("address"));
					  inpatientList.add(res.getString("gender"));
					  inpatientList.add(res.getString("disease"));
					  inpatientList.add(res.getString("phone_no"));
					  inpatientList.add(res.getInt("doctor_id"));
					  inpatientList.add(res.getInt("lab_no"));
					  
				 }
			}
			else {
				
				
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('No Inpatient Added yet');");
				out.println("location='/HMS/MyHospital/screens/inpatient.jsp';");
				out.println("</script>");
				
			//	response.sendRedirect("");
				
			}
		
		}catch(Exception e)
		{
		
			System.out.println(e);
		}
		
		 request.setAttribute("inpatientList", inpatientList);
		 if(loc.equals("Doctor")) {
			 RequestDispatcher dispatcher = request.getRequestDispatcher("/MyHospital/doctor/viewInpatient.jsp");
			 if (dispatcher != null){

				  dispatcher.forward(request, response);

				  } 
		 }
		 else if(loc.equals("Administartor")) {
			 RequestDispatcher dispatcher = request.getRequestDispatcher("/MyHospital/screens/inpatient.jsp");
			 if (dispatcher != null){

				  dispatcher.forward(request, response);

				  } 
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
