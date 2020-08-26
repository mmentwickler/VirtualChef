package Models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQuery;

/**
 * Entity implementation class for Entity: FoodItems
 *
 */
@NamedQuery(name="dishType.findbyid",query="select dt from DishType dt where dt.Id=:id")
@Entity

public class DishType implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public DishType() {
		super();
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int Id;

	//@Enumerated(EnumType.STRING)
    String typeName;
    @Lob
    @Column(nullable = false)
    private byte[] dimg;
    
	@ManyToMany
	@JoinTable(name="cust_dishType_table",joinColumns=@JoinColumn(name="dishType_column"),inverseJoinColumns=@JoinColumn(name="cust_column"))
	List<Customer> cust_dishType;
    
    /*String []ingredients;*/
    
    
    public byte[] getDimg() {
		return dimg;
	}

	public void setDimg(byte[] dimg) {
		this.dimg = dimg;
	}
	
	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getDishname() {
		return typeName;
	}

	public void setDishname(String dishname) {
		this.typeName = dishname;
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

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public List<Customer> getCust_dishType() {
		return cust_dishType;
	}

	public void setCust_dishType(List<Customer> cust_dishType) {
		this.cust_dishType = cust_dishType;
	}
 

}
