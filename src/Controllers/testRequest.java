package Controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Models.Chef;
import Models.FoodItems;
import Models.Orderz;
import Services.orderService;

/**
 * Servlet implementation class testRequest
 */
@WebServlet("/testRequest")
public class testRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	orderService os;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public testRequest() {
		super();
		// TODO Auto-generated constructor stub
	}

	/* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */
	/* :: This function converts decimal degrees to radians : */
	/* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */
	private double deg2rad(double deg) {
		return (deg * Math.PI / 180.0);
	}

	/* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */
	/* :: This function converts radians to decimal degrees : */
	/* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */
	private double rad2deg(double rad) {
		return (rad * 180.0 / Math.PI);
	}

	private double distance(double lat1, double lon1, double lat2, double lon2, String unit) {
	//	System.out.println("lat1 : " + lat1 + " , lon1 : " + lon1);
	//	System.out.println("lat2 : " + lat2 + " , lon2 : " + lon2);

		double theta = lon1 - lon2;
		double dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2))
				+ Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.cos(deg2rad(theta));
		dist = Math.acos(dist);
		dist = rad2deg(dist);
		dist = dist * 60 * 1.1515;
		if (unit == "K") {
			dist = dist * 1.609344;
		} else if (unit == "N") {
			dist = dist * 0.8684;
		}
		return (dist);
	}
	
	boolean hasSkills(Chef i, Orderz j) {
		// Chef ch=
		boolean res = false;
		List<FoodItems> fi = i.getF_items();
		String req_skill = j.getOrdered_dish();
		for (FoodItems fii : fi) {
			if (fii.getDishname().equals(req_skill)) {
				res = true;
				break;
			}
		}

		return res;

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Orderz> lo = os.getOrder();
		// List<Orderz> match_Orders=new ArrayList<Orderz>();
		HttpSession session = request.getSession();
		Chef c=(Chef) session.getAttribute("chefid");
		String lat1 = (String) session.getAttribute("lat");
		String lng1 = ("-" + (String) session.getAttribute("lng"));

		List<Orderz> list_order = new ArrayList<Orderz>();
		for (Orderz noi : lo) {
			double lat2 = noi.getLocation_Latitude();
			double lng2 = Double.valueOf(("-" + (String.valueOf(noi.getLocation_Longitude()))));

			double dis = distance(Double.parseDouble(lat1), Double.parseDouble(lng1), lat2, lng2, "K");
			// System.out.println("dis : "+dis);

			if (((int) dis <= 20)&&(!noi.isAccept())&&(!noi.isCompleted())&&(hasSkills(c,noi))) {
				System.out.println("dis : " + dis);
		       	list_order.add(noi);
				
			}
		}
		
	
		
	    session.setAttribute("match_Orders", list_order);
		
	}

}
