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

import Models.FoodItems;
import Services.dishService;

/**
 * Servlet implementation class Adddish
 */
@WebServlet("/Adddish")
public class Adddish extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	@EJB
	dishService ds;

	public Adddish() {
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

		
		  FoodItems fi=new FoodItems();
		//  fi.setDishname("Biryani");
		 // String[] ing={"rice","chicken"}; fi.setIngredients(ing);
		//  fi.setPrice(200); ds.add_dish(fi); 
		  fi=new FoodItems();
		  fi.setDishname("Burger");
		//  String[] ing1={"Bun","chicken"}; fi.setIngredients(ing1);
		  fi.setPrice("250"); ds.add_dish(fi); 
		  fi=new FoodItems();
		  fi.setDishname("Haleem");
		//  String[] ing2={"daal","chicken"}; fi.setIngredients(ing2);
		  fi.setPrice("100"); ds.add_dish(fi); 
		  fi=new FoodItems();
		  fi.setDishname("Karahi");
		//  String[] ing3={"naan","chicken"}; fi.setIngredients(ing3);
		  fi.setPrice("200"); ds.add_dish(fi);
		  fi=new FoodItems();
		  fi.setDishname("Korma");
		//  String[] ing4={"rice","chicken"}; fi.setIngredients(ing4);
		  fi.setPrice("150"); ds.add_dish(fi);
		  
		 

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
		 	
		int i,j;
		HttpSession session = request.getSession();
		session.setAttribute("sr", fil);
		

		for (FoodItems cc : fil) {
			if (search.toLowerCase().contains(cc.getDishname().toString().toLowerCase())) {

				 session.setAttribute("sr", cc.getDishname());
				break;
			}
			
			else{
				
				i=fil.indexOf(cc);
				j=fil.size()-1;
				 if(i==j){
					 session.setAttribute("sr","Not Found");
						
				 }
			}

		}
		
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Search.jsp");
		view.forward(request, response);

		
	}

}
