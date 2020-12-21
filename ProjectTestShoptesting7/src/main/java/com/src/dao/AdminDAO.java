package com.src.dao;

import com.src.model.Admin;

public interface AdminDAO {
	public abstract boolean saveAdmin(Admin admin);

	public Admin getAdminDetailsByEmailAndPassword(String email, String password);
}
