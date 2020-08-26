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
 * Servlet implementation class testOrder
 */
@WebServlet("/testOrder")
public class testOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	orderService os;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//RequestDispatcher view=request.getRequestDispatcher("WEB-INF/views/Ordersuser.jsp");
		//view.forward(request, response);
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	/*	Orderz o=new Orderz();
		o.setOrdered_dish(request.getParameter("dish").toString());
		System.out.println(request.getParameter("dish"));
		os.place_Order(o);
		RequestDispatcher view=request.getRequestDispatcher("WEB-INF/views/Menu.jsp");
		view.forward(request, response);*/
	

		//doGet(request, response);
	}

}
