package Controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Models.Chef;
import Models.Orderz;
import Services.chefService;
import Services.orderService;

/**
 * Servlet implementation class Dealrequest
 */
@WebServlet("/Dealrequest")
public class Dealrequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	orderService os;
	@EJB
	chefService cs;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Dealrequest() {
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
	//	System.out.println("i m here-----------------------------------------------------------------------------------------");
	//	HttpSession session = request.getSession();
	/*	double lat1 = Double.parseDouble((String)session.getAttribute("lat"));
		double lng1 = Double.parseDouble("-" + (String) session.getAttribute("lng"));*/
		String lat1 = (String) session.getAttribute("lat");
		String lng1 = ("-" + (String) session.getAttribute("lng"));

		 Map<Chef,Double> chef_Dist=new HashMap<Chef,Double>();
		
		List<Orderz> match_Orders=(List<Orderz>)session.getAttribute("match_Orders");

		List<Orderz> invisibleorders=(List<Orderz>)session.getAttribute("invisibleorders");
	//	List<Orderz> all_orders=os.getOrder();
		Chef ch=(Chef)session.getAttribute("chefid");
		ch=cs.getchefObject(ch,ch.getId());
		
		
		if(request.getParameter("accept")!=null){
			for(Orderz orderzi:match_Orders){
				
				if(orderzi.getId()==Integer.valueOf(request.getParameter("accept"))){
				
					double lat2 = orderzi.getLocation_Latitude();
					double lng2 = Double.valueOf(("-" + (String.valueOf(orderzi.getLocation_Longitude()))));
                    double dis = distance(Double.parseDouble(lat1), Double.parseDouble(lng1), lat2, lng2, "K");
				    chef_Dist=orderzi.getInterested();
				    if(chef_Dist==null){
				    	chef_Dist=new HashMap<Chef,Double>();
				    	 System.out.println(chef_Dist.size());
						 	
				    }
					if((orderzi.getInterested()!=null)){
						if(!orderzi.getInterested().containsKey(ch)){
							   chef_Dist.put(ch,dis);
								os.add_Interested(orderzi, chef_Dist);
							    match_Orders.remove(orderzi);
							    invisibleorders.add(orderzi);
						     //	System.out.println(orderzi.getOrdered_dish()+"...removed");
							    break;
						
						}
						}
					else{
						System.out.println("accepted>>>>>>>>>>>>>>>>>>>>>>>>>>125>>>>>"+ch.getId());
						
						
				    chef_Dist.put(ch,dis);
		            if(chef_Dist!=null)
				    System.out.println("accepted>>>>>>>>>>>>>>>>>>>>>>>>>>128>>>>>"+chef_Dist.size());
					
					
					os.add_Interested(orderzi, chef_Dist);
					System.out.println("accepted>>>>>>>>>>>>>>>>>>>>>>>>>>133>>>>>"+ch.getId());
					
					
					/*   Map<Chef,Double> map=orderzi.getInterested();
				 	for(Map.Entry<Chef,Double> chef_Disti:map.entrySet()){
				 		System.out.println(chef_Disti.getKey()+" : "+chef_Disti.getValue());
				 	}*/
			
					
				    match_Orders.remove(orderzi);
				    invisibleorders.add(orderzi);
					//System.out.println("accepted>>>>>>>>>>>>>>>>>>>>>>>>>>142>>>>>"+ch.getId());
					
				//System.out.println(orderzi.getOrdered_dish()+"...removed");
				    break;
					}
				
				}
				
			
		}
			
			
		}
		else if(request.getParameter("delete")!=null){
		
			for(Orderz orderi:match_Orders){
				if(orderi.getId()==Integer.valueOf(request.getParameter("delete"))){
					match_Orders.remove(orderi);
					   invisibleorders.add(orderi);
						System.out.println("deleted order>>>>>>>>>>>>>>>>>>>>>>>>>>152>>>>>"+orderi.getId());
						
						
					break;
				}
			}
		
		}
		
		session.setAttribute("match_Orders",match_Orders);
		session.setAttribute("invisibleorders",invisibleorders);
	/*	System.out.println("Match orders````````````````````````````````````````````````````````````````````");
		for(Orderz i1:match_Orders){
			System.out.println(i1.getId());
		}
		System.out.println("Invisible orders````````````````````````````````````````````````````````````````````");
		for(Orderz i1:invisibleorders){
			System.out.println(i1.getId());
		}*/
		
	
		response.sendRedirect("Orderrequests");
			
			
		doGet(request, response);
	}

}
