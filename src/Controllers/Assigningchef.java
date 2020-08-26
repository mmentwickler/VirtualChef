package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.Chef;
import Models.Customer;
import Models.Orderz;
import Services.orderService;

/**
 * Servlet implementation class Assigningchef
 */
@WebServlet("/Assigningchef")
public class Assigningchef extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	orderService os;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	// boolean load;
	public Assigningchef() {
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
		// load=true;
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Searchchef.jsp");
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
		// List<Orderz> listOrderz=os.getOrder();
		List<Orderz> orderz;
		Map<Chef, Double> chefDist = new HashMap<Chef, Double>();
		Orderz placedOrderz = null;
		Map.Entry<Chef, Double> chefDistj;
		int id;
		boolean load = (boolean) request.getSession().getAttribute("findchef");

		// System.out.println(load);
		if (load) {
			orderz = os.getOrder();
			Customer cust = (Customer) request.getSession().getAttribute("userid");
			for (Orderz oi : orderz) {
				if (oi.getCust_order().getId() == cust.getId() && (!oi.isAccept())) {
					// System.out.println(oi.getCust_order().getId()+"=="+cust.getId());
					placedOrderz = oi;
					chefDist = placedOrderz.getInterested();

					break;
				}
			}
			// Orderz placedOrderz=(Orderz)
			// request.getSession().getAttribute("placedOrderz");
			Chef toAssign = null;
			// chefDist=placedOrderz.getInterested();
			if (chefDist != null) {
				System.out.println("Chef interested and the size of list is " + chefDist.size());

				for (Map.Entry<Chef, Double> chefDisti : chefDist.entrySet()) {
					System.out.println(
							chefDisti.getKey().getId() + "<-- ID and NAME-->" + chefDisti.getKey().getFirstName());
				}

			} else {
				System.out.println("No Chef Interested and you can verify it as " + (chefDist == null));

			}

			int i = 0;
			Double j = 0.00;

			if ((chefDist != null)) {

				if ((chefDist.size() > 1)) {

					// System.out.println("67-----------------------------------");
					for (Map.Entry<Chef, Double> chefDisti : chefDist.entrySet()) {


						if (i == 0) {

							j = chefDisti.getValue();
							toAssign = chefDisti.getKey();
							i++;
						} else if (j > chefDisti.getValue()) {

							j = chefDisti.getValue();
							toAssign = chefDisti.getKey();
						}

					}
					if (toAssign.isStatus()) {

						// placedOrderz.setChef_order(toAssign);
						os.add_Chef(placedOrderz, toAssign);
						os.order_Active(placedOrderz, true);
						// System.out.println("Assigned chef
						// is..."+placedOrderz.getChef_order().getFirstName());

						response.sendRedirect("Menu");
						// request.getSession().setAttribute("placedOrderz",
						// null);
					}

				} else if (chefDist.size() == 1) {

					chefDistj = chefDist.entrySet().iterator().next();
					toAssign = chefDistj.getKey();
					id = toAssign.getId();
					if (toAssign.isStatus()) {

						// placedOrderz.setChef_order(toAssign);
						os.add_Chef(placedOrderz, toAssign);
						os.order_Active(placedOrderz, true);

						// System.out.println("Assigned chef
						// is..."+placedOrderz.getChef_order().getFirstName());
						load = false;
						// RequestDispatcher
						// view=request.getRequestDispatcher("WEB-INF/views/Menu.jsp");
						// view.forward(request, response);
						PrintWriter out = response.getWriter();
						String a = "true";
						out.write(a);
						// System.out.println(a);
						// response.sendRedirect("Menu");
					
						//request.getSession().setAttribute("placedOrderz", null);
						request.getSession().setAttribute("findchef", load);

					}

				}

			}

		}

		if ((boolean) request.getSession().getAttribute("findchef")) {
			request.getSession().setAttribute("nochef", true);
			Orderz placedorderz=	(Orderz) request.getSession().getAttribute("placedOrderz");
			os.delOrder(placedorderz);
		
		}

	}
}
