package Controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Models.Customer;
import Models.DishPred;
import Models.DishType;
import Models.FoodItems;
import Services.customerService;
import Services.dishService;

/**
 * Servlet implementation class DishPredict
 */
@WebServlet("/DishPredict")
public class DishPredict extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	@EJB
	customerService cs;
	
	@EJB
	dishService ds;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DishPredict() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 HttpSession session=request.getSession();
		 int accuracy=0;
	       String login=(String) session.getAttribute("login");
	       String link=null;
	   	  // String load =(String) session.getAttribute("findchef");
        // System.out.println(load);
	       if(!login.equals("true")){
	    	 session.setAttribute("pred_dish", "true");  
	    	link="WEB-INF/views/LoginSignup.jsp";
	    	//   System.out.println("52----------------");
	    	     
	       }else{
	    	   
	    	   Customer cust=(Customer) session.getAttribute("userid");
	    	   Customer prefCust=cs.getByPref(cust);
	    	   if(prefCust==null){
	    		   
	    			List<DishType> dishTypes=ds.getDishType();
	    		//	if(dishTypes!=null && dishTypes.size()>0)
	    			request.getSession().setAttribute("dishtypes",dishTypes);
	    		    link="WEB-INF/views/PrefQues.jsp";
	    		   // ask for user preference
	    		   
	    	   }else{
	    		   List<DishType> userDishTypes=ds.getUserDishType(cust.getId());
	    		   if(userDishTypes.size()>3){
	    			   List<DishType> dtList=new ArrayList<DishType>();
	    			   for(int i=0;i<3;i++){
	    				   dtList.add(userDishTypes.get(i));
	    			   }
	    			   userDishTypes=dtList;
	    		   }
	    		   
	    		   List<Integer> list=new ArrayList<Integer>();
	    		   for(DishType dtype:userDishTypes){
	    			list.add(dtype.getId());   
	    		   }
	    		   
	    		   List<FoodItems> foodItems=ds.getDishByPref1(cust.getSpice(), cust.getVeg(), list);
	    		   if(foodItems!=null && foodItems.size()>0){
	    		       session.setAttribute("foodItems",foodItems);
	    		       link="WEB-INF/views/PrefMenu.jsp";
	    		       accuracy=100;

	    		   }else{
	    			   
	    		  
	    			   List<FoodItems> foodItems2=ds.getDishByPref2(cust.getVeg(), list,3);
    				   if(foodItems2!=null && foodItems2.size()>0){

    	    		       session.setAttribute("foodItems",foodItems2);
    	    		       link="WEB-INF/views/PrefMenu.jsp";
    	    		       accuracy=70;
	    			
	    		   }else{
	    			   List<FoodItems> foodItems3=ds.getDishByPref3( list,3);
    				   if(foodItems3!=null && foodItems3.size()>0){

    	    		       session.setAttribute("foodItems",foodItems3);
    	    		       link="WEB-INF/views/PrefMenu.jsp";
    	    		       accuracy=40;
	    		   }
    				   else{
    					   
    					   session.setAttribute("foodItems",session.getAttribute("dishes"));
    	    	    		  
    		   		       link="WEB-INF/views/PrefMenu.jsp";
    		   	    	 
    				   }
	    		   
	    		   }
	    		   
	    		   
	    		   //prediction logic here
	    		 //  link="WEB-INF/views/Menu.jsp";
	    	   }
	    	   
				
	    	   DishPred dishPred=new DishPred();
	    	   dishPred.setDate(System.currentTimeMillis());
	    	   dishPred.setPredAccuracy(accuracy);
	    	   dishPred.setUser(cust);
	    	   ds.add_dishPred(dishPred);
	    	   
		       session.setAttribute("dishPred",dishPred);
	    	   
	    	   
	    	   
	    	   
	       }
	       }
		// TODO Auto-generated method stub
		RequestDispatcher view=request.getRequestDispatcher(link);
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
