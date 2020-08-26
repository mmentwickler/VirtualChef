package Models;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;

/**
 * Entity implementation class for Entity: Order
 *
 */
@NamedQuery(name="order.findbyid",query="select o from Orderz o where o.Id=:id")
@Entity

public class Orderz implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public Orderz() {
		super();
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Id;
	String ordered_dish;
	double location_Longitude;
	double location_Latitude;
	int servings;
	String address;
	int total_price;
	String msg;
	Map<Chef,Double> interested;
	boolean placed;
	boolean accept;
	boolean completed;
	//	@Temporal(TemporalType.TIMESTAMP)
	String Odate;
	String oDay;
    @Enumerated(EnumType.STRING)
	Status status;
  

	
	
	
public int getServings() {
		return servings;
	}

	public void setServings(int servings) {
		this.servings = servings;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getTotal_price() {
		return total_price;
	}

	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Map<Chef, Double> getInterested() {
		return interested;
	}

	public void setInterested(Map<Chef, Double> interested) {
		this.interested = interested;
	}

	public boolean isPlaced() {
		return placed;
	}

	public void setPlaced(boolean placed) {
		this.placed = placed;
	}

	public boolean isAccept() {
		return accept;
	}

	public void setAccept(boolean accept) {
		this.accept = accept;
	}

	public boolean isCompleted() {
		return completed;
	}

	public void setCompleted(boolean completed) {
		this.completed = completed;
	}
  
    //Many To One with customer
    @ManyToOne
    @JoinColumn(name = "cust_fk" )
    Customer cust_order;
    
    //Many To One with d_boy
    @ManyToOne
    @JoinColumn(name = "d_boy_fk" )
    DeliveryBoy d_boy_order;
    
    //Many To One with chef
    @ManyToOne
    @JoinColumn(name = "chef_fk" )
    Chef chef_order;
    
    //Many to many with f_items
    @ManyToMany(mappedBy = "order_f_items")
    List<FoodItems> f_items;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getOrdered_dish() {
		return ordered_dish;
	}

	public void setOrdered_dish(String ordered_dish) {
		this.ordered_dish = ordered_dish;
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

	public String getDate() {
		return Odate;
	}

	public void setDate(String Odate) {
		this.Odate = Odate;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public Customer getCust_order() {
		return cust_order;
	}

	public void setCust_order(Customer cust_order) {
		this.cust_order = cust_order;
	}

	public DeliveryBoy getD_boy_order() {
		return d_boy_order;
	}

	public void setD_boy_order(DeliveryBoy d_boy_order) {
		this.d_boy_order = d_boy_order;
	}

	public Chef getChef_order() {
		return chef_order;
	}

	public void setChef_order(Chef chef_order) {
		this.chef_order = chef_order;
	}
	

	public List<FoodItems> getF_items() {
		return f_items;
	}

	public void setF_items(List<FoodItems> f_items) {
		this.f_items = f_items;
	}
	
	
	
	public String getOdate() {
		return Odate;
	}

	public void setOdate(String odate) {
		Odate = odate;
	}

	public String getoDay() {
		return oDay;
	}

	public void setoDay(String oDay) {
		this.oDay = oDay;
	}

	@Override
	public boolean equals(Object obj) {
	    if (obj == null) return false;
	    if (obj == this) return true;
	    if (!(obj instanceof Orderz)) return false;
	    Orderz o = (Orderz)obj;
	    return o.Id == this.Id;
	}


}
