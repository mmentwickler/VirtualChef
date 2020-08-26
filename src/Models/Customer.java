package Models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

/**
 * Entity implementation class for Entity: Customer
 *
 */
@NamedQuery(name="customer.findbyid",query="select cust from Customer cust where cust.Id=:id")
@Entity
public class Customer extends User implements Serializable  {

	
	private static final long serialVersionUID = 1L;

	public Customer() {
		super();
	}
	//Rate rate_Chef;
		//int no_Of_Persons;
	boolean status;
	
	
	
	
    
	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
	
	@OneToMany(mappedBy="cust_dishes")
	List<CustDishType> dishTypes;
	public List<CustDishType> getDishTypes() {
		return dishTypes;
	}

	public void setDishTypes(List<CustDishType> dishTypes) {
		this.dishTypes = dishTypes;
	}
	//One to many with order
	@OneToMany(mappedBy = "cust_order")
	List<Orderz> order;
	//One to many with dishType
	@ManyToMany(mappedBy = "cust_dishType")
	List<DishType> dishType;
	//Many to many with d_boy
	@ManyToMany(mappedBy = "cust_d_boy")
	List<DeliveryBoy> d_boy;
	
	

	public int getSpice() {
		return spice;
	}
	public void setSpice(int spice) {
		this.spice = spice;
	}

	public boolean getVeg() {
		return veg;
	}
	public void setVeg(boolean veg) {
		this.veg = veg;
	}

	
	public List<DishType> getDishType() {
		return dishType;
	}

	public void setDishType(List<DishType> dishType) {
		this.dishType = dishType;
	}

	public byte[] getDimg() {
		return dimg;
	}

	public void setDimg(byte[] dimg) {
		this.dimg = dimg;
	}
	
	public int getId() {
		return Id;
	}
	public void setId(int Id) {
		this.Id = Id;
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
	/*public Rate getRate_Chef() {
		return rate_Chef;
	}
	public void setRate_Chef(Rate rate_Chef) {
		this.rate_Chef = rate_Chef;
	}*/
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
	/*public int getNo_Of_Persons() {
		return no_Of_Persons;
	}
	public void setNo_Of_Persons(int no_Of_Persons) {
		this.no_Of_Persons = no_Of_Persons;
	}*/
	public List<Orderz> getOrder() {
		return order;
	}
	public void setOrder(List<Orderz> order) {
		this.order = order;
	}
	public List<DeliveryBoy> getD_boy() {
		return d_boy;
	}
	public void setD_boy(List<DeliveryBoy> d_boy) {
		this.d_boy = d_boy;
	}
	

}
