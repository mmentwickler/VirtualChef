package Models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

/**
 * Entity implementation class for Entity: Chef
 *
 */
@NamedQuery(name = "chef.findbyid", query = "select ch from Chef ch where ch.Id=:id")
@Entity
public class Chef extends User implements Serializable {

	private static final long serialVersionUID = 1L;

	public Chef() {
		super();
	}
	
	int rating;
	int noOfratings;
	boolean status;
	double location_Longitude;
	double location_Latitude;
	
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


	public void setId(int Id) {
		this.Id = Id;
	}
	
    
	
	public double getLocation_Longitude() {
		return location_Longitude;
	}

	public void setLocation_Longitude(double location_Longitude) {
		this.location_Longitude = location_Longitude;
	}

	public double getLocation_Latitude() {
		return location_Latitude;
	}

	public void setLocation_Latitude(double location_Latitude) {
		this.location_Latitude = location_Latitude;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public int getNoOfratings() {
		return noOfratings;
	}

	public void setNoOfratings(int noOfratings) {
		this.noOfratings = noOfratings;
	}


	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	/*
	 * @Enumerated(EnumType.STRING) Skills skills;
	 */
	private String account_no;
	String education;

	// One To many with order
	@OneToMany(mappedBy = "chef_order")
	List<Orderz> order;

	// Many To many with d_boy
	@ManyToMany(mappedBy = "chef_d_boy")
	List<DeliveryBoy> d_boy;

	// Many To many with f_items
	@ManyToMany(mappedBy = "chef_f_items")
	List<FoodItems> f_items;
	
	

	public byte[] getDimg() {
		return dimg;
	}

	public void setDimg(byte[] dimg) {
		this.dimg = dimg;
	}

	public int getId() {
		return Id;
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
	/*
	 * public Skills getSkills() { return skills; }
	 * 
	 * public void setSkills(Skills skills) { this.skills = skills; }
	 */

	public String getAccount_no() {
		return account_no;
	}

	public void setAccount_no(String account_no) {
		this.account_no = account_no;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getPhone_number() {
		return phone_num;
	}

	public void setPhone_number(String phone_number) {
		this.phone_num = phone_number;
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

	public List<Orderz> getOrder_chef() {
		return order;
	}

	public void setOrder_chef(List<Orderz> order_chef) {
		this.order = order_chef;
	}

	public List<DeliveryBoy> getD_boy() {
		return d_boy;
	}

	public void setD_boy(List<DeliveryBoy> d_boy) {
		this.d_boy = d_boy;
	}

	public List<FoodItems> getF_items() {
		return f_items;
	}

	public void setF_items(List<FoodItems> f_items) {
		this.f_items = f_items;
	}

}
