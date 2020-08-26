package Controllers;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.DishType;
import Services.dishService;

/**
 * Servlet implementation class photoServlet
 */
@WebServlet("/photoServletdt")
public class photoServletdt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	dishService ds;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public photoServletdt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		   
		   List<DishType> lfp=ds.getDishType();//.getDishItems();
		   
		   for(DishType i:lfp){
			   if(i.getId()==Integer.parseInt(request.getParameter("id"))){
				   response.getOutputStream().write(i.getDimg());
			   }
		   }
		
	
		
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
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
