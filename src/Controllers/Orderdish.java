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
 * Servlet implementation class Orderdish
 */
@WebServlet("/Orderdish")
public class Orderdish extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB 
	dishService ds;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Orderdish() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 HttpSession session=request.getSession();
	       String login=(String) session.getAttribute("login");
	       String link;
	   	  // String load =(String) session.getAttribute("findchef");
          // System.out.println(load);
	       if(!login.equals("true")){
	    	 session.setAttribute("order", "true");  
	    	link="WEB-INF/views/LoginSignup.jsp";
	    	//   System.out.println("52----------------");
	    	     
	       }/*else if(load.equals("true")){
	    	   
	    		link="WEB-INF/views/Menu.jsp";
	    	    
	       }*/
	       else{
	    	   
	    	   List<FoodItems> fi=ds.getDishItems();
	    	   for(FoodItems fii:fi){
	    	   if(fii.getDishname().equals(request.getParameter("dish")))
	    	   session.setAttribute("dishname",fii );
	    	   
	    	   }
	    	 link="WEB-INF/views/Placeorderdetail.jsp";
	    	//   System.out.println("57----------------");
	    	     
	    		     
	       }
	     //System.out.println(login);
     
		RequestDispatcher view=request.getRequestDispatcher(link);
		 view.forward(request, response);
		
		//doGet(request, response);
	}

}
