package Controllers;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Models.Chef;
import Models.FoodItems;
import Services.chefService;
import Services.dishService;

/**
 * Servlet implementation class addskill
 */
@WebServlet("/addskill")
public class addskill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       @EJB
       dishService ds;
       @EJB
       chefService cs;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addskill() {
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
		System.out.println("line no 1");
		Chef ch=(Chef) request.getSession().getAttribute("chefid");
		String dishes[] = request.getParameterValues("skill_name");
		System.out.println("line no 2");
		HttpSession session=request.getSession();
		
		for (String dl : dishes) {
			System.out.println("line no 3"+dl);
			
			ds.addDishToChef(dl, String.valueOf(ch.getId()));

		}
		Chef c = (Chef) session.getAttribute("chefid");
        
		List<FoodItems> chef_dishes = c.getF_items();
		for (int i = 0; i < chef_dishes.size(); i++) {
			String name1 = chef_dishes.get(i).getDishname();

         System.out.println(name1);
         }
		c=cs.getchefObject(c,c.getId());
		session.setAttribute("chefid", c);
		
		System.out.println("line no 4");
		
		response.sendRedirect("Chefendhome");
		//doGet(request, response);
	}

}
