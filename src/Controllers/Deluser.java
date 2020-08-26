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

import Models.Customer;
import Services.customerService;

/**
 * Servlet implementation class Deluser
 */
@WebServlet("/Deluser")
public class Deluser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       @EJB
       customerService cs;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deluser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/Deluser.jsp");
		dispatcher.forward(request, response);
	
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String page = null;
		String email=request.getParameter("email");
	    List<Customer> list=cs.getcust();
	    for(Customer i:list){
	      
	    	if(i.getEmail().equals(email)){
	    		cs.delcust(i);
	    		   
	    		page="Userlist";
	    		break;
	    	}
	    	else if(list.indexOf(i)==list.size()-1){
	    		   
	    		request.getSession().setAttribute("usernotexist"," user not exist ");
	    		page="Deluser";
	    	}
	    	
	    }
	      
		response.sendRedirect(page);
		
		doGet(request, response);
	}

}
