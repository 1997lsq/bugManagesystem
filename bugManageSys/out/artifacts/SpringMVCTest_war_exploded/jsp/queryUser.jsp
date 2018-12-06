<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <base href="<%=basePath%>">

  <title>My JSP 'queryUser.jsp' starting page</title>

  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">

  <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <script type="text/javascript">
      function addUser(){
          location.href="<%=request.getContextPath() %>/jsp/addUser.jsp";
      }

      function queryUser(){
          location.href="<%=request.getContextPath() %>/jsp/queryUser.jsp";
      }

      function updateUser(user_id, userName, pwd, email, role_id, role_name, realName) {
          location.href="<%=request.getContextPath() %>/jsp/updateUser.jsp?" + "user_id="+user_id + "&userName="+userName + "&pwd="+pwd + "&email="+email + "&role_id="+role_id + "&role_name="+role_name + "&realName="+realName;
      }

      function back() {
          location.href="http://localhost:8080"
      }
  </script>

  <!--
  <link rel="stylesheet" type="text/css" href="styles.css">

  -->

</head>

<body>

<HR align=center  style="color: aqua;size: 20px;width: 98%;" >

<a href="http://localhost:8080/user/queryAllUsers.action" style="margin-right: 10px">返回</a>
<form action="<%=request.getContextPath() %>/user/queryUserByItems.action" method="post">

  <div style="display:inline-block">
  <div class="input-group input-group-lg"  style="width: 300px">
    <span class="input-group-addon"> 用户名 </span>
    <input type="text" class="form-control" name="userName" >
  </div>

  </div>

  <div style="display:inline-block">
  <div class="input-group input-group-lg" style="width: 300px">
    <span class="input-group-addon">真实姓名</span>
    <input type="text" class="form-control" name="realName" >
  </div>
  </div>

  <div class="btn-group" style="margin-top: -35px;width: 20px;">
    <button type="button" class="btn btn-default" style="height: 45px;"><input type="submit"  style="border-style: none;" value="搜索"> </button>
  </div>

  <table border="0" style="margin-top: 40px">
    <tr>
      <td >
        <font size="4" style="font-family: 'Microsoft Himalaya'">
          <b>
            <div style="margin-left: 230px">
              <div style="width: 170px; display:inline-block" align="center"><ID></ID></div>
              <div style="width: 170px; display:inline-block" align="center">用户名</div>
              <div style="width: 170px;display:inline-block" align="center">真实姓名</div>
              <div style="width: 170px;display:inline-block" align="center">角色</div>
              <div style="width: 170px;display:inline-block" align="center">邮箱</div>
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

            <c:forEach items="${Users}" var="us">
              <li class="list-group-item" >
                <div style="width: 170px; display:inline-block" align="center">${us.user_id}</div>
                <div style="width: 170px; display:inline-block" align="center">${us.userName}</div>
                <div style="width: 170px;display:inline-block" align="center">${us.realName}</div>
                <div style="width: 170px;display:inline-block" align="center">${us.user_role.role_name}</div>
                <div style="width: 170px;display:inline-block" align="center">${us.email}</div>
                <div style="width: 170px;display:inline-block" align="center"><a href="javascript:updateUser('${us.user_id}', '${us.userName}', '${us.pwd}', '${us.email}', '${us.user_role.role_id}', '${us.user_role.role_name}', '${us.realName}')">修改 </a><b>|</b><a href="<%= request.getContextPath()%>/user/deleteUser.action?user_id=${us.user_id}"> 删除</a></div>
              </li>
            </c:forEach>
          </ul>
        </font>
      </td>
      <td></td>


    </tr>
  </table>



</form>


</body>
</html>
