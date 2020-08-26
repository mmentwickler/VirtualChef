package Controllers;

import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.CustDishType;
import Models.Customer;
import Models.FoodItems;
import Models.Orderz;
import Models.Status;
import Services.customerService;
import Services.dishService;
import Services.orderService;

/**
 * Servlet implementation class Searchchef
 */
@WebServlet("/Searchchef")
public class Searchchef extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	orderService os;
	
	@EJB
	customerService cs;
	
	@EJB
	dishService ds;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Searchchef() {
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
		
		FoodItems foodItem=(FoodItems)request.getSession().getAttribute("dishname");
		Customer c=(Customer) request.getSession().getAttribute("userid");
		
			c.setVeg(foodItem.isVeg());
			
			int spice_cust;
		if(c.getSpice()==0)
		{
			c.setSpice(foodItem.getSpice());
		}
		else{
			double cspice=c.getSpice();
			double fspice=foodItem.getSpice();
			
			double spice=(cspice+fspice)/2.0;
			if(fspice>cspice)
				spice_cust=(int)Math.ceil(spice);
			else if(fspice<cspice)
				spice_cust=(int)Math.floor(spice);
			else
				spice_cust=(int)spice;
			
			c.setSpice(spice_cust);
			
	/*	List<DishType> custDishType=c.getDishType();
			DishType dishType = custDishType.stream()
					.filter(temp -> temp.getId() == foodItem.getDishtype().getId()).findAny().orElse(null);
			if(dishType==null){
				if(custDishType.size()<3){
					ds.addDishTypeToCust(String.valueOf(foodItem.getDishtype().getId()), String.valueOf(c.getId()));
				}else{
				//	List<DishType> newCustDishTypes=new ArrayList<DishType>();
					for(int i=1;i<3;i++){
						ds.addNewDishTypeToCust(String.valueOf(custDishType.get(i).getId()), String.valueOf(c.getId()),new ArrayList<DishType>());
					}
					ds.addDishTypeToCust(String.valueOf(foodItem.getDishtype().getId()), String.valueOf(c.getId()));
				}
				
			}*/

				
		}
		
		
		CustDishType cdt=new CustDishType();
		cdt.setCust_dishes(c);
		cdt.setDishType(foodItem.getDishtype());
		cdt.setDate(System.currentTimeMillis());
		ds.add_CustdishType(cdt);
		
		List<CustDishType> fl = c.getDishTypes();
		fl.add(cdt);
		c.setDishTypes(fl);
		

		cs.updateCustomerObject(c);
		
		//ds.addDishTypeToCust(String.valueOf(foodItem.getDishtype().getId()), String.valueOf(c.getId()));
		
		
		String date=java.util.Calendar.getInstance().getTime().toString();
		String dishname=foodItem.getDishname();
		String name=request.getParameter("name");
		String phoneno=request.getParameter("phoneno");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String serving=request.getParameter("serving");
		int price=Integer.valueOf(foodItem.getPrice())*Integer.valueOf(serving);
				
		String city=request.getParameter("city");
		String message=request.getParameter("message");
		String lat=request.getParameter("lat");
		String longi=request.getParameter("long");
		String day=null;	
		Calendar calendar = Calendar.getInstance();
		int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
		switch (dayOfWeek) {
	    case Calendar.SUNDAY:
	        day="Sunday";
	        break;
	    case Calendar.MONDAY:
	    	day="MONDAY";// Current day is Monday
	        break;
	    case Calendar.TUESDAY:
	    	day="TUESDAY";// etc.
	        break;

	    case Calendar.WEDNESDAY:
	    	day="WEDNESDAY";// etc.
	        break;

	    case Calendar.THURSDAY:
	    	day="THURSDAY";// etc.
	        break;

	    case Calendar.FRIDAY:
	    	day="FRIDAY";// etc.
	        break;

	    case Calendar.SATURDAY:
	    	day="SATURDAY";// etc.
	        break;
	}
		
		Orderz o=new Orderz();
		o.setoDay(day);
		o.setDate(date);
		o.setAccept(false);
		o.setAddress(address);
		o.setCompleted(false);
		o.setLocation_Latitude(Double.valueOf(lat));
		o.setLocation_Longitude(Double.valueOf(longi));
		o.setMsg(message);
		o.setOrdered_dish(dishname);
		o.setPlaced(true);
		o.setServings(Integer.parseInt(serving));
		o.setTotal_price(price);
		o.setCust_order(c);
		o.setStatus(Status.placed);
		os.place_Order(o);

		
		
		
	    Orderz placedOrderz=o;
	 	request.getSession().setAttribute("placedOrderz", placedOrderz);
		request.getSession().setAttribute("findchef",true);
	    request.getSession().setAttribute("nochef", false);

	    
	//    response.sendRedirect("DishPredict");
		response.sendRedirect("Assigningchef");
		//doGet(request, response);
	}

}
