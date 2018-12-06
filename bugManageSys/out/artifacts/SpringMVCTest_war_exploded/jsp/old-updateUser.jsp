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
    
    <title>My JSP 'UserList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
    function updateUser(){
        location.href="<%=request.getContextPath() %>/jsp/updateUser.jsp";
    }

</script>
  </head>
  
  <body>
    <form action="<%=request.getContextPath() %>/user/updateUser.action" method="post">
  		<table border="0" align="center" >
              <tr > <td class="auto-style3" colspan="2" align="center" style="font-family:'Microsoft Himalaya'"><b>添加用户</b></td></tr>

               <tr><td colspan="2"><hr style="height:5px;border-top:5px solid #555555; width: 395px; border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-bottom-style: none; border-bottom-color: inherit; border-bottom-width: medium;" /></td></tr>
              <tr >
  				<td  align="center" > <font size="2" color="wh" ><b>用户名：</b></font> </td>
  				<td style ="border-style: none; border-color: inherit; border-width: medium; background: url('../png/back-.png');" class="auto-style5" > <input type="text" name="userName" style="border-style: none; border-color: inherit; border-width: 0; margin-left: 23px; width: 233px;" /></td>
                </tr>

                <tr>
                    <td align="center"> <font size = 2 color="white"><b>密码：</b></font></td>
                    <td style="border-style: none; border-color: inherit; border-width: medium; background: url('../png/back-.png');" class="auto-style5"><input  type="password" name="pwd" style="border-style: none; border-color: inherit; border-width: 0; margin-left: 23px; width: 233px;"  /></td>
                </tr>
                <tr>
                    <td align="center"><font size = 2 color="white" ><b>真实姓名：</b></font></td>
                    <td style="border-style: none; border-color: inherit; border-width: medium; background: url('../png/back-.png');" class="auto-style5"><input type="text" name="realName" style="border-style: none; border-color: inherit; border-width: 0; margin-left: 23px; width: 233px;" /></td>
                </tr>

                  <tr>
                    <td align="center"><font size = 2 color="white"><b>邮箱：</b></font></td>
                    <td style="border-style: none; border-color: inherit; border-width: medium; background: url('../png/back-.png');" class="auto-style5"><input type="text" name="email" style="border-style: none; border-color: inherit; border-width: 0; margin-left: 23px; width: 233px;" /></td>
                </tr>

                <tr>
                    <td align="center" ><font size = 2 color="white"><b>角色：</b></font></td>
                    <td class="auto-style2">


                    <select name="user_role.role_id" style="margin-left: 67px" >
                        <option value="1">管理员</option>
                        <option value="2">普通用户</option>
                    </select>

                          </td>
                </tr>

                <tr>

                    <td colspan="2" align="center" class="auto-style4"> <font face ="Microsoft YaHei"><input  type="submit" value="确定" style="border-style: none; border-color: inherit; border-width: medium; background: url('../png/button-.png'); height: 58px; width: 121px;"/><input type="reset" value="重置" style="border-style: none; border-color: inherit; border-width: medium; background: url('../png/button-.png'); height: 58px; width: 121px;"/></font></td>
                </tr>

  		</table>
  	</form>
  </body>
</html>
