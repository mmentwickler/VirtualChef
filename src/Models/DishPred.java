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
@NamedQuery(name="dishPred.findbyid",query="select dp from DishPred dp where dp.Id=:id")
@Entity

public class DishPred implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public DishPred() {
		super();
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Id;

	//system's view
	int predAccuracy;
	//user's view
	int userInput;
	
	@OneToOne
	Customer cust;
	
	Long addition_date;
	

	public Long getDate() {
		return addition_date;
	}

	public void setDate(Long date) {
		this.addition_date = date;
	}
    
    
    /*String []ingredients;*/
    
    
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
