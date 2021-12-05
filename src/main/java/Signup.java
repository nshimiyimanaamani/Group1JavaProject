

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String fullname= request.getParameter("fullname");
		String email=request.getParameter("email");
		int phone=Integer.parseInt(request.getParameter("phone"));
		String department =request.getParameter("department");
		String level=request.getParameter("level");
		String password =request.getParameter("password");
		User user=new User(fullname,email,phone,department,level,password);
		DBconn dbcon=new DBconn();
		 String result=dbcon.insert(user);
		 request.setAttribute("status1",result); 
		 getServletContext().getRequestDispatcher("/signup.jsp").forward(request, response);
		
			}
	}


