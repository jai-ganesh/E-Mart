package com.niit.emart.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
	@RequestMapping("supplier/remove/{id}")
    public ModelAndView removeSupplier(@PathVariable("id") String id,ModelMap model) throws Exception{
		
       try {
		supplierDAO.delete(id);
		model.addAttribute("alert","Successfully Deleted");
		List<Supplier> supplierList = supplierDAO.list();
		ModelAndView mv = new ModelAndView("redirect:/getAllSuppliers");
		mv.addObject("supplierList", supplierList);
		return mv;

	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
       List<Supplier> supplierList = supplierDAO.list();
		ModelAndView mv = new ModelAndView("/supplierList");
		mv.addObject("supplierList", supplierList);
		return mv;

    }
 
    @RequestMapping("supplier/edit/{id}")
    public ModelAndView editSupplier(@ModelAttribute Supplier supplier) {
    	System.out.println("editSupplier");
    	supplierDAO.saveOrUpdate(supplier);
		List<Supplier> supplierList = supplierDAO.list();
		ModelAndView mv = new ModelAndView("/supplierList");
		mv.addObject("supplierList", supplierList);
		return mv;
    }
}
