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

import Models.DishType;
import Services.dishService;

/**
 * Servlet implementation class Viewdishes
 */
@WebServlet("/Viewdishtypes")
public class Viewdishtypes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       @EJB
       dishService ds;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Viewdishtypes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession();
		List<DishType> lfi=ds.getDishType();
		/*for(DishType i:lfi){
			System.out.println(i.getDishname()+" : "+i.getPrice()+" : "+i.getDimg());
		}*/
      //  session.setAttribute("li", lfi);	
        int recordsPerPage;
 		int currentPage;
 		if (request.getParameter("currentPage") == null) {
 			request.setAttribute("currentPage", 1);
 			request.setAttribute("recordsPerPage", 5);
 			currentPage = Integer.valueOf(request.getAttribute("currentPage").toString());
 			recordsPerPage = Integer.valueOf(request.getAttribute("recordsPerPage").toString());
 		} else {
 			currentPage = Integer.valueOf(request.getParameter("currentPage"));
 			recordsPerPage = Integer.valueOf(request.getParameter("recordsPerPage"));
 		}
 		System.out.println("line 55.........................");
 		
 		List<DishType> dblist = ds.getPageRecordsDishType(currentPage, recordsPerPage);//(currentPage, recordsPerPage);
 		request.setAttribute("dishtyperecords", dblist);
 		for(DishType i:dblist){
 			System.out.println(i.getId());
 		}
 		int rows = lfi.size();// 100;//num.size();
 		int nOfPages = rows / recordsPerPage;
 		if (nOfPages % recordsPerPage > 0) {
 			nOfPages++;
 		}

 		request.setAttribute("noOfPages", nOfPages);
 		request.setAttribute("currentPage", currentPage);
 		request.setAttribute("recordsPerPage", recordsPerPage);

 	   
        RequestDispatcher view=request.getRequestDispatcher("WEB-INF/views/Viewdishtypes.jsp");
        view.forward(request, response);
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
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
