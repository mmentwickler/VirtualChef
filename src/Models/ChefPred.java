package Models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;

/**
 * Entity implementation class for Entity: FoodItems
 *
 */
@NamedQuery(name="chefPred.findbyid",query="select cp from ChefPred cp where cp.Id=:id")
@Entity

public class ChefPred implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public ChefPred() {
		super();
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Id;

	int predAccuracy;
	int userInput;
	
	
	@OneToOne
	Chef chef;
	
	@OneToOne
	Customer cust;
	
	@OneToOne
	Orderz orderz;
	
	/*String []ingredients;*/
	Long addition_date;


	public Long getDate() {
		return addition_date;
	}

	public void setDate(Long date) {
		this.addition_date = date;
	}
    
    public Orderz getOrderz() {
		return orderz;
	}

	public void setOrderz(Orderz orderz) {
		this.orderz = orderz;
	}

	public Chef getChef() {
		return chef;
	}

	public void setChef(Chef chef) {
		this.chef = chef;
	}

	public Customer getCust() {
		return cust;
	}

	public void setCust(Customer cust) {
		this.cust = cust;
	}

	public Customer getUser() {
		return cust;
	}

	public void setUser(Customer user) {
		this.cust = user;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getPredAccuracy() {
		return predAccuracy;
	}

	public void setPredAccuracy(int predAccuracy) {
		this.predAccuracy = predAccuracy;
	}

	public int getUserInput() {
		return userInput;
	}

	public void setUserInput(int userInput) {
		this.userInput = userInput;
	}


	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}


	/*public String[] getIngredients() {
		return ingredients;
	}

	public void setIngredients(String[] ingredients) {
		this.ingredients = ingredients;
	}*/


	@Override
	public boolean equals(Object obj) {
	    if (obj == null) return false;
	    if (obj == this) return true;
	    if (!(obj instanceof Orderz)) return false;
	    Orderz o = (Orderz)obj;
	    return o.getId() == this.Id;
	}
 

}
