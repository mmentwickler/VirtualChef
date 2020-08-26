package Controllers;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Models.Orderz;
import Services.orderService;

/**
 * Servlet implementation class Adminhome
 */
@WebServlet("/Adminhome")
public class Adminhome extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@EJB
	orderService os;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Adminhome() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sess = request.getSession();
		String var = (String) sess.getAttribute("admin");
		if (var == null) {
			var = "false";
			request.setAttribute("inc_user_or_pass", "");
			  sess.setAttribute("userse", "" );
		    	 
			sess.setAttribute("admin", var);
		}
	
		RequestDispatcher view;

		if (var.equals("true")) {
            int i=0;
			List<Orderz> li=os.getOrder();
			for(Orderz o:li){
			        i+=o.getTotal_price();
			}
			sess.setAttribute("rev", i);
			sess.setAttribute("totalorder",li.size());
			view = request.getRequestDispatcher("WEB-INF/views/Adminhome.jsp");

		} else {
		
			view = request.getRequestDispatcher("WEB-INF/views/LoginSignup.jsp");
		}
		
		view.forward(request, response);

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
