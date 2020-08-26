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
 * Servlet implementation class OrderDelivery
 */
@WebServlet("/OrderDelivery")
public class OrderDelivery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       @EJB
       orderService os;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderDelivery() {
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
		
		int orderid=Integer.valueOf(request.getParameter("adminorder_id"));
		System.out.println("51..................."+orderid);
		String status=request.getParameter("dstatus");
		System.out.println("52..................."+status);
		
		os.order_Status(orderid,status);
		if(status.equals("completed")){
			os.order_Completed(orderid, true);
		}
		System.out.println("53...................");
		//request.getSession().setAttribute("userid",cs.getchefObject(c,c.getId()));
		System.out.println("54...................");
		if(request.getParameter("Orders")==null){
		response.sendRedirect("Adminnotify");}
		else{
			response.sendRedirect("Activeorderz");
			
		}
		
		//doGet(request, response);
	}

}
