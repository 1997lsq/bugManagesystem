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

  <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>

<body>

<img src="png/project_top.png" alt="1" >

<HR align=center  style="color: aqua;size: 20px;width: 98%;" >


<div class="list-group" style="width: 725px;margin-left: 200px">
<a href="#" class="list-group-item active" style="display:inline-block;width: 600px">
  <h4 class="list-group-item-heading">
    prjectname
  </h4>
</a>


<a   href=""></a>
  添加model</a>


<div style="display: block">

<c:forEach items="${Modules}" var="ms">

<a href="#" class="list-group-item" style="display:inline-block;width: 600px;margin-left: 40px">
  <h4 class="list-group-item-heading">
    <div style="display: inline-block">${ms.modulename}</div>
    <div style="display: inline-block;margin-left: 50px" >${ms.time}</div>
  </h4>
</a>
  <a href="#">修改 </a><b>|</b>
  <a href="#"> 删除</a>

</c:forEach>

</a>
</div>




</body>
</html>