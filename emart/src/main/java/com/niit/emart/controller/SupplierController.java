package com.niit.emart.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.emart.dao.SupplierDAO;
import com.niit.emart.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	private SupplierDAO supplierDAO;
	

	@RequestMapping("/addSupplier")
	public ModelAndView addSupplier(@ModelAttribute Supplier supplier) {
		supplierDAO.saveOrUpdate(supplier);
		List<Supplier> supplierList = supplierDAO.list();
		ModelAndView mv = new ModelAndView("/supplierList");
		mv.addObject("supplierList", supplierList);
		return mv;

	}

	@RequestMapping("/getAllSuppliers")
	public ModelAndView getAllSuppliers() {

		System.out.println("getAllSuppliers");
		
		List<Supplier> supplierList = supplierDAO.list();
		ModelAndView mv = new ModelAndView("/supplierList");
		mv.addObject("supplierList", supplierList);
		return mv;
	}
}
