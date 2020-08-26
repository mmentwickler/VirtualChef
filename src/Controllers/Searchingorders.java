package Controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
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
import Models.Status;
import Services.chefService;
import Services.orderService;

/**
 * Servlet implementation class Searchingorders
 */
@WebServlet("/Searchingorders")
public class Searchingorders extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	orderService os;
	@EJB
	chefService chs;

	// boolean haveskill(FoodITem){

	// }

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Searchingorders() {
		super();
		// TODO Auto-generated constructor stub
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

	private double deg2rad(double deg) {
		return (deg * Math.PI / 180.0);
	}

	private double rad2deg(double rad) {
		return (rad * 180.0 / Math.PI);
	}

	private double distance(double lat1, double lon1, double lat2, double lon2, String unit) {
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
		System.out.println("Finding orders-----------------------------------------------");
		// TODO Auto-generated method stub
		List<Orderz> lo = os.getOrder();
		// List<Orderz> match_Orders=new ArrayList<Orderz>();
		HttpSession session = request.getSession();
		Chef c = (Chef) session.getAttribute("chefid");
		String lat1 = (String) session.getAttribute("lat");
		String lng1 = ("-" + (String) session.getAttribute("lng"));

		List<Orderz> list_order = new ArrayList<Orderz>();
		for (Orderz noi : lo) {
			
			
			double lat2 = noi.getLocation_Latitude();
			double lng2 = Double.valueOf(("-" + (String.valueOf(noi.getLocation_Longitude()))));

			double dis = distance(Double.parseDouble(lat1), Double.parseDouble(lng1), lat2, lng2, "K");
			// System.out.println("dis : "+dis);

			if (((int) dis <= 20) && (!noi.isAccept()) && (!noi.isCompleted()) && (hasSkills(c, noi))) {

				if (noi.getInterested() != null) {
					if (!(noi.getInterested().containsKey(c))) {
					//	System.out.println(" interested dish : " + noi.getOrdered_dish());
						list_order.add(noi);
					}
				} else {
					list_order.add(noi);

				}

				//System.out.println("not interested dish : " + noi.getOrdered_dish());

			}
		}
		
		List<Orderz> naorderz=list_order;
		for(Orderz i:list_order){
			if(i.getInterested()!=null){
			if(i.getInterested().containsKey(c)){
				naorderz.remove(i);
			}
			}
		}

		// List<Orderz> lio=os.getOrder();
		// Chef ch=(Chef) request.getSession().getAttribute("chefid");
		List<Orderz> assigned_orderz = new ArrayList<Orderz>();
		for (Orderz lioi : lo) {
			if (lioi.getChef_order() == null) {
				continue;
			}
			if ((lioi.getChef_order().getId() == c.getId()) && ((lioi.getStatus().equals(Status.placed)))) {

				//System.out.println(lioi.getOrdered_dish() + "........assigned");
				assigned_orderz.add(lioi);
			}
		}

		//System.out.println(assigned_orderz.size() + "........size of assigned");
		Collections.reverse(assigned_orderz);
		session.setAttribute("a_orderz", assigned_orderz);
		List<Orderz> check = (List<Orderz>) session.getAttribute("a_orderz");
		//System.out.println(check.size() + "........size of assigned");

		List<Orderz> invisibleorders = (List<Orderz>) session.getAttribute("invisibleorders");
		/*for(Orderz i1:invisibleorders){
			System.out.println(i1.getId()+"order to removed");
		}*/
		List<Orderz> list_orderreal = naorderz;
	for (int i = 0; i < invisibleorders.size(); i++) {
			for (int j = 0; j < naorderz.size(); j++) {
				int id = naorderz.get(j).getId();

				int id1 = invisibleorders.get(i).getId();

				if (id==id1) {

				//	System.out.println("Removing " + id);

					naorderz.remove(j); // will throw CME
					break;
				}
			}

		}
		
		list_orderreal=naorderz;

		
		
	/*	System.out.println("Real orders````````````````````````````````````````````````````````````````````");
		for(Orderz i1:list_orderreal){
			System.out.println(i1.getId());
		}
*/      Collections.reverse(list_orderreal);
		session.setAttribute("match_Orders", list_orderreal);

		doGet(request, response);
	}

}
