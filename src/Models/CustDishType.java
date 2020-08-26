package Models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;

/**
 * Entity implementation class for Entity: Test
 *
 */
@Entity
@NamedQuery(name="custdishType.findbyid",query="select cdt from CustDishType cdt where cdt.Id=:id")
public class CustDishType implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public CustDishType() {
		super();
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int Id;

	Long addition_date;
	
	@OneToOne
	DishType dishType_cust;
	
	//Many To One with customer
    @ManyToOne
    @JoinColumn(name = "cust__dishTypefk" )
    Customer cust_dishes;

	public Long getDate() {
		return addition_date;
	}

	public void setDate(Long date) {
		this.addition_date = date;
	}

	public DishType getDishType() {
		return dishType_cust;
	}

	public void setDishType(DishType dishType) {
		this.dishType_cust = dishType;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}



	public Customer getCust_dishes() {
		return cust_dishes;
	}

	public void setCust_dishes(Customer cust_dishes) {
		this.cust_dishes = cust_dishes;
	} 

	
}
