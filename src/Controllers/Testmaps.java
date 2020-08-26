package Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Testmaps
 */
@WebServlet("/Testmaps")
public class Testmaps extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Testmaps() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		   RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Testmaps.jsp");
    	   view.forward(request, response);
    	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		System.out.println("Lat :"+request.getParameter("lat"));
		System.out.println("Long :"+request.getParameter("long"));
		
		session.setAttribute("lat",request.getParameter("lat"));
		session.setAttribute("lng",request.getParameter("long"));
        response.sendRedirect("Chefendhome");
		//System.out.println(request.getParameter("long"));
		
		doGet(request, response);
	}

}
