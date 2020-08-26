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

import Models.Orderz;
import Services.orderService;

/**
 * Servlet implementation class Adminnotifypagi
 */
@WebServlet("/Adminnotifypagi")
public class Adminnotifypagi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	@EJB
	orderService os;
   
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adminnotifypagi() {
        super();
        // TODO Auto-generated constructor stub
    }
	List<Orderz> getPageRecords(int currentPage, int recordsPerPage, List<Orderz> par) {

		int start = currentPage * recordsPerPage - recordsPerPage;
		int i = 0;
		List<Orderz> cporderz = new ArrayList<Orderz>();
		for (Orderz pari : par) {
			if ((i >= start) && (i < start + recordsPerPage)) {
			//	System.out.println(pari.getOrdered_dish()+"-------assigned inner");
				cporderz.add(pari);
			}
			i++;
		}

		return cporderz;

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int recordsPerPage;
		int currentPage;
		if (request.getParameter("currentPage") == null) {
		//	System.out.println("line 56-----------------------------");
			request.setAttribute("currentPage", 1);
			request.setAttribute("recordsPerPage", 10);
			currentPage = Integer.valueOf(request.getAttribute("currentPage").toString());
			recordsPerPage = Integer.valueOf(request.getAttribute("recordsPerPage").toString());
		} else {
		//	System.out.println("line 57-----------------------------");
			currentPage = Integer.valueOf(request.getParameter("currentPage"));
			recordsPerPage = Integer.valueOf(request.getParameter("recordsPerPage"));
		}
	//	System.out.println("line 58-----------------------------");
		List<Orderz> list=(List<Orderz>) request.getSession().getAttribute("comporderz");
		

		//List<Orderz> par = list1;//(List<Orderz>) request.getSession().getAttribute("a_orderz");
		List<Orderz> odlist = getPageRecords(currentPage, recordsPerPage, list);

	//	System.out.println("line 59-----------------------------");
		// List<DeliveryBoy> dblist = dboys.getPageRecords(currentPage,
		// recordsPerPage);
		for (Orderz pari : odlist) {
			//	System.out.println(pari.getOrdered_dish()+"------- outer assigned");
			}
	//	System.out.println("line 60-----------------------------");
		request.setAttribute("adminorderrecords", odlist);
		int rows = list.size();// 100;//num.size();
		int nOfPages = rows / recordsPerPage;
		if (nOfPages % recordsPerPage > 0) {
		//	System.out.println("line 55-----------------------------");
			nOfPages++;
		}

	//	System.out.println("line 61-----------------------------");
		request.setAttribute("noOfPages", nOfPages);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("recordsPerPage", recordsPerPage);
	//	System.out.println("line 62-----------------------------");

		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/ChefOrderList.jsp");
		dispatcher.forward(request, response);
	//	System.out.println("line 63-----------------------------");
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
		// TODO Auto-generated method stub
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
