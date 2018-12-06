package com.SSM.service;

import java.util.List;

import com.SSM.pojo.User;

import javax.jws.soap.SOAPBinding;

public interface UserService {
	List<User>queryAllUsers();

	//添加用户
	void addUser(User user);

	//按条件检索用户
	List<User>queryUserByItems(User user);

	void deleteUser(User user);

	void updateUser(User user);
}
