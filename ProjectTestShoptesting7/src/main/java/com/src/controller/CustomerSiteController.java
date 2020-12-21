package com.src.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CustomerSiteController {
	@RequestMapping(value ="/list" ,method=RequestMethod.GET)
	public String Product()
	{
		return "customerproducts";
	}
	@RequestMapping(value ="/Contact us" ,method=RequestMethod.GET)
	public String Contact()
	{
		return "contactdetails";
	}
	@RequestMapping(value ="/contact" ,method=RequestMethod.GET)
	public String thanks()
	{
		return "ThanksContact";
	}
	@RequestMapping(value ="/welcome" ,method=RequestMethod.GET)
	public String home()
	{
		return "welcome";
	}
	@RequestMapping(value ="/Buy" ,method=RequestMethod.GET)
	public String buy()
	{
		return "Buy";
	}
	@RequestMapping(value ="/about" ,method=RequestMethod.GET)
	public String about()
	{
		return "About";
	}
@ModelAttribute
public void headerMessage(Model model){
	model.addAttribute("headerMessage", "Welcome to Lot+Loot...!");
	
	
	List<String> citesList = new ArrayList<>();
	citesList.add("Pune");
	citesList.add("Chennai");
	citesList.add("Delhi");
	citesList.add("Other");
	
//	model.addAttribute("technologyList", techList);
	model.addAttribute("citesList", citesList);
}
}
