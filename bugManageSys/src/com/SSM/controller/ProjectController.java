package com.SSM.controller;

import java.util.List;

import com.SSM.pojo.Bug;
import com.SSM.pojo.User;
import com.SSM.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.SSM.pojo.Project;
import com.SSM.pojo.Module;
import com.SSM.service.ProjectService;
import sun.security.pkcs11.Secmod;

@Controller
@RequestMapping("/project")
public class ProjectController {

        //创建serviece对象，进行注入
        @Autowired
        ProjectService projectService;
        @Autowired
        UserService userService;
        //检索所有用户对象
        @RequestMapping("/index")
        public String queryAllProjects(Model model){

            return "/WEB-INF/index.jsp";

        }

        @RequestMapping("askAddProject")
        public String askAppProject(Model model){
            System.out.println("hshshshshshshshshshshshshshsshsh");
            String msg = "hello!";
            model.addAttribute("msg",msg);
            //调用serviec层的检索方法
            List<User>allUsers= userService.queryAllUsers();

            //把检索结果集，存放到model中，可以由页面进行引用
            model.addAttribute("PUsers", allUsers);
            System.out.println("size:"+allUsers.size());
            return "addProject";
        }
        @RequestMapping("askUpdateProject")
        public String askUpdateProject(Model model){
            System.out.println("hshshshshshshshshshshshshshsshsh");
            String msg = "hello!";
            model.addAttribute("msg",msg);
            //调用serviec层的检索方法
            List<User>allUsers= userService.queryAllUsers();

            //把检索结果集，存放到model中，可以由页面进行引用
            model.addAttribute("PUsers", allUsers);
            System.out.println("size:"+allUsers.size());
            return "updateProject";
        }

        //添加用户
        @RequestMapping("addProject")
        public String addProject(Project project, Model model){
            projectService.addProject(project);
            return "success_addPro";
        }

        @RequestMapping("deleteProject")
        public String deleteProject(Project project){
            projectService.deleteProject(project);
            return "success_deletePro";
        }

        @RequestMapping("deleteBug")
        public String deleteBug(Bug bug){
            projectService.deleteBug(bug);
            return "success_deleteBug";
        }

        @RequestMapping("deleteModule")
        public String deletemodule(Module module){
            projectService.deleteModule(module);
            return "success_deleteModule";
        }
        //删除用户
        @RequestMapping("updateProject")
        public String updateProject(Project project){
            projectService.updateProject(project);
            return "success_updatePro";
        }
        @RequestMapping("updateModule")
        public String updateModule(Module module){
            projectService.updateModule(module);
            return "success_updateModule";
        }

        @RequestMapping("queryModule")
        public String queryModule(Project project, Model model){
            System.out.println("gooagkaogsdgskgslgjsldgjsd");
            List<Module> ms = projectService.queryModule(project);
            System.out.println("oorooroorooroororororororooro");
            model.addAttribute("Modules", ms);
            return "ModuleList";
        }

        @RequestMapping("queryBug")
        public String queryBug(Project project, Model model){
            List<Bug> bs = projectService.queryBug(project);
            model.addAttribute("Bugs", bs);
            return "BugList";
        }

        @RequestMapping("addModule")
        public String addModule(Module module){
            projectService.addModule(module);
            System.out.println("------------" + new Integer(module.getProid()).toString());
            System.out.println("we have use it");
            return "success_addModule";
        }

        @RequestMapping("addBug")
        public String addBug(Bug bug){
            projectService.addBug(bug);
            return "success_addBug";
        }


        @RequestMapping("/queryAllProjects")
        public String test(Model model){
            String msg = "hello!";
            model.addAttribute("msg",msg);
            //调用serviec层的检索方法
            List<Project>allProjects= projectService.queryAllProjects();

            //把检索结果集，存放到model中，可以由页面进行引用
            model.addAttribute("Projects", allProjects);
            System.out.println("size:"+allProjects.size());
            //返回逻辑视图名
            return "ProjectList";

        }


}
