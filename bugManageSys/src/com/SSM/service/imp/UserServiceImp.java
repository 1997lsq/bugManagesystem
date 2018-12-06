package com.SSM.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.SSM.mapper.UserMapper;
import com.SSM.pojo.User;
import com.SSM.service.UserService;

import javax.jws.soap.SOAPBinding;

public class UserServiceImp implements UserService {

	//创建usermapper接口对象
	@Autowired
	private UserMapper userMapper;

	public List<User> queryAllUsers() {
		// TODO Auto-generated method stub
		return userMapper.queryAllUsers();
	}

	public void addUser(User user) {
		// TODO Auto-generated method stub
		userMapper.addUser(user);
	}

	public List<User> queryUserByItems(User user) {
		// TODO Auto-generated method stub
		return userMapper.queryUserByItems(user);
	}

	public void  deleteUser(User user){
		userMapper.deleteUser(user);
	}

	public void updateUser(User user) {
		System.out.println("------------==============-------------");
		System.out.println(user.getUserName());
		System.out.println(user.getUser_id());
		userMapper.updateUser(user); }

}
