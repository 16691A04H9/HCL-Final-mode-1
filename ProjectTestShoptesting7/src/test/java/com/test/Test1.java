package com.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.src.dao.impl.CustomerDAOImpl;
import com.src.model.Customer;

public class Test1 {

	@SuppressWarnings("unused")
	@Test
	public void testSaveCustomer() {
		Customer c=new Customer();
		c.setId(5);
		c.setCustomer_Name("ak");
		c.setCity("pune");
		c.setEmail("test@test.com");
		c.setGender("male");
		c.setPassword("check");
		c.setPhone(9874563210l);
		CustomerDAOImpl cdao=new CustomerDAOImpl();
		assertEquals(false,false);
	}
	
}
