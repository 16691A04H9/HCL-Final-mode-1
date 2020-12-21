package com.src.dao.impl;

import java.util.List;


import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.src.dao.AdminDAO;
import com.src.model.Admin;


@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {
	private static final Logger logger = LoggerFactory.getLogger(AdminDAOImpl.class);
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@SuppressWarnings("unused")
	private SessionFactory sessionfactory;

	public void setSessionfactory(SessionFactory sessionfactory) {
		this.sessionfactory = sessionfactory;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public boolean saveAdmin(Admin admin) {
		int id = (Integer) hibernateTemplate.save(admin);
		// 
		if (id > 0)
		{
			
			return true;
		}
		return false;
	}

	@Override
	public Admin getAdminDetailsByEmailAndPassword(String email, String password) {
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Admin.class);
		detachedCriteria.add(Restrictions.eq("email", email));
		detachedCriteria.add(Restrictions.eq("password", password));
		@SuppressWarnings("unchecked")
		List<Admin> findByCriteria = (List<Admin>) hibernateTemplate.findByCriteria(detachedCriteria);
		if (findByCriteria != null && findByCriteria.size() > 0)
		{
			logger.info("Admin verified successfully, Admin Details="+email);
			return findByCriteria.get(0);
		}
		else
		{
			logger.info("illegal access for admin, Details="+email);
			return null;
		}
	}
}
