package com.src.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
@SuppressWarnings("deprecation")
@Entity
@Table(name = "vendor_table")
public class Vendor {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;
	
	@NotEmpty
	@Pattern(regexp="[^0-9]+")
	@Size(min=6,max=20)
	@Column(name = "vendor_name")
	private String vendor_Name;
	
	@NotEmpty
	@Column(name = "gender")
	private String gender;
	
	
	@NotEmpty
	@Column(name = "city")
	private String city;
	
	@NotEmpty
	@Email
	@Column(name = "email")
	private String email;
	
	@NotEmpty
	@Column(name = "password")
	private String password;
	
	@NotNull
	@Min(value = 1000000000)
	@Column(name = "phone")
	private Long phone;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getVendor_Name() {
		return vendor_Name;
	}

	public void setVendor_Name(String vendor_Name) {
		this.vendor_Name = vendor_Name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
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

	public Long getPhone() {
		return phone;
	}

	public void setPhone(Long phone) {
		this.phone = phone;
	}

}
