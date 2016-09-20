package com.niit.collaboration.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.niit.collaboration.dao.UserDAO;
import com.niit.collaboration.modal.User;


@RestController
public class UserController {
	
	@Autowired
	private UserDAO userdao;

@RequestMapping(value = "/userlist", method = RequestMethod.GET)
public String listusers(Model model) {
model.addAttribute("user", new User());
model.addAttribute("userlist", this.userdao.list());
return "userlist";
}


/*@RequestMapping(value="/userlist/add", method = RequestMethod.POST)

public String addUser(@ModelAttribute("User") User user){
	userdao.saveOrUpdate(user);
return "redirect:/userlist";

}

@RequestMapping("userlist/remove/{id}")
public String removeUser(@PathVariable("id") int id,ModelMap model) throws Exception{

try {
	userdao.delete(id);
model.addAttribute("message","Successfully Added");
} catch (Exception e) {
model.addAttribute("message",e.getMessage());
e.printStackTrace();
}
//redirectAttrs.addFlashAttribute(arg0, arg1)
return "redirect:/userlist";
}

@RequestMapping("userlist/edit/{id}")
public String editUser(@PathVariable("id") int id, Model model){
System.out.println("editUser");
model.addAttribute("user", this.userdao.get(id));
model.addAttribute("listUsers", this.userdao.list());
return "userlist";

}*/
}




