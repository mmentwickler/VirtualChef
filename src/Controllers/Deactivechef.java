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

import Models.Chef;
import Services.Loginservice;
import Services.chefService;

/**
 * Servlet implementation class Deactivechef
 */
@WebServlet("/Deactivechef")
public class Deactivechef extends HttpServlet {
	private static final long serialVersionUID = 1L;
       @EJB 
       Loginservice lis;
       @EJB
       chefService cs;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deactivechef() {
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
		String email=request.getParameter("email");
		String psw=request.getParameter("password");
		String page="";
		HttpSession session=request.getSession();
		Chef c=(Chef)session.getAttribute("chefid");
		List<Chef> chlist1 = lis.getChef();
		for (Chef cch : chlist1) {
			System.out.println(cch.getFirstName() + " " + cch.getLastName());
			if ((cch.getEmail().equals(email)) && (cch.getPassword().equals(psw))) {
				if(email.equals(c.getEmail())){
					
				session.setAttribute("loginchef","false");
				session.setAttribute("chefid","null");
			    cs.delchef(cch);
			    page="Login";}	else{
					session.setAttribute("wrongemailpass", "Can't delete account !");
				    page="ChefAcctStng";		
			
				}
				
				
				break;
		 		
			}

			else if(chlist1.indexOf(cch)==chlist1.size()-1) {
				//	msg=" incorrect username or password";
				session.setAttribute("wrongemailpass", "Wrong email or password !");
			    page="ChefAcctStng";		
			}
		}
		
	
		 
		response.sendRedirect(page);
	//	request.getRequestDispatcher("WEB-INF/views/Home.jsp").forward(request, response);;
		
		
		
		//doGet(request, response);
	}

}
