<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

</head>

<body>
<center>

    <font color="#ffffff"><strong><font face="宋体" size="6" style="position: absolute; top: 15%; left: 35%;">欢迎使用软件缺陷管理系统</font></strong></font><hr>

    <img alt="" width="600" height="400" src="\png\background.jpg">

    <table width="600" border ="1" bordercolor="#00F">
        <tr>
            <td>
                <a href="<%=request.getContextPath() %>/user/queryAllUsers.action">用户管理</a>
            </td>
            <td>
                <a href="<%=request.getContextPath() %>/project/queryAllProjects.action">项目管理</a>
            </td>
        </tr>
    </table>
</center

</body>

<html>