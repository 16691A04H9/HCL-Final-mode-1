package com.src.dao;

import com.src.model.Customer;

public interface CustomerDAO {
	public abstract boolean saveCustomer(Customer customer);
	public Customer getCustomerDetailsByEmailAndPassword(String email,String password);
}
