package com.src.service;

import com.src.model.Vendor;

public interface VendorService {
	public abstract Vendor validateVendorCredential(String email, String password);

	public abstract boolean registerVendor(Vendor vendor);
}
