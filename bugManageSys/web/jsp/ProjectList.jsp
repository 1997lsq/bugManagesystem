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
	<meta http-equiv="wordkeywords" content="wordkeyword1,wordkeyword2,wordkeyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
	<script type="text/javascript">
        function addProject(){
            //location.href="<%=request.getContextPath() %>/jsp/addProject.jsp";
        	location.href="<%=request.getContextPath() %>/project/askAddProject.action";
        }

        function queryProject(){
            location.href="<%=request.getContextPath() %>/jsp/queryProject.jsp";
        }

        function updateProject(pro_id, wordkey, name, description, date, manager) {
            location.href="<%=request.getContextPath() %>/jsp/updateProject.jsp?" + "pro_id="+pro_id + "&wordkey="+wordkey + "&name="+name + "&description="+description + "&date="+date + "&manager="+manager;
        }

        function back() {
			location.href="http://localhost:8080"
        }
	</script>

	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>

<body>

<HR align=center  style="color: aqua;size: 20px;width: 98%;" >

<div align="right" style="margin-bottom: 30px">
	<div class="btn-group" align="right" style="margin-top: 45px; margin-right: 30px">
		<button type="button" class="btn btn-info" onclick="addProject()">新建项目</button>
		<button type="button" class="btn btn-info" onclick="back()">返回</button>
	</div>
</div>
<table border="0" >
	<tr>
		<td >
			<font size="4" style="font-family: 'Microsoft Himalaya'">
				<b>
					<div style="margin-left: 230px">
						<div style="width: 170px; display:inline-block" align="center">项目名</div>
						<div style="width: 170px;display:inline-block" align="center">关键字</div>
						<div style="width: 170px;display:inline-block" align="center">项目描述</div>
						<div style="width: 170px;display:inline-block" align="center">日期</div>
					</div>
				</b>
			</font>
		</td>

		<!--<td  style="margin-top: 30px"><a href="#">修改</a>|<a href="#">删除</a></td>--->
	</tr>
	<!-- 接收集合数据 -->
	<tr>
		<td colspan="1">
			<font size="4" style="font-family: 'Microsoft Himalaya'">
				<ul class="list-group" style="margin-left: 220px; margin-top: 20px">


					<c:forEach items="${Projects}" var="ps">
						<li class="list-group-item" >
							<div style="width: 170px; display:inline-block" align="center">${ps.name}</div>
							<div style="width: 170px;display:inline-block" align="center">${ps.wordkey}</div>
							<div style="width: 170px;display:inline-block" align="center">${ps.description}</div>
							<div style="width: 170px;display:inline-block" align="center">${ps.date}</div>
							<div style="width: 200px;display:inline-block" align="center"><a href="<%= request.getContextPath()%>/project/queryBug.action?pro_id=${ps.pro_id}">问题列表</a>|<a href="<%= request.getContextPath()%>/project/queryModule.action?pro_id=${ps.pro_id}">项目模块</a>|<a href="javascript:updateProject('${ps.pro_id}', '${ps.wordkey}', '${ps.name}', '${ps.description}', '${ps.date}', '${ps.manager}')">修改 </a><b>|</b><a href="<%= request.getContextPath()%>/project/deleteProject.action?pro_id=${ps.pro_id}"> 删除</a></div>
						</li>
					</c:forEach>

				</ul>
			</font>
		</td>
		<td></td>


	</tr>


</table>

</body>
</html>