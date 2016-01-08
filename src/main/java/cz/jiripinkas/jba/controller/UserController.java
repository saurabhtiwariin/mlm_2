package cz.jiripinkas.jba.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import cz.jiripinkas.jba.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	
	
	/*@ModelAttribute("blog")
	private Blog constructBlog(){
		return new Blog();
	}*/
	
	
	/*@RequestMapping("/account")
	public String account(Model model, Principal principal){
		String name = principal.getName();
		model.addAttribute("user",userService.findOneWithBlogs(name));
		return "account";
	}*/

/*	@RequestMapping(value="/account",method=RequestMethod.POST)
	public String doAddBlog(Model model ,@Valid @ModelAttribute("blog") Blog blog,BindingResult result, Principal principal){
		if (result.hasErrors()) {
			return account(model,principal);
		}
		String  name = principal.getName();
		blogService.save(blog,name);
		return "redirect:/account.html";
	}

	@RequestMapping("/blog/remove/{id}")
	public String blogRemove(@PathVariable int id){
		Blog blog = blogService.findOne(id);
		blogService.remove(blog);
		return "redirect:/account.html";
	}
	
	*/
}
