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
 * Session Bean implementation class Signupservice
 */
@Stateless
@LocalBean
public class Signupservice {

    /**
     * Default constructor. 
     */
    public Signupservice() {
        // TODO Auto-generated constructor stub
    }

    @PersistenceContext(unitName = "VirtualChefTomee")
   	EntityManager em;

       
       public void add_Customer(Customer c){
       	em.persist(c);
       }

    public List<Customer> getCustomer(){
    	TypedQuery<Customer> querry=em.createQuery("select cust from Customer cust",Customer.class);
    	List<Customer> clist=querry.getResultList();
    	return clist;
    }
    
    public void add_Chef(Chef ch){
    	em.persist(ch);}
    
    
    public List<Chef> getChef(){
    	TypedQuery<Chef> querry=em.createQuery("select ch from Chef ch",Chef.class);
    	List<Chef> chlist=querry.getResultList();
    	return chlist;
   
    }
    
    public void del(Chef c){
    	Chef std=em.find(Chef.class,c.getId());
    	   c=em.merge(c);
    	  em.remove(c);
      }
    
    
    
    
    
    
    
    
    
    
    
       
}
