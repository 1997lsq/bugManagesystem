<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProjectList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	  <script type="text/javascript">
          function addProject(){
              location.href="<%=request.getContextPath() %>/jsp/addProject.jsp";
          }

          function queryProject(){
              location.href="<%=request.getContextPath() %>/jsp/queryProject.jsp";
          }

          function updateProject(pro_id, key, name, description, date, manager) {
              location.href="<%=request.getContextPath() %>/jsp/updateProject.jsp?" + "pro_id="+pro_id + "&key="+key + "name="+name + "&description="+description + "&date="+date + "&manager="+manager;
          }
	  </script>
  </head>
  
  <body>
  	<input type="button" value="新建项目" onclick="addProject()"><input type="button" value="搜索项目" >
  	<input type="button" value="返回">
  	<table border="1" width="100%">
  		<tr>
  			<td>项目关键字</td>
  			<td>项目名称</td>
  			<td>项目描述信息</td>
  			<td>创建日期</td>
  			<td>项目负责人</td>
			<td>操作</td>
  		</tr>
  		<!-- 接收集合数据 -->
  		<c:forEach items="${Projects}" var="ps">
  			<tr>
  			<td>${ps.key}</td>
  			<td>${ps.name}</td>
  			<td>${ps.description}</td>
  			<td>${ps.date}</td>
  			<td>${ps.manager}</td>
            <td><a href="#">问题列表</a>|<a href="#">项目模块</a>|<a href="#">任务分配</a>|<a href="javascript:updateProject('${ps.pro_id}', '${ps.key}', '${ps.name}', '${ps.description}', '${ps.date}', '${ps.manager}')">修改</a>|<a href="<%= request.getContextPath()%>/project/deleteProject.action?pro_id=${ps.pro_id}">删除</a></td>
  			</tr>
  		</c:forEach>
  	</table>
    
  </body>
</html>
