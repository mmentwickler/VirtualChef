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
import javax.persistence.OneToOne;

/**
 * Entity implementation class for Entity: FoodItems
 *
 */
@NamedQuery(name="fooditems.findbyid",query="select fi from FoodItems fi where fi.Id=:id")
@Entity

public class FoodItems implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public FoodItems() {
		super();
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Id;

	//@Enumerated(EnumType.STRING)
    String dishname;
    String price;
    @Lob
    @Column(nullable = false)
    private byte[] dimg;
    
    @OneToOne
    DishType dishtype;
    
    boolean veg;
    
    int spice;
    
	public int getSpice() {
		return spice;
	}
	public void setSpice(int spice) {
		this.spice = spice;
	}

    
    
    /*String []ingredients;*/
    
    
    public byte[] getDimg() {
		return dimg;
	}

	public void setDimg(byte[] dimg) {
		this.dimg = dimg;
	}
	//Many To many with chef
	@ManyToMany
	@JoinTable(name="chef_f_items_table",joinColumns=@JoinColumn(name="f_items_column"),inverseJoinColumns=@JoinColumn(name="chef_column"))
	List<Chef> chef_f_items;
	
	//Many To many with order
	@ManyToMany
	@JoinTable(name="order_f_items_table",joinColumns=@JoinColumn(name="f_items_column"),inverseJoinColumns=@JoinColumn(name="order_column"))
	List<Orderz> order_f_items;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getDishname() {
		return dishname;
	}

	public void setDishname(String dishname) {
		this.dishname = dishname;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	/*public String[] getIngredients() {
		return ingredients;
	}

	public void setIngredients(String[] ingredients) {
		this.ingredients = ingredients;
	}*/

	public List<Chef> getChef_f_items() {
		return chef_f_items;
	}

	public void setChef_f_items(List<Chef> chef_f_items) {
		this.chef_f_items = chef_f_items;
	}

	public List<Orderz> getOrder_f_items() {
		return order_f_items;
	}

	public void setOrder_f_items(List<Orderz> order_f_items) {
		this.order_f_items = order_f_items;
	}
	
	
	public DishType getDishtype() {
		return dishtype;
	}

	public void setDishtype(DishType dishtype) {
		this.dishtype = dishtype;
	}

	public boolean isVeg() {
		return veg;
	}

	public void setVeg(boolean veg) {
		this.veg = veg;
	}

	@Override
	public boolean equals(Object obj) {
	    if (obj == null) return false;
	    if (obj == this) return true;
	    if (!(obj instanceof Orderz)) return false;
	    Orderz o = (Orderz)obj;
	    return o.getId() == this.Id;
	}
 

}
