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

import Models.Chef;
import Models.FoodItems;
import Services.dishService;

/**
 * Servlet implementation class Chefendhome
 */
@WebServlet("/Chefendhome")
public class Chefendhome extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	dishService ds;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Chefendhome() {
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
		String var = (String) sess.getAttribute("loginchef");
		if (var==null){
			var="false";
		}

		if (var.equals("true")) {
    		Chef c = (Chef) sess.getAttribute("chefid");
         	List<FoodItems> chef_dishes = c.getF_items();
			List<FoodItems> all_dishes = ds.getDishItems();
		/*	System.out.println("all dishes");
			for (FoodItems fi1 : all_dishes) {
				System.out.println(fi1.getDishname());
			}*/
			List<FoodItems> avail_dishes = all_dishes;
			for (int i = 0; i < chef_dishes.size(); i++) {
				for (int j = 0; j < all_dishes.size(); j++) {
					String name = all_dishes.get(j).getDishname();

					String name1 = chef_dishes.get(i).getDishname();

					if (name.equals(name1)) {

						//System.out.println("Removing " + name);

						all_dishes.remove(j); // will throw CME
						break;
					}
				}

			}

			avail_dishes = all_dishes;
			// List<Fooditems>
			
			/*for (FoodItems fi : avail_dishes) {
				System.out.println(fi.getDishname());
			}*/
			sess.setAttribute("dish", avail_dishes);
			RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Chefhome.jsp");

			view.forward(request, response);
		} else {
			RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/LoginSignup.jsp");
			view.forward(request, response);

		}

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
