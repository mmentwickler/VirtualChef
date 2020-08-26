package Controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Models.Chef;
import Models.Orderz;
import Services.orderService;

/**
 * Servlet implementation class Earnings
 */
@WebServlet("/Earnings")
public class Earnings extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @EJB 
    orderService os;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Earnings() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 			HttpSession sess = request.getSession();
					String var = (String) sess.getAttribute("loginchef");
					Chef chef=(Chef) sess.getAttribute("chefid");
			    	if (var.equals("true")) {
			    		
			    		List<Orderz> listOrderz=os.getOrder();
				    	List<Orderz> listChefOrderz=new ArrayList<Orderz>();
				    	for(Orderz i:listOrderz){
				    		if(i.getChef_order()!=null){
				    		if(i.getChef_order().getId()==chef.getId())
				    		listChefOrderz.add(i);
				    		}
				    	}
				    	int income=0,projects=listChefOrderz.size();
				    	
				    	for(Orderz j:listChefOrderz){
				    		income+=j.getTotal_price();
				    	}
				    	
				    	sess.setAttribute("projects", projects);
				    	sess.setAttribute("income", income);
				    	

						
			    		
			    		
			    		
						RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Earnings.jsp");

						view.forward(request, response);
					} else {
						RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/LoginSignup.jsp");

						view.forward(request, response);

					}
				
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
