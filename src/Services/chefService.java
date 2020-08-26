package Services;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import Models.Chef;
import Models.FoodItems;

/**
 * Session Bean implementation class chefService
 */
@Stateless
@LocalBean
public class chefService {

	/**
	 * Default constructor.
	 */
	public chefService() {
		// TODO Auto-generated constructor stub
	}

	@PersistenceContext(unitName = "VirtualChefTomee")
	EntityManager em;

	public void changeStatus(Chef c, boolean s) {
		Chef std = em.find(Chef.class, c.getId());
		std.setStatus(s);
		em.merge(std);

		// return std;
	}

	public Chef getchefObject(Chef c, int i) {
		Chef cust = em.find(Chef.class, i);
		return cust;
		// TODO Auto-generated method stub

	}

	public void changePass(Chef c, String s) {
		Chef std = em.find(Chef.class, c.getId());
		std.setPassword(s);
		em.merge(std);

		// return std;
	}

	public void delchef(Chef df) {
		// em.getTransaction().begin();
		df = em.merge(df);
		em.remove(df);
		// em.commit();
	}

	public List<Chef> getchef() {
		TypedQuery<Chef> querry = em.createQuery("select ch from Chef ch", Chef.class);
		List<Chef> olist = querry.getResultList();
		return olist;
	}

	public List<Chef> getPageRecords(int currentPage, int recordsPerPage) {
		// TODO Auto-generated method stub
		int start = currentPage * recordsPerPage - recordsPerPage;

		TypedQuery<Chef> querry = em.createQuery("select ch from Chef ch", Chef.class);
		querry.setMaxResults(recordsPerPage);
		querry.setFirstResult(start);
		return querry.getResultList();
		// return null;
	}

	public void delDishfromChef(String dish, String chef) {
		TypedQuery<FoodItems> fq = em.createNamedQuery("fooditems.findbyid", FoodItems.class);
		fq.setParameter("id", Integer.parseInt(dish));
		FoodItems f = fq.getSingleResult();
		TypedQuery<Chef> pq = em.createNamedQuery("chef.findbyid", Chef.class);
		pq.setParameter("id", Integer.parseInt(chef));
		Chef c = pq.getSingleResult();

		List<FoodItems> fl = c.getF_items();
		fl.remove(f);
		// fl.add(f);
		c.setF_items(fl);

		List<Chef> pl = f.getChef_f_items();
		pl.remove(c);
		f.setChef_f_items(pl);

	}

	public void refreshChef(Chef c) {
		// TypedQuery<Chef> querry=em.createQuery("select ch from Chef
		// ch",Chef.class);
		em.merge(c);
		em.refresh(c);

		// return c;

	}

}
