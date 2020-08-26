package Services;

import java.util.List;
import java.util.Map;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import Models.Chef;
import Models.Orderz;
import Models.Status;

/**
 * Session Bean implementation class orderService
 */
@Stateless
@LocalBean
public class orderService {

    /**
     * Default constructor. 
     */
	 @PersistenceContext(unitName = "VirtualChefTomee")
	   	EntityManager em;
	 
	 public orderService() {
	        // TODO Auto-generated constructor stub
	    }
	    
	     
	   public void place_Order(Orderz o){
	    	em.persist(o);
	    }
	   

	    public List<Orderz> getOrder(){
	    	TypedQuery<Orderz> querry=em.createQuery("select o from Orderz o",Orderz.class);
	    	List<Orderz> olist=querry.getResultList();
	    	return olist;
	    }
	    
	    public void add_Interested(Orderz c,Map<Chef,Double> s) {
	    	Orderz std=em.find(Orderz.class,c.getId());
	        std.setInterested(s);
	        em.merge(std);
	        
	    }
	    public void delOrder(Orderz df){
	    	df=em.merge(df);
	    	  em.remove(df);
	    }
	    
	    public void add_Chef(Orderz c,Chef s) {
	    	Orderz std=em.find(Orderz.class,c.getId());
	        std.setChef_order(s);
	        em.merge(std);
	        
	    }
	    
		public Orderz getOrderObject( int i) {
			Orderz cust = em.find(Orderz.class, i);
			return cust;
			// TODO Auto-generated method stub

		}
	    
	    public void order_Active(Orderz c,boolean accept) {
	    	Orderz std=em.find(Orderz.class,c.getId());
	        std.setAccept(accept);
	        em.merge(std);
	        
	    }
	    
	    public void order_Completed(int c,boolean completed) {
	    	Orderz std=em.find(Orderz.class,c);
	        std.setCompleted(completed);
	        em.merge(std);
	        
	    }
	    
	    public void order_Status(int c,String st) {
	    	Orderz std=em.find(Orderz.class,c);
	        std.setStatus(Status.valueOf(st));
	        em.merge(std);
	        
	    }

	
    
	public List<Orderz> getPageRecords(int currentPage, int recordsPerPage) {
		// TODO Auto-generated method stub
		int start = currentPage * recordsPerPage - recordsPerPage;

		TypedQuery<Orderz> querry = em.createQuery("select o from Orderz o", Orderz.class);
		querry.setMaxResults(recordsPerPage);
		querry.setFirstResult(start);
		return querry.getResultList();
		//return null;
	}

}
