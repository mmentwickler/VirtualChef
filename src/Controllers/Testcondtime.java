package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Testcondtime
 */
@WebServlet("/Testcondtime")
public class Testcondtime extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Testcondtime() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	

		request.getSession().setAttribute("ts", 1);
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Testcondtime.jsp");

		view.forward(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//int variable;
		//request.getSession().setAttribute("ts", variable);
		if(request.getParameter("check")!=null){
		//	variable=0;

			request.getSession().setAttribute("ts", 0);
		}
		
		PrintWriter out = response.getWriter();
		System.out.println(request.getSession().getAttribute("ts")+"ajax call");
		out.write(0);
		
		doGet(request, response);
	}

}
