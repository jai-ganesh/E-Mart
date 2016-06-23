package com.niit.emart.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.emart.bean.Category;
import com.niit.emart.userdao.CategoryDAO;

@Controller
public class CategoryController {
@Autowired
private CategoryDAO categoryDAO;
@RequestMapping("/addCategory")
		public ModelAndView addCategory(@RequestParam(value="categoryName") String categoryName,@RequestParam(value="categoryDescription") String categoryDescription){
	System.out.println("addCategory");
	String message="Successfully created";
	ModelAndView mv = new ModelAndView("/success");
	mv.addObject("message",message);
	return mv;
}
@RequestMapping("/getAllCategories")
public ModelAndView getAllCategories(){
	System.out.println("getAllCategories");
	List<Category> categoryList = categoryDAO.getAllCategories();
	ModelAndView mv = new ModelAndView("/categoryList");
	Gson gson = new Gson();
	 String json = gson.toJson(categoryList);
	 	
	mv.addObject("categoryList",json);

	return mv;
}
/*@RequestMapping("/categoryList")
public ModelAndView updateCategory(@ModelAttribute("category") ArrayList<Category> categories)
{
	int count = categoryDAO.updateCategories(categories);
	System.out.println("updating category");
	ModelAndView mv = new ModelAndView("/categoryList");
	String message = count +" record(s) are updated";
	List categoryList= categoryDAO.getAllCategories();
	Gson gson = new Gson();
	 String json = gson.toJson(categoryList);
	 	mv.addObject("message",message);
	mv.addObject("categoryList",json);
		return mv;
}*/

}



