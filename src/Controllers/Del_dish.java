package Controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.Chef;
import Services.chefService;

/**
 * Servlet implementation class Del_dish
 */
@WebServlet("/Del_dish")
public class Del_dish extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	chefService cs;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Del_dish() {
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
		
	//	String name=request.getParameter("del_dish");
		Chef c = (Chef) request.getSession().getAttribute("chefid");
       
		String dish=request.getParameter("del_dish");
		System.out.println("dish to be deleted : "+dish);
		
		cs.delDishfromChef(dish,String.valueOf(c.getId()));
		c=cs.getchefObject(c,c.getId());
		request.getSession().setAttribute("chefid", c);
		
		//cs.refreshChef(c);
	//	System.out.println("dish to be deleted : "+name1);
		response.sendRedirect("Chefendhome");
		doGet(request, response);
	}

}
