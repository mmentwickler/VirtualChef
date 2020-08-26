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

import Models.Chef;
import Services.chefService;

/**
 * Servlet implementation class ChefList
 */
@WebServlet("/ChefList")
public class ChefList extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@EJB
	chefService cs;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChefList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
	    List<Chef> listch=cs.getchef();
	   // request.getSession().setAttribute("chef_list", listch);
	    int recordsPerPage;
		int currentPage;
		if (request.getParameter("currentPage") == null) {
			request.setAttribute("currentPage", 1);
			request.setAttribute("recordsPerPage", 10);
			currentPage = Integer.valueOf(request.getAttribute("currentPage").toString());
			recordsPerPage = Integer.valueOf(request.getAttribute("recordsPerPage").toString());
		} else {
			currentPage = Integer.valueOf(request.getParameter("currentPage"));
			recordsPerPage = Integer.valueOf(request.getParameter("recordsPerPage"));
		}
		System.out.println("line 55.........................");
		
		List<Chef> dblist = cs.getPageRecords(currentPage, recordsPerPage);
		request.setAttribute("chefrecords", dblist);
		for(Chef i:dblist){
			System.out.println(i.getId());
		}
		int rows = listch.size();// 100;//num.size();
		int nOfPages = rows / recordsPerPage;
		if (nOfPages % recordsPerPage > 0) {
			nOfPages++;
		}

		request.setAttribute("noOfPages", nOfPages);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("recordsPerPage", recordsPerPage);

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/Cheflist.jsp");
		dispatcher.forward(request, response);
	
		
		
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
