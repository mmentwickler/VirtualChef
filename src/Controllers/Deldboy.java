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

import Models.DeliveryBoy;
import Services.deliverBoyService;

/**
 * Servlet implementation class Deldboy
 */
@WebServlet("/Deldboy")
public class Deldboy extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@EJB 
	deliverBoyService dbs;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deldboy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Deldboy.jsp");
		view.forward(request, response);

	
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String page = null;
		String cnic=request.getParameter("cnic");
	    List<DeliveryBoy> list=dbs.getDeliveryBoy();
	    for(DeliveryBoy i:list){
	      
	    	if(i.getCnic().equals(cnic)){
	    		dbs.delDboy(i);   
	    		page="Dboylist";
	    		break;
	    	}
	    	else if(list.indexOf(i)==list.size()-1){
	    		   
	    		request.getSession().setAttribute("dboydelerror"," dboy not exist ");
	    		page="Deldboy";
	    	}
	    	
	    }
	      
		response.sendRedirect(page);
		doGet(request, response);
	}

}
