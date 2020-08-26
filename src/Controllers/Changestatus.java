package Controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.Chef;
import Services.chefService;
import Services.orderService;

/**
 * Servlet implementation class Changestatus
 */
@WebServlet("/Changestatus")
public class Changestatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       @EJB
       orderService  os;
       @EJB
       chefService cs;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Changestatus() {
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
		System.out.println("49...................");
		Chef c=(Chef) request.getSession().getAttribute("chefid");
		System.out.println("50..................."+c.getId());
		
		int orderid=Integer.valueOf(request.getParameter("order_id"));
		System.out.println("51..................."+orderid);
		String status=request.getParameter("status");
		System.out.println("52..................."+status);
		os.order_Status(orderid,status);
		System.out.println("53...................");
		request.getSession().setAttribute("userid",cs.getchefObject(c,c.getId()));
		System.out.println("54...................");
		
		response.sendRedirect("Cheforderpagi");
		doGet(request, response);
	}

}
