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
import Models.FoodItems;
import Services.dishService;

/**
 * Servlet implementation class Addnewdish
 */
@WebServlet("/Addnewdish")
@MultipartConfig(maxFileSize = 16177215)
public class Addnewdish extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
	@EJB
	dishService ds;
	
    public Addnewdish() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		// TODO Auto-generated method stub
		
		List<DishType> dishTypes=ds.getDishType();
		RequestDispatcher view;
		if(dishTypes!=null && dishTypes.size()>0)
		{request.getSession().setAttribute("dishtypes",dishTypes);
			
		 view = request.getRequestDispatcher("WEB-INF/views/Adddish.jsp");
		}

		else{
		 view = request.getRequestDispatcher("WEB-INF/views/Home.jsp");
				
		}
		view.forward(request, response);
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		int dtId=Integer.valueOf(request.getParameter("dish_type"));
		DishType dishType=ds.findById(dtId);
		FoodItems fi = new FoodItems();
		Part filePart = request.getPart("pic");
		System.out.println("fileName : " + filePart);
		InputStream inputStream = null;
		fi.setDishname(request.getParameter("name"));
		fi.setPrice(request.getParameter("price"));
		fi.setDishtype(dishType);
		fi.setVeg(Integer.valueOf(request.getParameter("veg"))==1?true:false);
		fi.setSpice(Integer.valueOf(request.getParameter("spice")));
		inputStream=filePart.getInputStream();
		fi.setDimg(IOUtils.toByteArray(inputStream));
		List<FoodItems> lf=ds.getDishItems();
    	ds.add_dish(fi);
    	List<FoodItems> lf1=ds.getDishItems();
        if(lf1.size()>lf.size()){
        	response.sendRedirect("Viewdishes");
        }
        else{
    		request.getSession().setAttribute("errordish"," something went wrong ");
    	    
           	response.sendRedirect("Addnewdish");
            
        }
		
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
