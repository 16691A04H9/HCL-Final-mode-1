package com.src.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class VendorSiteController {
	@RequestMapping(value ="/vendorproduct" ,method=RequestMethod.GET)
	public String vendorproduct()
	{
		return "vendorinsertion";
	}
	@RequestMapping(value ="/displayvendor product" ,method=RequestMethod.GET)
	public String addproduct()
	{
		return "vendorproducts";
	}
	@RequestMapping(value ="/inserting" ,method=RequestMethod.GET)
	public String addproduct1()
	{
		return "vendorinsertiondb";
	}
	@RequestMapping(value ="/home" ,method=RequestMethod.GET)
	public String home()
	{
		return "welcomevendor";
	}
	@RequestMapping(value = "/deleteprod", method = RequestMethod.GET)
	public String deletePage1() {
		return "deleteproduct";
	}
	@ModelAttribute
	public void headerMessage(Model model){
		model.addAttribute("headerMessage", "Welcome to Lot+Loot...!");
	}
}
