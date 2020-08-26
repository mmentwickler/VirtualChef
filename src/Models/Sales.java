package Models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Entity implementation class for Entity: Sales
 *
 */
@Entity

public class Sales implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public Sales() {
		super();
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Id;
    int sales_amount;
    String sales_description;

	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public int getSales_amount() {
		return sales_amount;
	}
	public void setSales_amount(int sales_amount) {
		this.sales_amount = sales_amount;
	}
	public String getSales_description() {
		return sales_description;
	}
	public void setSales_description(String sales_description) {
		this.sales_description = sales_description;
	}
	
}
