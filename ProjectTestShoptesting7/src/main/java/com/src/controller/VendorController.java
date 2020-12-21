package com.src.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.src.model.Vendor;
import com.src.model.VendorCredential;
import com.src.service.VendorService;

@Controller
public class VendorController {

	@Autowired
	private VendorService vendorService;

	public VendorService getVendorService() {
		return vendorService;
	}

	public void setVendorService(VendorService vendorService) {
		this.vendorService = vendorService;
	}

//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String homePage() {
//		return "home";
//	}

	@RequestMapping(value = "/login1", method = RequestMethod.GET)
	public String loginPage(Model model) {
		model.addAttribute("vendorCredential", new VendorCredential());
		return "vendorlogin";
	}

	@RequestMapping(value = "/register1", method = RequestMethod.GET)
	public String registerPage(Model model) {
		model.addAttribute("vendor", new Vendor());
		return "vendorRegister";
	}

	@RequestMapping(value = "/registerSuccess1", method = RequestMethod.POST)
	public ModelAndView registerSuccess(@Valid @ModelAttribute("vendor") Vendor vendor, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return new ModelAndView("vendorRegister");
		}
		getVendorService().registerVendor(vendor);
		ModelAndView modelAndView = new ModelAndView("welcomevendor");
		modelAndView.addObject("vendor", vendor);
		return modelAndView;
	}

	@RequestMapping(value = "/loginSuccess1", method = RequestMethod.POST)
	public ModelAndView loginSuccess(@Valid @ModelAttribute("vendorCredential") VendorCredential vendorCredential,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return new ModelAndView("vendorlogin");
		}

		ModelAndView modelAndView = new ModelAndView("welcomevendor");
		Vendor vendor = getVendorService().validateVendorCredential(vendorCredential.getEmail(),
				vendorCredential.getPassword());
		if (vendor != null) {
			modelAndView.addObject("vendor", vendor);
			return modelAndView;
		} else {
			modelAndView = new ModelAndView("VendorNotfound");
		}
		return modelAndView;
	}

	@ModelAttribute
	public void headerMessage(Model model) {
		model.addAttribute("headerMessage", "Welcome to Lot+Loot...!");

//		List<String> techList = new ArrayList<>();
//		techList.add("Hibernate");
//		techList.add("Spring");
//		techList.add("JSP");
//		techList.add("Servlet");
//		techList.add("Struts");

		List<String> citesList = new ArrayList<>();
		citesList.add("Pune");
		citesList.add("Chennai");
		citesList.add("Delhi");
		citesList.add("Other");

//		model.addAttribute("technologyList", techList);
		model.addAttribute("citesList", citesList);
	}
}
