package com.SSM.mapper;

import com.SSM.pojo.Bug;
import com.SSM.pojo.Module;
import com.SSM.pojo.Project;

import java.util.List;

public interface ProjectMapper {
	//检索全部用户
	List<Project>queryAllProjects();
	//添加项目
	void addProject(Project project);
	//
	void deleteProject(Project project);
	//
	void updateProject(Project project);
	//
	List<Module> queryModule(Project project);
	//
	List<Bug> queryBug(Project project);

	void deleteBug(Bug bug);

	void deleteModule(Module module);

	void addModule(Module module);

	void addBug(Bug bug);

	void updateModule(Module module);
	/*
	//删除模块
	void deleteModule(Module module);
	//更新模块
	void updateModule(Bug bug);
	//bug列表
	List<Bug> queryAllBugs(Project project);
	//添加bug
	void addBug(Bug bug);
	//删除bug
	void deleteBug(Bug bug);
	*/
}
