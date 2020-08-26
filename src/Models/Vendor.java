package Models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

/**
 * Entity implementation class for Entity: Vendor
 *
 */
@Entity

public class Vendor implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public Vendor() {
		super();
	}
   
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Id;
	String firstName;
	String lastName;
	String cnic;
	String phone_num;
	String address;
	String city;
	private String account_no;
	
	//Many To many with d_boy
	@ManyToMany(mappedBy = "vendor_d_boy")
    List<DeliveryBoy> d_boy;
	
	//Many To many with g_items
	@ManyToMany
	@JoinTable(name="g_items_vendor_table",joinColumns=@JoinColumn(name="vendor_column"),inverseJoinColumns=@JoinColumn(name="g_items_column"))
	List<GroceryItems> g_items_vendor;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCnic() {
		return cnic;
	}

	public void setCnic(String cnic) {
		this.cnic = cnic;
	}

	public String getPhone_num() {
		return phone_num;
	}

	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAccount_no() {
		return account_no;
	}

	public void setAccount_no(String account_no) {
		this.account_no = account_no;
	}

	public List<DeliveryBoy> getD_boy() {
		return d_boy;
	}

	public void setD_boy(List<DeliveryBoy> d_boy) {
		this.d_boy = d_boy;
	}

	public List<GroceryItems> getG_items_vendor() {
		return g_items_vendor;
	}

	public void setG_items_vendor(List<GroceryItems> g_items_vendor) {
		this.g_items_vendor = g_items_vendor;
	}
 

	
}
