package Controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Models.Chef;
import Services.chefService;

/**
 * Servlet implementation class Chefchangepswd
 */
@WebServlet("/Chefchangepswd")
public class Chefchangepswd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	chefService cs;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Chefchangepswd() {
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
		HttpSession sess=request.getSession();
		Chef c=(Chef) sess.getAttribute("chefid");
		String pass= request.getParameter("new-pass");
		System.out.println(pass);
		if(c.getPassword().equals(request.getParameter("old-pass"))){
			cs.changePass(c, pass);
			sess.setAttribute("wrongpass","Password changed successfully");
		}else{

			sess.setAttribute("wrongpass","Wrong old password");
		}
		Chef ch=cs.getchefObject(c, c.getId());
		
		System.out.println(ch.getPassword());
		request.getRequestDispatcher("WEB-INF/views/chefacstg.jsp").forward(request, response);;
		
		//doGet(request, response);
	}

}
