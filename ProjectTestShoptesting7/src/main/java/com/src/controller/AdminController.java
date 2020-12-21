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

import com.src.model.Admin;
import com.src.model.AdminCredential;
import com.src.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	@RequestMapping(value = "/login2", method = RequestMethod.GET)
	public String loginPage(Model model) {
		model.addAttribute("adminCredential", new AdminCredential());
		return "adminlogin";

	}

	@RequestMapping(value = "/loginSuccess2", method = RequestMethod.POST)
	public ModelAndView loginSuccess(@Valid @ModelAttribute("adminCredential") AdminCredential adminCredential,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return new ModelAndView("adminlogin");
		}

		ModelAndView modelAndView = new ModelAndView("welcomeadmin");
		Admin admin = getAdminService().validateAdminCredential(adminCredential.getEmail(),
				adminCredential.getPassword());
		if (admin != null) {
			modelAndView.addObject("admin", admin);
			return modelAndView;
		} else {
			modelAndView = new ModelAndView("adminNotfound");
		}
		return modelAndView;
	}
	@RequestMapping(value = "/deletecust", method = RequestMethod.GET)
	public String deletePage() {
		return "deletecustomer";
	}
	@RequestMapping(value = "/deletevendor", method = RequestMethod.GET)
	public String deletePage1() {
		return "deletevendor";
	}
	@ModelAttribute
	public void headerMessage(Model model) {
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
