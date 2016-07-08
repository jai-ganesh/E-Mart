package com.niit.emart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.emart.dao.ProductDAO;
import com.niit.emart.model.Product;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping("/addProduct")
	public ModelAndView addProduct(@ModelAttribute Product product) {
		productDAO.saveOrUpdate(product);
		List<Product> productList = productDAO.list();
		ModelAndView mv = new ModelAndView("/productList");
		mv.addObject("productList", productList);
		return mv;
	}

	@RequestMapping("/getAllProducts")
	public ModelAndView getAllProducts() {
		System.out.println("getAllProducts");
		List<Product> productList = productDAO.list();
		ModelAndView mv = new ModelAndView("/productList");
		mv.addObject("productList", productList);
		return mv;
	}

	@RequestMapping("/product/remove/{id}")
	public ModelAndView deleteProduct(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Deleted");

			List<Product> productList = productDAO.list();

			ModelAndView mv = new ModelAndView("redirect:/getAllProducts");
				mv.addObject("productList", productList);

			return mv;

		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();

		}
		List<Product> productList = productDAO.list();
		ModelAndView mv = new ModelAndView("redirect:/getAllProducts");
		mv.addObject("productList", productList);
		return mv;
	}

	@RequestMapping("product/edit/{id}")
	public ModelAndView editProduct(@ModelAttribute Product product) {
		productDAO.saveOrUpdate(product);
		List<Product> productList = productDAO.list();
		ModelAndView mv = new ModelAndView("redirect:/getAllProducts");
		mv.addObject("productList", productList);
		return mv;
	}
}
