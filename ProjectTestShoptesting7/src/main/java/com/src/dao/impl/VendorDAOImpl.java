package com.src.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.src.dao.VendorDAO;
import com.src.model.Vendor;
@Repository("vendorDAO")
public class VendorDAOImpl implements VendorDAO {


	private static final Logger logger = LoggerFactory.getLogger(VendorDAOImpl.class);
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	@Override
	public boolean saveVendor(Vendor vendor) {
		int id = (Integer)hibernateTemplate.save(vendor);
		if(id>0)
		{
			logger.info("Vendor saved successfully, vendor Details=" + vendor);
			return true;
		}
		logger.info("Vendor is not saved successfully, vendor Details=" + vendor);
		return false;
	}
	@SuppressWarnings("unchecked")
	@Override
	public Vendor getVendorDetailsByEmailAndPassword(String email,String password){
		DetachedCriteria detachedCriteria =  DetachedCriteria.forClass(Vendor.class);
		detachedCriteria.add(Restrictions.eq("email", email));
		detachedCriteria.add(Restrictions.eq("password", password));
		List<Vendor> findByCriteria = (List<Vendor>) hibernateTemplate.findByCriteria(detachedCriteria);
		if(findByCriteria !=null && findByCriteria.size()>0)
		{
			logger.info("Vendor verified successfully, vendor Details=" + email);
		return findByCriteria.get(0);
		}
		else
		{
			logger.info("Vendor not verified successfully, vendor Details=" + email);
			return null;
		}
	}
}
