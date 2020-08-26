package Controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.DishType;
import Services.dishService;

/**
 * Servlet implementation class Deldish
 */
@WebServlet("/Deldishtype")
public class Deldishtype extends HttpServlet {
	private static final long serialVersionUID = 1L;
       @EJB
       dishService ds;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deldishtype() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Deldishtype.jsp");
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
	    DishType list=ds.findById(id);
	    if(list==null){
	    	request.getSession().setAttribute("errordeldishtype","dish type not exist ");
    		page="Deldishtype";

	    }
	    else{
	    	 ds.del_DType(list); 
	    	page="Viewdishtypes";
	    
	    }
	
	    	
	    
	      
		response.sendRedirect(page);
		
		
		doGet(request, response);
	}

}
