package com.src.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.src.dao.AdminDAO;
import com.src.model.Admin;
import com.src.service.AdminService;
@Service("adminService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO adminDAO;
	
	public AdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	@Override
	public Admin validateAdminCredential(String email, String password) {
	Admin admin = getAdminDAO().getAdminDetailsByEmailAndPassword(email, password);
		return admin;
	}

	@Override
	public boolean registerAdmin(Admin admin) {
		boolean isRegister=false;
		boolean saveAdmin = getAdminDAO().saveAdmin(admin);
		if(saveAdmin)
			isRegister=true;
		return isRegister;
	}


}
