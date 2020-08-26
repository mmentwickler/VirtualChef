package Controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.Chef;
import Models.Orderz;

/**
 * Servlet implementation class OrderzAssigned
 */
@WebServlet("/OrderzAssigned")
public class OrderzAssigned extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderzAssigned() {
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
		List<Orderz> match_Orders =	(List<Orderz>) request.getSession().getAttribute("match_Orders");
		List<Orderz> assigned_Orders = null;
		Chef ch=(Chef) request.getSession().getAttribute("chefid");
		for(Orderz match_Ordersi:match_Orders ){
			if((match_Ordersi.isAccept())&&(match_Ordersi.getChef_order().getId()==ch.getId())&&(!match_Ordersi.isCompleted())){
				assigned_Orders.add(match_Ordersi);
				request.getSession().setAttribute("assigned_Orders", assigned_Orders);
				match_Orders.remove(match_Ordersi);
			}
			
		}
		
		
		
		
		
		doGet(request, response);
	}

}
