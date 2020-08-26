package Services;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import Models.Chef;
import Models.Customer;

/**
 * Session Bean implementation class Loginservice
 */
@Stateless
@LocalBean
public class Loginservice {

    /**
     * Default constructor. 
     */
    public Loginservice() {
        // TODO Auto-generated constructor stub
    }
    
    @PersistenceContext(unitName = "VirtualChefTomee")
    EntityManager em;

    public List<Customer> getCustomer(){
    	TypedQuery<Customer> querry=em.createQuery("select cust from Customer cust",Customer.class);
    	List<Customer> clist=querry.getResultList();
    	return clist;
    }
    
    
    public List<Chef> getChef(){
    	TypedQuery<Chef> querry=em.createQuery("select ch from Chef ch",Chef.class);
    	List<Chef> chlist=querry.getResultList();
    	return chlist;
   
    }
    


}
