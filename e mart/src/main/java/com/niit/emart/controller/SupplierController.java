package com.niit.emart.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.emart.bean.Supplier;
import com.niit.emart.userdao.SupplierDAO;

@Controller
public class SupplierController {

	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("/getAllSuppliers")
	public ModelAndView getAllSuppliers(){
		System.out.println("getAllSuppliers");
		List<Supplier> supplierList = supplierDAO.getAllSuppliers();
		ModelAndView mv= new ModelAndView("/supplierList");
		Gson gson = new Gson();
		 String json = gson.toJson(supplierList);
		mv.addObject("supplierList", json);
		return mv;
	}
}
