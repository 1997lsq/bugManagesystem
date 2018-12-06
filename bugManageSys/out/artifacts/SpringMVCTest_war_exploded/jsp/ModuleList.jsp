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
      function addModule(proid){
          location.href="<%=request.getContextPath() %>/jsp/addModule.jsp?proid=" + proid;
      }

      function back() {
          location.href="http://localhost:8080/project/queryAllProjects.action"
      }
      
      function updateModule(moduleid, proid, modulename, time, ifunction) {
          location.href="<%=request.getContextPath() %>/jsp/updateModule.jsp?moduleid=" + moduleid + "&proid=" + proid + "&modulename=" + modulename + "&time=" + time + "&function=" + ifunction;
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
    <button type="button" class="btn btn-info" onclick="addModule(<%=request.getParameter("pro_id")%>)">添加模块</button>
    <button type="button" class="btn btn-info" onclick="back()">返回</button>

  </div>
</div>



<div class="list-group" style="width: 1200px;margin-left: 0px">
  <a href="#" class="list-group-item active" style="display:inline-block;width: 1200px">
    <h4 class="list-group-item-heading">
      prjectname
    </h4>
  </a>





  <div style="display: block">

    <c:forEach items="${Modules}" var="ms">

      <a href="#" class="list-group-item" style="display:inline-block;width: 600px;margin-left: 40px;margin-top: 30px">
        <h4 class="list-group-item-heading">
          <table class="table table-condensed">
            <tbody>
            <tr>
              <th>模块</th>
              <td>${ms.modulename}</td>
            </tr>
            <tr>
              <th>功能</th>
              <td>${ms.function}</td>
            </tr>
            <tr>
              <th>时间</th>
              <td>${ms.time}</td>
            </tr>
            </tbody>

          </table>

        </h4>
      </a>

      <a href="javascript:updateModule('${ms.moduleid}','${ms.proid}','${ms.modulename}','${ms.time}','${ms.function}')">修改</a><b>|</b>
      <a href="<%= request.getContextPath()%>/project/deleteModule.action?moduleid=${ms.moduleid}">删除</a>

    </c:forEach>

    </a>
  </div>




</body>
</html>