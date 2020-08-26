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

import Models.DeliveryBoy;
import Services.deliverBoyService;

/**
 * Servlet implementation class AddDboy
 */
@WebServlet("/AddDboy")
public class AddDboy extends HttpServlet {
	private static final long serialVersionUID = 1L;
     @EJB
     deliverBoyService dbs;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddDboy() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Adddboy.jsp");
		view.forward(request, response);

		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();

		String page = "";
		// TODO Auto-generated method stub
		DeliveryBoy ch = new DeliveryBoy();
		ch.setFirstName(request.getParameter("fname"));
		ch.setLastName(request.getParameter("lname"));
		ch.setPhone_num(request.getParameter("phonenum"));
		ch.setEmail(request.getParameter("email"));
		ch.setCnic(request.getParameter("cnic"));
		ch.setDob(request.getParameter("dob"));
		ch.setAddress(request.getParameter("address"));
		// System.out.println(request.getParameter("email"));

		List<DeliveryBoy> clist =dbs.getDeliveryBoy();
		if (clist.isEmpty()) {
			dbs.addDeliveryBoy(ch);
			page = "Dboylist";

		} else {

			for (DeliveryBoy cc : clist) {
				/*
				 * if(cc.getEmail()==null){ ss.del(cc); }
				 */
				if ((cc.getEmail().equals(request.getParameter("email")))
						|| (cc.getCnic().equals(request.getParameter("cnic")))) {
					page = "Same email or cnic already exist";
					break;
				} else if (clist.indexOf(cc) == clist.size() - 1) {
					page = "Dboylist";

				}

			}
		}
		
		if (page.equals("Same email or cnic already exist")) {
			session.setAttribute("dboyexist", page);
			page = "AddDboy";
			// System.out.println(page);
		}

		else if (page.equals("Dboylist")) {

			dbs.addDeliveryBoy(ch);}

		
		response.sendRedirect(page);

		doGet(request, response);
	}

}
