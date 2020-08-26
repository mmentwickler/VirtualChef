package Controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Services.orderService;

/**
 * Servlet implementation class Nochef
 */
@WebServlet("/Nochef")
public class Nochef extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	orderService os;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Nochef() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getParameter("seemenu")!=null){
			
		//	Orderz orderz=	(Orderz) request.getSession().getAttribute("placedOrderz");
		//	os.delOrder(orderz);
			request.getRequestDispatcher("WEB-INF/views/Menu.jsp").forward(request, response);
				
			
		}else if(request.getParameter("retry")!=null){
			request.getSession().setAttribute("findchef",true);
		    request.getSession().setAttribute("nochef", false);

			response.sendRedirect("Assigningchef");
			
		}
			
		doGet(request, response);
	}

}
