package com.src.dao;

import com.src.model.Vendor;

public interface VendorDAO {
	public abstract boolean saveVendor(Vendor vendor);

	public Vendor getVendorDetailsByEmailAndPassword(String email, String password);
}
