package Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
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
	       
	       if((session.getAttribute("order")==null)){
	    	   session.setAttribute("order","false");
	    	   //request.setAttribute("inc_user_or_pass", "" );
	       }
	       
	       String order_dish=(String)session.getAttribute("order");
			 
	       if((login==null)){
	    	   session.setAttribute("login","false");
	    	   request.setAttribute("inc_user_or_pass", "" );
	       }
	       
	 


    	   System.out.println("0------------------------"+order_dish);
	          
	       if(order_dish.equals("true")){
	    	   session.setAttribute("order","false");
	    	   System.out.println("0------------------------"+order_dish);
	    	   response.sendRedirect("Menu");
	    	   //	RequestDispatcher view=request.getRequestDispatcher("WEB-INF/views/Menu.jsp");
	   		 //view.forward(request, response);
		    	  
	       }
	       else{
	    //  System.out.println(login);
       
		RequestDispatcher view=request.getRequestDispatcher("WEB-INF/views/Home.jsp");
		 view.forward(request, response);}
	
		
		//	response.getWriter().append("Served at: ").append(request.getContextPath());
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
