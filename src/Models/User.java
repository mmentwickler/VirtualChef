package Models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.MappedSuperclass;


/**
 * Entity implementation class for Entity: User
 *
 */
//@NamedQuery(name="User.findbyid",query="select u from User u where u.Id=:id")
//@Entity

@MappedSuperclass
public class User implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public User() {
		super();
	}
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    int Id;
	String firstName;
	String lastName;
	String cnic;
	String dob;
	//Rate rate_Chef;
	String phone_num;
	String address;
	String email;
	String password;

	@Column(nullable = true)
	boolean veg;
	
    
	@Column(nullable = true)
	int spice;
	@Lob
	@Column(nullable = true)
	 byte[] dimg;
	    

	
   
}
