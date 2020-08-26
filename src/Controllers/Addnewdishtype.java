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

import Models.DishType;
import Services.dishService;

/**
 * Servlet implementation class Addnewdish
 */
@WebServlet("/Addnewdishtype")
@MultipartConfig(maxFileSize = 16177215)
public class Addnewdishtype extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
	@EJB
	dishService ds;
	
    public Addnewdishtype() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Adddishtype.jsp");
		view.forward(request, response);

	
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

	//	FoodItems fi = new FoodItems();
		DishType dt =new DishType();
		Part filePart = request.getPart("pic");
		System.out.println("fileName : " + filePart);
		InputStream inputStream = null;
	    dt.setTypeName(request.getParameter("name"));
	//	fi.setDishname(request.getParameter("name"));
	//	fi.setPrice(request.getParameter("price"));
		inputStream=filePart.getInputStream();
		dt.setDimg(IOUtils.toByteArray(inputStream));
		
		
		
		List<DishType> lf=ds.getDishType();
    	ds.add_dishType(dt);
    	List<DishType> lf1=ds.getDishType();
        if(lf1.size()>lf.size()){
        	response.sendRedirect("Viewdishtypes");
        }
        else{
    		request.getSession().setAttribute("errordishtype"," something went wrong ");
    	    
           	response.sendRedirect("Addnewdishtype");
            
        }
		
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
