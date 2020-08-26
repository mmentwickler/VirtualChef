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
 * Servlet implementation class Menu
 */
@WebServlet("/Menu")
public class Menu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	@EJB
	dishService ds;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Menu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 HttpSession session=request.getSession();
	       String login=(String) session.getAttribute("login");
	       if((login==null)){
	    	   session.setAttribute("login","false");
	    	   request.setAttribute("inc_user_or_pass", "" );
	       }
	 
	    	   session.setAttribute("nodish",null);
	   		  
	       
	   	  
	       
	     //  HttpSession session=request.getSession();
		   List<FoodItems> lfi=ds.getDishItems();
		   session.setAttribute("dishes", lfi);	
		   session.setAttribute("clear_btn", "false");
			

		RequestDispatcher view=request.getRequestDispatcher("WEB-INF/views/Menu.jsp");
		 view.forward(request, response);
	
		
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
