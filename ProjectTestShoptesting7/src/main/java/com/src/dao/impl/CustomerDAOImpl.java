package com.src.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.src.model.Customer;

@Repository("customerDAO")
public class CustomerDAOImpl implements com.src.dao.CustomerDAO {
	private static final Logger logger = LoggerFactory.getLogger(CustomerDAOImpl.class);
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	@Override
	public boolean saveCustomer(Customer customer) {
		int id = (Integer) hibernateTemplate.save(customer);

		if (id > 0) {
			logger.info("Customer saved successfully, customer Details=" + customer);
			return true;
		} else {
			logger.info("Customer not saved , customer Details=" + customer);
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public Customer getCustomerDetailsByEmailAndPassword(String email, String password) {
		logger.info("email id and password verification");
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Customer.class);
		detachedCriteria.add(Restrictions.eq("email", email));
		detachedCriteria.add(Restrictions.eq("password", password));
		List<Customer> findByCriteria = (List<Customer>) hibernateTemplate.findByCriteria(detachedCriteria);
		if (findByCriteria != null && findByCriteria.size() > 0)
		{
			logger.info("verified successfully=" + email);
			return findByCriteria.get(0);
		}
		else
		{
			logger.info("not verified =" + email);
			return null;
		}
	}
}
