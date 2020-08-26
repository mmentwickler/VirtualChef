package Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Findingchef
 */
@WebServlet("/Findingchef")
public class Findingchef extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Findingchef() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	private double distance(double lat1, double lon1, double lat2, double lon2, String unit) {
		  double theta = lon1 - lon2;
		  double dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2)) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.cos(deg2rad(theta));
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
		/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
		/*::  This function converts decimal degrees to radians             :*/
		/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
		private double deg2rad(double deg) {
		  return (deg * Math.PI / 180.0);
		}
		/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
		/*::  This function converts radians to decimal degrees             :*/
		/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
		private double rad2deg(double rad) {
		  return (rad * 180.0 / Math.PI);
		}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher view=request.getRequestDispatcher("WEB-INF/views/AddLocation.jsp");
		view.forward(request, response);
	

		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	        HttpSession session=request.getSession();
		String m=String.valueOf(distance(Double.valueOf(request.getParameter("lat1")),Double.valueOf("-"+request.getParameter("long1")),Double.valueOf(request.getParameter("lat2")),Double.valueOf("-"+request.getParameter("long2")), "M"));
		String km=String.valueOf(distance(Double.valueOf(request.getParameter("lat1")),Double.valueOf("-"+request.getParameter("long1")),Double.valueOf(request.getParameter("lat2")),Double.valueOf("-"+request.getParameter("long2")), "K"));
		String n=String.valueOf(distance(Double.valueOf(request.getParameter("lat1")),Double.valueOf("-"+request.getParameter("long1")),Double.valueOf(request.getParameter("lat2")),Double.valueOf("-"+request.getParameter("long2")), "N"));
		session.setAttribute("miles", m);
		session.setAttribute("kmiles", km);	
		session.setAttribute("nmiles", n);	
			RequestDispatcher view=request.getRequestDispatcher("WEB-INF/views/AddLocation.jsp");
			view.forward(request, response);
		
		
		//doGet(request, response);
	}

}
