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
 * Servlet implementation class Activeorderz
 */
@WebServlet("/Activeorderz")
public class Activeorderz extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	orderService os;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Activeorderz() {
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
		// TODO Auto-generated method stub
		
		// TODO Auto-generated method stub
	    List<Orderz> listch=os.getOrder();
	    List<Orderz> orderz=new ArrayList<Orderz>();
	    for(Orderz i:listch){
	    	if(!i.isCompleted()){
	    		orderz.add(i);
	    	}
	    }
	    
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
		//System.out.println("line 55.........................");
		
		List<Orderz> dblist = getPageRecords(currentPage, recordsPerPage,orderz);
		request.setAttribute("actvorderrecords", dblist);
		/*for(Orderz i:dblist){
			System.out.println(i.getId());
		}*/
		int rows = listch.size();// 100;//num.size();
		int nOfPages = rows / recordsPerPage;
		if (nOfPages % recordsPerPage > 0) {
			nOfPages++;
		}

		request.setAttribute("noOfPages", nOfPages);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("recordsPerPage", recordsPerPage);

		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/Activeorderz.jsp");
		dispatcher.forward(request, response);
	
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
