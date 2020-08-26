package Controllers;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;

import Models.FoodItems;
import Services.dishService;

/**
 * Servlet implementation class Testadddish
 */
@WebServlet("/Testadddish")
@MultipartConfig(maxFileSize = 16177215)
public class Testadddish extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	dishService ds;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Testadddish() {
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

		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Testadddish.jsp");
		view.forward(request, response);

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
		/*
		 * @MultipartConfig(fileSizeThreshold=1024*1024*2,
		 * maxfileSize=1024*1024*10,maxRequestSize=1024*1024*50 )
		 */

		FoodItems fi = new FoodItems();
		Part filePart = request.getPart("file");
		System.out.println("fileName : " + filePart);
		InputStream inputStream = null;
		fi.setDishname(request.getParameter("name"));
		fi.setPrice(request.getParameter("price"));
		inputStream=filePart.getInputStream();
		fi.setDimg(IOUtils.toByteArray(inputStream));
		List<FoodItems> lf=ds.getDishItems();
    	ds.add_dish(fi);
    	List<FoodItems> lf1=ds.getDishItems();
        if(lf1.size()>lf.size()){
        	response.sendRedirect("Testddish");
        }
        else{
        	System.out.println("Something went wrong");
        }
    	
    	
		doGet(request, response);

	}

}
