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

import Models.Customer;
import Services.Loginservice;
import Services.Signupservice;
import Services.customerService;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	Signupservice sus;
	@EJB
	Loginservice lis;
    @EJB
    customerService cs;
	
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Signup() {
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
		// TODO Auto-generated method stub
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Signup.jsp");
		view.forward(request, response);

		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session =request.getSession();
		session.setAttribute("userse", "");
		
		String date=request.getParameter("dob");
		System.out.println(request.getParameter("dob"));
		String page="";
		System.out.println("74------------------");
		Customer c = new Customer();
		c.setFirstName(request.getParameter("fname"));
		c.setLastName(request.getParameter("lname"));
		c.setCnic(request.getParameter("cnic"));
		c.setDob(request.getParameter("dob"));
		c.setPhone_num(request.getParameter("phone_num"));
		c.setAddress(request.getParameter("address"));
		c.setEmail(request.getParameter("email"));
		c.setPassword(request.getParameter("password"));
		System.out.println("84------------------");
		
		List<Customer> clist = sus.getCustomer();
		if(clist.isEmpty()){
			sus.add_Customer(c);
			List<Customer> clisti = sus.getCustomer();
			Customer ci=clisti.iterator().next();
			session.setAttribute("login","true");
			session.setAttribute("userid",ci);
			cs.changeStatus(ci, true);
			//ci.setStatus(true);
			page = "Home";
			
		}
		else{
		System.out.println("87------------------");
		
		for (Customer cc : clist) {
		if ((cc.getEmail().equals(request.getParameter("email")))
				|| (cc.getCnic().equals(request.getParameter("cnic")))) {
			page = "user with same email already registered";
			System.out.println(cc.getEmail()+" "+request.getParameter("email"));
			System.out.println(cc.getCnic()+" "+request.getParameter("cnic"));
			
			System.out.println("93------------------");
			
			break;
			
		} else if (clist.indexOf(cc) == clist.size() - 1) {
			page = "Home";
			sus.add_Customer(c);
			
			session.setAttribute("login","true");
			
			session.setAttribute("userid",c);
			cs.changeStatus(c,true);
			
			System.out.println("101------------------");
			

		}

	}
		}
		
		if (page.equals("user with same email or cnic already registered")) {
			session.setAttribute("userse", page);
			page="Login";
			System.out.println("111------------------");
			
			//System.out.println(page);
		}	else if(page.equals("Home")){
             
			page="Home";
			
			System.out.println("117------------------");
			
		}
		

		System.out.println("122------------------");
		
		response.sendRedirect(page);
		System.out.println("125------------------");
		

	
         
	}

}
