

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
		String email=request.getParameter("email");
		String password=request.getParameter("password");
	DBconn dbcon=new DBconn();
		if(dbcon.checkValidity(email,password)!=null && dbcon.checkUserPassword(email,password) != 0)
		{
			HttpSession session=request.getSession();
			session.setAttribute("username",dbcon.checkValidity(email,password) );
			session.setAttribute("useid",dbcon.checkUserPassword(email,password) );
			response.sendRedirect("userdashboard/home.jsp");
			}
		else
		{
			request.setAttribute("status1","Incorrect username or password"); 
			 getServletContext().getRequestDispatcher("/Post.jsp").forward(request, response);
			response.sendRedirect("Post.jsp");
			
			
		}
		
	}
	

}
