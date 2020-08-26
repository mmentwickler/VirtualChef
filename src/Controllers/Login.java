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
import javax.servlet.http.HttpSession;

import Models.Chef;
import Models.Customer;
import Models.Orderz;
import Services.Loginservice;
import Services.chefService;
import Services.customerService;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	Loginservice lis;
	@EJB
	customerService cs;
	@EJB
	chefService chs;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
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
		HttpSession session = request.getSession();
		String login = (String) session.getAttribute("login");
		String loginch = (String) session.getAttribute("loginchef");
		String loginadmin = (String) session.getAttribute("admin");

		String er = (String) request.getAttribute("inc_user_or_pass");
		String uer = (String) session.getAttribute("userse");

		if ((login == null)) {
			session.setAttribute("login", "false");
			// System.out.println("0------------------------");

		}

		if ((loginch == null)) {
			session.setAttribute("loginchef", "false");
			// System.out.println("1------------------------");

		}

		if ((loginadmin == null)) {
			session.setAttribute("admin", "false");
			// System.out.println("1------------------------");

		}

		if (er == null) {

			request.setAttribute("inc_user_or_pass", "");
			// System.out.println("2------------------------");

		}

		if (uer == null) {

			session.setAttribute("userse", "");
			// System.out.println("3------------------------");

		}

		String login1 = (String) session.getAttribute("login");
		String login2 = (String) session.getAttribute("loginchef");
		String login3 = (String) session.getAttribute("admin");

		if (login1.equals("true")) {
			// System.out.println("4------------------------");

			RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Home.jsp");
			view.forward(request, response);
			// System.out.println("5------------------------");

		} else if (login2.equals("true")) {
			// System.out.println("6------------------------");
			RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Chefhome.jsp");
			// System.out.println("7------------------------");
			view.forward(request, response);
			// System.out.println("8------------------------");

		} else if (login3.equals("true")) {
			// System.out.println("6------------------------");
			RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Adminhome.jsp");
			// System.out.println("7------------------------");
			view.forward(request, response);
			// System.out.println("8------------------------");

		} else {

			// System.out.println("9------------------------");

			RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/LoginSignup.jsp");
			view.forward(request, response);
			// System.out.println("10------------------------");

		}

		// System.out.println(login);

		// System.out.println(login);

		// TODO Auto-generated method stub

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
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Home.jsp");
		// session.setAttribute("counter", counter);
		HttpSession session = request.getSession();
		// System.out.println("0------------------------------");

		// TODO Auto-generated method stub
		String page = "";
		String msg = "";
		String userType = request.getParameter("user_type");
		String email = request.getParameter("user");
		String password = request.getParameter("password");
		// System.out.println("69 "+userType);
		// System.out.println("userType");
		if (userType.equals("Admin")) {
			if (email.equals("admin@gmail.com") && (password.equals("admin"))) {
				page = "Adminhome";
				session.setAttribute("admin", "true");
			} else {
				page = "inc_user_or_pass";
			}

			// Admin login
		}

		else if (userType.equals("Chef")) {

			// System.out.println("1------------------------------");
			List<Chef> chlist1 = lis.getChef();
			for (Chef cch : chlist1) {
				// System.out.println(cch.getFirstName() + " " +
				// cch.getLastName());
				if ((cch.getEmail().equals(email)) && (cch.getPassword().equals(password))) {
					session.setAttribute("loginchef", "true");
					session.setAttribute("chefid", cch);
					chs.changeStatus(cch, true);
					// page="Chefendhome";
					page = "Testmaps";
					List<Orderz> match_Orders = new ArrayList<Orderz>();
					session.setAttribute("match_Orders", match_Orders);
					session.setAttribute("a_orderz", match_Orders);
					session.setAttribute("invisibleorders", match_Orders);
					// session.setAttribute("findchef","false");

					// System.out.println("2------------------------------");
					// System.out.println("89");

					break;

				}

				else if (chlist1.indexOf(cch) == chlist1.size() - 1) {
					// msg=" incorrect username or password";
					page = "inc_user_or_pass";
				}
			}

		}

		else if (userType.equals("Customer")) {
			// System.out.println("80");

			List<Customer> clist1 = lis.getCustomer();
			for (Customer cc : clist1) {
				// System.out.println(cc.getFirstName() + " " +
				// cc.getLastName());
				if ((cc.getEmail().equals(email)) && (cc.getPassword().equals(password))) {
					session.setAttribute("login", "true");
					session.setAttribute("userid", cc);
					cs.changeStatus(cc, true);
					page = "Home";
					// System.out.println("89");

					break;

				}

				else if (clist1.indexOf(cc) == clist1.size() - 1) {
					// msg=" incorrect username or password";
					page = "inc_user_or_pass";
				}
			}
		}

		if (page.equals("inc_user_or_pass")) {
			// System.out.println("inc_user_or_pass");
			request.setAttribute("inc_user_or_pass", " incorrect username or password");
			request.getRequestDispatcher("WEB-INF/views/LoginSignup.jsp").forward(request, response);
		} else {

			// System.out.println("3------------------------------");
			response.sendRedirect(page);
		}

		// Customer login

	}

}
