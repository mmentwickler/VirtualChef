package Models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

/**
 * Entity implementation class for Entity: DeliveryBoy
 *
 */
@NamedQuery(name="deliverBoy.findbyid",query="select dBoy from DeliveryBoy dBoy where dBoy.Id=:id")

@Entity

public class DeliveryBoy extends User implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public DeliveryBoy() {
		super();
	}
	
   
	private String account_No;
	
	//One To Many with Order
	@OneToMany(mappedBy = "d_boy_order")
	List<Orderz> order;
	
	//Many to many with customer
	@ManyToMany
	@JoinTable(name="cust_d_boy_table",joinColumns=@JoinColumn(name="d_boy_column"),inverseJoinColumns=@JoinColumn(name="cust_column"))
	List<Customer> cust_d_boy;
	
	//Many to many with Chef
	
	@ManyToMany
	@JoinTable(name="chef_d_boy_table",joinColumns=@JoinColumn(name="d_boy_column"),inverseJoinColumns=@JoinColumn(name="chef_column"))
	List<Chef> chef_d_boy;
	
	//Many to many with vendor
	@ManyToMany
	@JoinTable(name="vendor_d_boy_table",joinColumns=@JoinColumn(name="d_boy_column"),inverseJoinColumns=@JoinColumn(name="vendor_column"))
	List<Vendor> vendor_d_boy;
	
	//Many to many with g_items
	@ManyToMany
	@JoinTable(name="g_items_d_boy_table",joinColumns=@JoinColumn(name="d_boy_column"),inverseJoinColumns=@JoinColumn(name="g_items_column"))
	List<GroceryItems> g_items_d_boy;
	
	public byte[] getDimg() {
		return dimg;
	}

	public void setDimg(byte[] dimg) {
		this.dimg = dimg;
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

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAccount_No() {
		return account_No;
	}

	public void setAccount_No(String account_No) {
		this.account_No = account_No;
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

	public List<Orderz> getOrder() {
		return order;
	}

	public void setOrder(List<Orderz> order) {
		this.order = order;
	}

	public List<Customer> getCust_d_boy() {
		return cust_d_boy;
	}

	public void setCust_d_boy(List<Customer> cust_d_boy) {
		this.cust_d_boy = cust_d_boy;
	}

	public List<Chef> getChef_d_boy() {
		return chef_d_boy;
	}

	public void setChef_d_boy(List<Chef> chef_d_boy) {
		this.chef_d_boy = chef_d_boy;
	}

	public List<Vendor> getVendor_d_boy() {
		return vendor_d_boy;
	}

	public void setVendor_d_boy(List<Vendor> vendor_d_boy) {
		this.vendor_d_boy = vendor_d_boy;
	}

	public List<GroceryItems> getG_items_d_boy() {
		return g_items_d_boy;
	}

	public void setG_items_d_boy(List<GroceryItems> g_items_d_boy) {
		this.g_items_d_boy = g_items_d_boy;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	
   
}
