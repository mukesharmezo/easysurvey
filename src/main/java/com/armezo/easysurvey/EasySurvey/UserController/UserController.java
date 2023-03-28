package com.armezo.easysurvey.EasySurvey.UserController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.armezo.easysurvey.EasySurvey.Utility.Constant;

@Controller
public class UserController {
	@GetMapping("/user")
	public String showUserInfo(Model mod)
	{
		//mod.addAttribute("alldata",ob);
		return Constant.addUser;
	}

}
