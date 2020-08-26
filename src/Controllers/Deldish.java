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

import Models.FoodItems;
import Services.dishService;

/**
 * Servlet implementation class Deldish
 */
@WebServlet("/Deldish")
public class Deldish extends HttpServlet {
	private static final long serialVersionUID = 1L;
       @EJB
       dishService ds;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deldish() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Deldish.jsp");
		view.forward(request, response);

	
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub#
		
		
		String page = null;
		int id=Integer.valueOf(request.getParameter("id"));
	    List<FoodItems> list=ds.getDishItems();
	    for(FoodItems i:list){
	      
	    	if(i.getId()==id){
	    		//cs.delchef(i);
	    		  ds.del(i); 
	    		page="Viewdishes";
	    		break;
	    	}
	    	else if(list.indexOf(i)==list.size()-1){
	    		   
	    		request.getSession().setAttribute("errordeldish","dish not exist ");
	    		page="Deldish";
	    	}
	    	
	    }
	      
		response.sendRedirect(page);
		
		
		doGet(request, response);
	}

}
