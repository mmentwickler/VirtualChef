package Models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

/**
 * Entity implementation class for Entity: GroceryItems
 *
 */
@Entity

public class GroceryItems implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public GroceryItems() {
		super();
	}
 
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Id;
    String item_Name;
    int price;
    int quantity;
	
    //Many To many with d_boy
	@ManyToMany(mappedBy = "g_items_d_boy")
    List<DeliveryBoy> d_boy;
    
	//Many To many with vendor
	@ManyToMany(mappedBy = "g_items_vendor")
    List<Vendor> vendor;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getItem_Name() {
		return item_Name;
	}

	public void setItem_Name(String item_Name) {
		this.item_Name = item_Name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public List<DeliveryBoy> getD_boy() {
		return d_boy;
	}

	public void setD_boy(List<DeliveryBoy> d_boy) {
		this.d_boy = d_boy;
	}

	public List<Vendor> getVendor() {
		return vendor;
	}

	public void setVendor(List<Vendor> vendor) {
		this.vendor = vendor;
	}

	
}
