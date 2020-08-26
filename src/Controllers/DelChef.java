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

import Models.Chef;
import Services.chefService;

/**
 * Servlet implementation class DelChef
 */
@WebServlet("/DelChef")
public class DelChef extends HttpServlet {
	private static final long serialVersionUID = 1L;
       @EJB
       chefService cs;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelChef() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/DelChef.jsp");
		dispatcher.forward(request, response);
	
		
		//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = null;
		String email=request.getParameter("email");
	    List<Chef> list=cs.getchef();
	    for(Chef i:list){
	      
	    	if(i.getEmail().equals(email)){
	    		cs.delchef(i);
	    		   
	    		page="ChefList";
	    		break;
	    	}
	    	else if(list.indexOf(i)==list.size()-1){
	    		   
	    		request.getSession().setAttribute("chefnotexist"," chef not exist ");
	    		page="DelChef";
	    	}
	    	
	    }
	      
		response.sendRedirect(page);
		doGet(request, response);
	}

}
