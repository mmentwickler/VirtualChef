package Controllers;

import java.io.IOException;

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
 * Servlet implementation class Userprofile
 */
@WebServlet("/Userprofile")
public class Userprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userprofile() {
        super();
        // TODO Auto-generated constructor stub
    }
  @EJB
  customerService cs;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    
		//Customer c=(Customer) request.getSession().getAttribute("userid");
		//cs.getClass(c);
		RequestDispatcher view=request.getRequestDispatcher("WEB-INF/views/Userprofile.jsp");
		view.forward(request, response);
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		if(request.getParameter("change")!=null){
		System.out.println("53_______________________________________________-");
	
			
		Customer c=(Customer) request.getSession().getAttribute("userid");
		System.out.println("54_______________________________________________-");
		//Part filePart = request.getPart("uimage");
		//InputStream inputStream = filePart.getInputStream();
		
		
		String fname,lname,email,num,pass;
	//	System.out.println(s.getId()+" by session variable");
	//	System.out.println(request.getParameter("fname"));
		fname=request.getParameter("fname");
		lname=request.getParameter("lname");
		email=request.getParameter("email");
		num=request.getParameter("num");
		pass=request.getParameter("pass");
		System.out.println(fname);
		System.out.println(lname);
		System.out.println(email);
		System.out.println(num);
		System.out.println(pass);
		
		System.out.println("55_______________________________________________-");
		
		cs.updateCustomer(c, fname, lname, email, num, pass);
	//	System.out.println(c.getFirstName());
		System.out.println("56_______________________________________________-");
		
		
		
		//c.updateStudent(s,fname,lname,email,major,psw);
		System.out.println("57_______________________________________________-");
		request.getSession().setAttribute("userid",cs.getObject(c,c.getId()));
		
		response.sendRedirect("Userprofile");
		
		System.out.println("58_______________________________________________-");}
		else{
			response.sendRedirect("Home");
		}
		
		
		
		//doGet(request, response);
	}

}
