package com.src.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.src.dao.VendorDAO;
import com.src.model.Vendor;
import com.src.service.VendorService;

@Service("vendorService")
public class VendorServiceImpl implements VendorService {
	@Autowired
	private VendorDAO vendorDAO;

	public VendorDAO getVendorDAO() {
		return vendorDAO;
	}

	public void setVendorDAO(VendorDAO vendorDAO) {
		this.vendorDAO = vendorDAO;
	}

	@Override
	public boolean registerVendor(Vendor vendor) {
		boolean isRegister = false;
		boolean saveVendor = getVendorDAO().saveVendor(vendor);
		if (saveVendor)
			isRegister = true;
		return isRegister;
	}

	@Override
	public Vendor validateVendorCredential(String email, String password) {
		Vendor vendor = getVendorDAO().getVendorDetailsByEmailAndPassword(email, password);
		return vendor;
	}
}
