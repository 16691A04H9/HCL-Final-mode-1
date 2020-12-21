package com.src.service;


import com.src.model.Admin;

public interface AdminService {
	public abstract Admin validateAdminCredential(String email,	String password);
	public abstract boolean registerAdmin(Admin admin);
}
