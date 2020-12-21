package com.src.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.src.dao.CustomerDAO;
import com.src.model.Customer;
//import com.src.model.Student;
import com.src.service.CustomerService;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerDAO customerDAO;
	

	
	public CustomerDAO getCustomerDAO() {
		return customerDAO;
	}

	public void setCustomerDAO(CustomerDAO customerDAO) {
		this.customerDAO = customerDAO;
	}

	@Override
	public boolean registerCustomer(Customer customer) {
		boolean isRegister=false;
		boolean saveCustomer = getCustomerDAO().saveCustomer(customer);
		if(saveCustomer)
			isRegister=true;
		return isRegister;
	}

	@Override
	public Customer validateCustomerCredential(String email, String password) {
		Customer customer = getCustomerDAO().getCustomerDetailsByEmailAndPassword(email, password);
		return customer;
	}
}
