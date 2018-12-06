package com.SSM.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.SSM.pojo.User;
import com.SSM.service.UserService;

import javax.jws.WebParam;

@Controller
@RequestMapping("/user")
public class UserControlloer {

	//创建serviece对象，进行注入
	@Autowired
	UserService userService;

	//检索所有用户对象
	@RequestMapping("/index")
	public String queryAllUsers(Model model){

		return "/WEB-INF/index.jsp";

	}



	//添加用户
	@RequestMapping("addUser")
	public String addUser(User user){
		userService.addUser(user);
		return "success_addUsr";
	}
	@RequestMapping("queryUserByItems")
	public String queryUserByItems(User user,Model model){
		List<User>users= userService.queryUserByItems(user);
		//把结果集存放到model，由页面调用
		model.addAttribute("Users", users);
		return "queryUser";
	}
	@RequestMapping("deleteUser")
	public String deleteUser(User user){
		System.out.println(user.getUser_id());
		System.out.println(user.getRealName());
		userService.deleteUser(user);
		return "success_deleteUsr";
	}
	//删除用户
	@RequestMapping("updateUser")
	public String updateUser(User user){
		System.out.println("=-=-=-=-=-=-=-=-=-=-=");
		userService.updateUser(user);
		return "success_updateUsr";
	}

	@RequestMapping("/queryAllUsers")
	public String test(Model model){
		String msg = "hello!";
		model.addAttribute("msg",msg);
		//调用serviec层的检索方法
		List<User>allUsers= userService.queryAllUsers();

		//把检索结果集，存放到model中，可以由页面进行引用
		model.addAttribute("Users", allUsers);
		System.out.println("size:"+allUsers.size());
		//返回逻辑视图名
		return "UserList";

	}

}
