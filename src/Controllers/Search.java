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

import Models.FoodItems;
import Services.dishService;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	dishService ds;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Search() {
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
	//	RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Search.jsp");
    //		view.forward(request, response);

		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String search = request.getParameter("search");
		List<FoodItems> fil = ds.getDishItems();

		int i, j=fil.size() - 1;
		HttpSession session = request.getSession();
		session.setAttribute("clear_btn", "true");
		List<FoodItems> fili =  new ArrayList<FoodItems>();
		

		for (FoodItems cc : fil) {
			i = fil.indexOf(cc);

			if (search.toLowerCase().contains(cc.getDishname().toLowerCase())
					|| cc.getDishname().toLowerCase().contains(search.toLowerCase())) {

				fili.add(cc);
	//			System.out.println();
				//if(i==j){
				session.setAttribute("dishes", fili);
				String noDish = "";
				session.setAttribute("nodish", noDish);
			
				//}
			}

			else if ((i == j) && (fili.size() == 0)) {

				String noDish = "Sorry....! currently we don't have " + search;
				session.setAttribute("nodish", noDish);
				session.setAttribute("dishes", fil);

			}

		}
		
		List<FoodItems> ch=(List<FoodItems>) session.getAttribute("dishes");
        for(FoodItems i1:ch){
         System.out.println(i1.getDishname());	
        }
        System.out.println(session.getAttribute("nodish"));
        System.out.println(session.getAttribute("clear_btn"));
		
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Menu.jsp");
		view.forward(request, response);

		doGet(request, response);
	}

}
