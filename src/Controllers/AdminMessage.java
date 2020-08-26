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

import Models.AdminMessages;
import Services.messageService;

/**
 * Servlet implementation class AdminMessage
 */
@WebServlet("/AdminMessage")
public class AdminMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@EJB
	messageService ms;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMessage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Admin message page start");
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
		List<AdminMessages> dblist = ms.getPageRecords(currentPage, recordsPerPage);
		//Collections.reverse(dblist);
		System.out.println("List sizze is = "+dblist.size());
		
		for(AdminMessages i:dblist){
			System.out.print(i.getMessage());
		}
		request.setAttribute("msgrecords", dblist);
		int rows = ms.getListMessages().size();// 100;//num.size();
		int nOfPages = rows / recordsPerPage;
		if (nOfPages % recordsPerPage > 0) {
			nOfPages++;
		}

		request.setAttribute("noOfPages", nOfPages);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("recordsPerPage", recordsPerPage);

		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/AdminMessages.jsp");
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
