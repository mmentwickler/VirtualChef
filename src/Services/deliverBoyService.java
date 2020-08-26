package Services;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import Models.DeliveryBoy;

/**
 * Session Bean implementation class deliverBoyService
 */
@Stateless
@LocalBean
public class deliverBoyService {

	/**
	 * Default constructor.
	 */
	public deliverBoyService() {
		// TODO Auto-generated constructor stub
	}

	@PersistenceContext(unitName = "VirtualChefTomee")
	EntityManager em;

	public void addDeliveryBoy(DeliveryBoy dboy) {
		em.persist(dboy);
	}

	public List<DeliveryBoy> getDeliveryBoy() {
		TypedQuery<DeliveryBoy> querry = em.createQuery("select dBoy from DeliveryBoy dBoy", DeliveryBoy.class);
		List<DeliveryBoy> dboy = querry.getResultList();
		return dboy;
	}
	
	 public void delDboy(DeliveryBoy df){
	    	//  em.getTransaction().begin();
	    	df=em.merge(df);
	    	  em.remove(df);
	    	//  em.commit();
	    }
	    

	public List<DeliveryBoy> getRecords() {
		TypedQuery<DeliveryBoy> querry = em.createQuery("select dBoy from DeliveryBoy dBoy", DeliveryBoy.class);
		List<DeliveryBoy> dboy = querry.getResultList();
		return dboy;
	}

	public List<DeliveryBoy> getPageRecords(int currentPage, int recordsPerPage) {
		int start = currentPage * recordsPerPage - recordsPerPage;

		TypedQuery<DeliveryBoy> querry = em.createQuery("select dBoy from DeliveryBoy dBoy", DeliveryBoy.class);
		querry.setMaxResults(recordsPerPage);
		querry.setFirstResult(start);
		return querry.getResultList();

	}

}
