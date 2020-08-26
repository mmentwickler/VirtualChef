package Services;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import Models.AdminMessages;

/**
 * Session Bean implementation class messageService
 */
@Stateless
@LocalBean
public class messageService {

    /**
     * Default constructor. 
     */
    public messageService() {
        // TODO Auto-generated constructor stub
    }
    
    @PersistenceContext(unitName = "VirtualChefTomee")
   	EntityManager em;

       
       public void send_msg(AdminMessages m){
       	em.persist(m);
       }
       
   	public List<AdminMessages> getListMessages() {
		TypedQuery<AdminMessages> querry = em.createQuery("select m from AdminMessages m", AdminMessages.class);
		List<AdminMessages> dboy = querry.getResultList();
		return dboy;
	}
   	
	public void mark(int c, boolean s) {
		AdminMessages std = em.find(AdminMessages.class, c);
		std.setRead(s);
		em.merge(std);

		// return std;
	}
	
       
       public List<AdminMessages> getPageRecords(int currentPage, int recordsPerPage) {
   		int start = currentPage * recordsPerPage - recordsPerPage;

   		TypedQuery<AdminMessages> querry = em.createQuery("select m from AdminMessages m ", AdminMessages.class);
   		querry.setMaxResults(recordsPerPage);
   		querry.setFirstResult(start);
   		return querry.getResultList();

   	}
    
    
    
    

}
