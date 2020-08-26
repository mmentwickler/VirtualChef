package Services;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import Models.Customer;

/**
 * Session Bean implementation class customerService
 */
@Stateless
@LocalBean
public class customerService {

    /**
     * Default constructor. 
     */
    public customerService() {
        // TODO Auto-generated constructor stub
    }
    
    @PersistenceContext(unitName = "VirtualChefTomee")
    EntityManager em;

    public void changeStatus(Customer c,boolean s) {
    	Customer std=em.find(Customer.class,c.getId());
        std.setStatus(s);
        em.merge(std);
        
        // return std;
    }
    
    public Customer updateCustomer(Customer s,String fname,String lname,String email,String num,String psw) {
    	Customer std=em.find(Customer.class,s.getId());
        std.setFirstName(fname);
        std.setLastName(lname);
        std.setEmail(email);
        std.setPhone_num(num);
        std.setPassword(psw);
        em.merge(std);
        return std;
    }
    
    public Customer updateCustomerObject(Customer c) {
    /*	Customer std=em.find(Customer.class,c.getId());
        std.setFirstName(fname);
        std.setLastName(lname);
        std.setEmail(email);
        std.setPhone_num(num);
        std.setPassword(psw);
      */  em.merge(c);
        return c;
    }
    
    public List<Customer> getcust(){
    	TypedQuery<Customer> querry=em.createQuery("select cust from Customer cust",Customer.class);
    	List<Customer> olist=querry.getResultList();
    	return olist;
    }
    
    public void delcust(Customer df){
    	//  em.getTransaction().begin();
    	df=em.merge(df);
    	  em.remove(df);
    	//  em.commit();
    }
    
	public List<Customer> getPageRecords(int currentPage, int recordsPerPage) {
		// TODO Auto-generated method stub
		int start = currentPage * recordsPerPage - recordsPerPage;

		TypedQuery<Customer> querry = em.createQuery("select cust from Customer cust", Customer.class);
		querry.setMaxResults(recordsPerPage);
		querry.setFirstResult(start);
		return querry.getResultList();
		//return null;
	}
    


	public Customer getObject(Customer c, int i) {
		Customer cust = em.find(Customer.class,i);
		return cust;
		// TODO Auto-generated method stub
		
	}
	
	public Customer getByPref(Customer c){
		try{
		 TypedQuery<Customer> q = em.createQuery(
	             "FROM Customer dt WHERE dt.Id = :id AND dt.spice <> 0 " ,Customer.class);
	 q.setParameter("id", c.getId() );
	 Customer dt=q.getSingleResult();
	 return dt;}
		catch(Exception e){
			return null;
		}
		
	}


    

}
