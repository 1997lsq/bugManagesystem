package com.SSM.service;

import com.SSM.pojo.Bug;
import com.SSM.pojo.Module;
import com.SSM.pojo.Project;
import com.SSM.pojo.Project;
import com.sun.org.apache.xpath.internal.operations.Mod;

import java.util.List;

public interface ProjectService {
	List<Project>queryAllProjects();

	//添加用户
	void addProject(Project project);

	void deleteProject(Project project);

	void updateProject(Project project);

	List<Module> queryModule(Project project);

	List<Bug> queryBug(Project project);

	void deleteBug(Bug bug);

	void deleteModule(Module module);

	void addModule(Module module);

	void addBug(Bug bug);

	void updateModule(Module module);

	/*
	//为一个项目添加模块
	void addModule(Module module);
	//	删除一个项目的模块
	void deleteModule(Module module);
	//更新一个项目的模块
	void updateModule(Bug bug);
	//一个项目bug列表
	List<Bug> queryAllBugs(Project project);
	//为一个项目添加bug
	void addBug(Bug bug);
	//删除一个项目的bug
	void deleteBug(Bug bug);
	*/
}
