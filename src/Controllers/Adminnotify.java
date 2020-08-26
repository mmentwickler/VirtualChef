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

import Models.AdminMessages;
import Models.Orderz;
import Services.messageService;
import Services.orderService;

/**
 * Servlet implementation class Adminnotify
 */
@WebServlet("/Adminnotify")
public class Adminnotify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	orderService os;
	@EJB
	messageService ms;
    /**
     * @see HttpServlet#HttpServlet()
     */
	List<Orderz> j=new ArrayList<Orderz>();
	List<AdminMessages> aM=new ArrayList<AdminMessages>();
	
    public Adminnotify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  j.clear();
		  aM.clear();
			
			List<Orderz> rtod=os.getOrder();
			if(rtod!=null){
			for(Orderz i:rtod){
			if((i.getStatus().toString().equals("cooked"))){
				j.add(i);
			}
			}
			}
			System.out.println(j.size());

			List<AdminMessages> listAdminMsg=ms.getListMessages();
			if(listAdminMsg!=null){
			for(AdminMessages i:listAdminMsg ){
				if(!i.isRead()){
					aM.add(i);
				}
			}
			}
			System.out.println(j.size());

			request.getSession().setAttribute("adminmsgs", aM);
			request.getSession().setAttribute("adminorderrecords", j);

		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/AdminNotify.jsp");
		view.forward(request, response);

		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    j.clear();
	    aM.clear();
		List<Orderz> rtod=os.getOrder();
		if(rtod!=null){
		for(Orderz i:rtod){
		if((i.getStatus().toString().equals("cooked"))){
			j.add(i);
		}
		}
		}
		List<AdminMessages> listAdminMsg=ms.getListMessages();
		if(listAdminMsg!=null){
		for(AdminMessages i:listAdminMsg ){
			if(!i.isRead()){
				aM.add(i);
			}
		}
		}
		System.out.println(j.size());

		request.getSession().setAttribute("adminmsgs", aM);
		request.getSession().setAttribute("adminorderrecords", j);
		
		doGet(request, response);
	}

}
