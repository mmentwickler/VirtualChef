package Services;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import Models.Chef;
import Models.CustDishType;
import Models.Customer;
import Models.DishPred;
import Models.DishType;
import Models.FoodItems;

/**
 * Session Bean implementation class dishService
 */
@Stateful
@LocalBean
public class dishService {

    /**
     * Default constructor. 
     */
    public dishService() {
        // TODO Auto-generated constructor stub
    }
    
    
    @PersistenceContext(unitName = "VirtualChefTomee")
   	EntityManager em;
     
    
    public void add_dish(FoodItems fi){
    	em.persist(fi);
    }
    
    public void add_dishType(DishType dt){
    	em.persist(dt);
    }

    public void add_dishPred(DishPred dt){
    	em.persist(dt);
    }
    
    public void add_CustdishType(CustDishType dt){
    	em.persist(dt);
    }

        
    
    public List<FoodItems> getDishItems(){
    	TypedQuery<FoodItems> querry=em.createQuery("select fi from FoodItems fi",FoodItems.class);
    	List<FoodItems> filist=querry.getResultList();
    	return filist;
    }
    
    public DishType findById(int id){
    	 TypedQuery<DishType> q = em.createQuery(
    	             "FROM DishType dt WHERE dt.Id = :id " ,DishType.class);
    	 q.setParameter("id", id);
    	 DishType dt=q.getSingleResult();
    	 return dt;
    }
 
    public List<DishType> getDishType(){
    	TypedQuery<DishType> querry=em.createQuery("select dt from DishType dt",DishType.class);
    	List<DishType> filist=querry.getResultList();
    	return filist;
    }
    
    public List<DishType> getUserDishType(int id){
    	TypedQuery<DishType> querry=em.createQuery("select dt.dishType_cust from CustDishType dt where dt.cust_dishes.Id = :id order by dt.addition_date desc",DishType.class);
    	querry.setParameter("id", id);
    	List<DishType> filist=querry.getResultList();
    	return filist;
    }
    
    public void del(FoodItems df){
    	//  em.getTransaction().begin();
    	df=em.merge(df);
    	  em.remove(df);
    	//  em.commit();
    }
    
    public void del_DType(DishType df){
    	//  em.getTransaction().begin();
    	df=em.merge(df);
    	  em.remove(df);
    	//  em.commit();
    }
    
    public DishPred updateDishPred(DishPred c) {
            em.merge(c);
            return c;
        }
    public void addDishTypeToCust(String dishType, String cust) {
		TypedQuery<DishType> fq = em.createNamedQuery("dishType.findbyid", DishType.class);
		fq.setParameter("id", Integer.parseInt(dishType));
		DishType f = fq.getSingleResult();
		TypedQuery<Customer> pq = em.createNamedQuery("customer.findbyid", Customer.class);
		pq.setParameter("id", Integer.parseInt(cust));
		Customer c = pq.getSingleResult();
		
		List<DishType> fl = c.getDishType();
		fl.add(f);
		c.setDishType(fl);//.setF_items(fl);
		
		List<Customer> pl = f.getCust_dishType();
	    pl.add(c);
	    f.setCust_dishType(pl);
	

	}
    
    public void addNewDishTypeToCust(String dishType, String cust,List<DishType> fl) {
		TypedQuery<DishType> fq = em.createNamedQuery("dishType.findbyid", DishType.class);
		fq.setParameter("id", Integer.parseInt(dishType));
		DishType f = fq.getSingleResult();
		TypedQuery<Customer> pq = em.createNamedQuery("customer.findbyid", Customer.class);
		pq.setParameter("id", Integer.parseInt(cust));
		Customer c = pq.getSingleResult();
		
	//	List<DishType> fl = new ArrayList<>;
		fl.add(f);
		c.setDishType(fl);//.setF_items(fl);
		
		List<Customer> pl = f.getCust_dishType();
	    pl.add(c);
	    f.setCust_dishType(pl);
	

	}
    
    
	public List<FoodItems> getDishByPref1(int spice,boolean veg,List<Integer> list){
		try{
		 TypedQuery<FoodItems> q = em.createQuery(
	             "FROM FoodItems fi WHERE fi.spice = :spice AND fi.veg = :veg AND fi.dishtype.Id IN :list " ,FoodItems.class);
	 q.setParameter("spice", spice );
	 q.setParameter("veg",veg);
	 q.setParameter("list", list);
		List<FoodItems> filist=q.getResultList();
        q.setMaxResults(3);
		return filist;
    	}
		catch(Exception e){
			return null;
		}
		
	}
	
	public List<FoodItems> getDishByPref2(boolean veg,List<Integer> list,int result){
		try{
		 TypedQuery<FoodItems> q = em.createQuery(
	             "FROM FoodItems fi WHERE fi.veg = :veg AND fi.dishtype.Id IN :list order by fi.spice desc" ,FoodItems.class);
	 q.setParameter("veg",veg);
	 q.setParameter("list", list);
		List<FoodItems> filist=q.getResultList();
		 q.setMaxResults(result);
    	return filist;
    	}
		catch(Exception e){
			return null;
		}
		
	}
	
	public List<FoodItems> getDishByPref3(List<Integer> list,int result){
		try{
		 TypedQuery<FoodItems> q = em.createQuery(
	             "FROM FoodItems fi WHERE fi.dishtype.Id IN :list order by fi.spice desc" ,FoodItems.class);
     	 q.setParameter("list", list);
		List<FoodItems> filist=q.getResultList();
		q.setMaxResults(result);
    	return filist;
    	}
		catch(Exception e){
			return null;
		}
		
	}
    
    public void addDishToChef(String dish, String chef) {
		TypedQuery<FoodItems> fq = em.createNamedQuery("fooditems.findbyid", FoodItems.class);
		fq.setParameter("id", Integer.parseInt(dish));
		FoodItems f = fq.getSingleResult();
		TypedQuery<Chef> pq = em.createNamedQuery("chef.findbyid", Chef.class);
		pq.setParameter("id", Integer.parseInt(chef));
		Chef c = pq.getSingleResult();
		
		List<FoodItems> fl = c.getF_items();
		fl.add(f);
		c.setF_items(fl);
		
		List<Chef> pl = f.getChef_f_items();
	    pl.add(c);
	    f.setChef_f_items(pl);
	

	}
    
	public List<FoodItems> getPageRecords(int currentPage, int recordsPerPage) {
		// TODO Auto-generated method stub
		int start = currentPage * recordsPerPage - recordsPerPage;

		TypedQuery<FoodItems> querry = em.createQuery("select fi from FoodItems fi", FoodItems.class);
		querry.setMaxResults(recordsPerPage);
		querry.setFirstResult(start);
		return querry.getResultList();
		//return null;
	}
	
	public List<DishType> getPageRecordsDishType(int currentPage, int recordsPerPage) {
		// TODO Auto-generated method stub
		int start = currentPage * recordsPerPage - recordsPerPage;

		TypedQuery<DishType> querry = em.createQuery("select dt from DishType dt", DishType.class);
		querry.setMaxResults(recordsPerPage);
		querry.setFirstResult(start);
		return querry.getResultList();
		//return null;
	}
    
    
    
    
    
    

    

}
