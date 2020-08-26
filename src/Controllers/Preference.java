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

import Models.CustDishType;
import Models.Customer;
import Models.DishType;
import Services.customerService;
import Services.dishService;

/**
 * Servlet implementation class Preference
 */
@WebServlet("/Preference")
public class Preference extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB 
	dishService ds;
	
	@EJB
	customerService cs;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Preference() {
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
		   HttpSession session=request.getSession();
		   Customer cust=(Customer) session.getAttribute("userid"); 
		   

		   String[] dishTypeNames = request.getParameterValues("cb");
		   cust.setSpice(Integer.valueOf(request.getParameter("spicy")));
		//   int veg=);
		   
		   cust.setVeg(Integer.valueOf(request.getParameter("veg"))==1?true:false);
		    
		 
		 //  cust.setDishType(dishTypes);
		   
           
        //   List<DishType> dishTypes=new ArrayList<DishType>();
		   for(String id:dishTypeNames){
			   DishType dt=ds.findById(Integer.valueOf(id));
				CustDishType cdt=new CustDishType();
				cdt.setCust_dishes(cust);
				cdt.setDishType(dt);
				cdt.setDate(System.currentTimeMillis());
				ds.add_CustdishType(cdt);
				
				List<CustDishType> fl = cust.getDishTypes();
				fl.add(cdt);
				cust.setDishTypes(fl);
			/* //  DishType dt=ds.findById(Integer.valueOf(id));
			   ds.addDishTypeToCust(id, String.valueOf(cust.getId()));
			//   dishTypes.add(dt);
*/		   }
		   

           cs.updateCustomerObject(cust);
           
           Customer custNew=cs.getObject(cust, cust.getId());
           session.setAttribute("userid", custNew);
		
           response.sendRedirect("DishPredict");
            
		
		
		doGet(request, response);
	}

}
