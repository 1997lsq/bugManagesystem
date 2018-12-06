package com.SSM.service.imp;

import com.SSM.mapper.ProjectMapper;
import com.SSM.pojo.Bug;
import com.SSM.pojo.Module;
import com.SSM.pojo.Project;
import com.SSM.pojo.Project;
import com.SSM.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ProjectServiceImp implements ProjectService {

	//创建mapper接口对象
	@Autowired
	private ProjectMapper projectMapper;

	public List<Project> queryAllProjects() {
		// TODO Auto-generated method stub
		return projectMapper.queryAllProjects();
	}

	public void addProject(Project project) {
		// TODO Auto-generated method stub
		projectMapper.addProject(project);
	}


	public void  deleteProject(Project project){
		projectMapper.deleteProject(project);
	}

	public void updateProject(Project project) {
		projectMapper.updateProject(project);
	}

	public List<Module> queryModule(Project project){
		return projectMapper.queryModule(project);
	}

	public List<Bug> queryBug(Project project) { return projectMapper.queryBug(project); }

	public void deleteBug(Bug bug) { projectMapper.deleteBug(bug); }

	public void deleteModule(Module module) {projectMapper.deleteModule(module); }

	public void addModule(Module module) { projectMapper.addModule(module); }

	public void addBug(Bug bug) { projectMapper.addBug(bug); }

	public void updateModule(Module module) { projectMapper.updateModule(module); }
	/*
	public void deleteModule(Module module){

	}
	//
	public void updateModule(Bug bug){

	}
	//
	public List<Bug> queryAllBugs(Project project){
		return projectMapper.queryAllBugs(project);
	}
	//
	public void addBug(Bug bug){

	}
	//
	public void deleteBug(Bug bug){

	}
	*/
}
