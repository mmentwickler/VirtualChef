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

import Models.Chef;
import Models.FoodItems;
import Models.Orderz;
import Services.Signupservice;
import Services.chefService;
import Services.dishService;

/**
 * Servlet implementation class ChefSignup
 */
@WebServlet("/ChefSignup")
public class ChefSignup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	@EJB
	dishService ds;
	@EJB
	Signupservice ss;
	@EJB
	chefService chs;

	public ChefSignup() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher view=request.getRequestDispatcher("WEB-INF/views/Error.jsp");
		HttpSession session=request.getSession();
	       String login=(String) session.getAttribute("loginchef");
	       String er=(String) session.getAttribute("chefje");
		   System.out.println(er+" 51 ");
	       if((login==null)){
	    	   session.setAttribute("loginchef","false");
	    	 }

	       if(er==null){

	    	   session.setAttribute("chefje", "" );
	       } 
	       System.out.println((String) session.getAttribute("chefje")+" 60 ");
	       String login1=(String) session.getAttribute("loginchef");
           System.out.println(login1+" 62 ");
           if(login1.equals("true")){
	    	    view = request.getRequestDispatcher("WEB-INF/views/Chefhome.jsp");
	    	
	       }
	       else if(login1.equals("false")){
	    		List<FoodItems> fil = ds.getDishItems();
	    		request.setAttribute("dishes", fil);
	    		System.out.println((String) session.getAttribute("chefje")+" 71 ");
	    		view = request.getRequestDispatcher("WEB-INF/views/ChefSignup.jsp");

	    		System.out.println((String) session.getAttribute("chefje")+" 74 ");
	    	
	    		System.out.println((String) session.getAttribute("chefje")+" 77 ");
	       }
           
       	     view.forward(request, response);

		
		// TODO Auto-generated method stub
	

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		

		String page = "";
		// TODO Auto-generated method stub
		Chef ch = new Chef();
		ch.setFirstName(request.getParameter("fname"));
		ch.setLastName(request.getParameter("lname"));
		ch.setPhone_number(request.getParameter("cnum"));
		ch.setDob(request.getParameter("dob"));
		ch.setCnic(request.getParameter("cnic"));
		ch.setEmail(request.getParameter("email"));
		ch.setPassword(request.getParameter("password"));
		ch.setAddress(request.getParameter("address"));
		ch.setAccount_no(request.getParameter("Account-number"));
		ch.setEducation(request.getParameter("education"));
		//System.out.println(request.getParameter("email"));
		
		List<Chef> clist = ss.getChef();
		if(clist.isEmpty()){
			ss.add_Chef(ch);
			List<Chef> clisti = ss.getChef();
			Chef ci=clisti.iterator().next();
			session.setAttribute("loginchef","true");
			session.setAttribute("chefid",ci);
			chs.changeStatus(ci, true);
			page = "Chefend";
			
		}
		else{
		

		for (Chef cc : clist) {
				/*if(cc.getEmail()==null){
				ss.del(cc);
			}*/
			if ((cc.getEmail().equals(request.getParameter("email")))
					|| (cc.getCnic().equals(request.getParameter("cnic")))) {
				page = "Chef with same email and/or cnic already registered";
				break;
			} else if (clist.indexOf(cc) == clist.size() - 1) {
				page = "Chefend";

			}

		}
		}
		if (page.equals("Chef with same email and/or cnic already registered")) {
			session.setAttribute("chefje", page);
			page="ChefSignup";
			//System.out.println(page);
		}
		
		else if(page.equals("Chefend")){

		ss.add_Chef(ch);

		String dishes[] = request.getParameterValues("dish_name");
		for (String dl : dishes) {
			ds.addDishToChef(dl, String.valueOf(ch.getId()));

		}
		session.setAttribute("loginchef","true");
		session.setAttribute("chefid",ch);
		chs.changeStatus(ch, true);
		session.setAttribute("chefid",chs.getchefObject(ch,ch.getId()));
		
		
		//System.out.println(page);
		//page="Chefendhome";
		page="Testmaps";	
		List<Orderz> match_Orders = new ArrayList<Orderz>();
		session.setAttribute("match_Orders", match_Orders);
		session.setAttribute("a_orderz", match_Orders);
		}
		System.out.println((String) session.getAttribute("chefje")+" 152 ");
    	
		response.sendRedirect(page);

		doGet(request, response);
	}

}
