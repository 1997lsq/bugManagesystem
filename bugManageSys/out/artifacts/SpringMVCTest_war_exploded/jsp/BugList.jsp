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
      function addBug(proid){
          location.href="<%=request.getContextPath() %>/jsp/addBug.jsp?proid=" + proid;
      }

      function back() {
          location.href="http://localhost:8080/project/queryAllProjects.action"
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
    <button type="button" class="btn btn-info" onclick="addBug(<%=request.getParameter("pro_id")%>)">添加bug</button>
    <button type="button" class="btn btn-info" onclick="back()">返回</button>
  </div>
</div>
<table border="0" >
  <tr>
    <td >
      <font size="4" style="font-family: 'Microsoft Himalaya'">
        <b>
          <div style="margin-left: 230px">
            <div style="width: 170px; display:inline-block" align="center">BUG内容</div>
            <div style="width: 170px;display:inline-block" align="center">提交用户</div>
            <div style="width: 170px;display:inline-block" align="center">提交日期</div>
            <div style="width: 170px;display:inline-block" align="center">处理日期</div>
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


          <c:forEach items="${Bugs}" var="bs">
            <li class="list-group-item" >
              <div style="width: 170px; display:inline-block" align="center">${bs.content}</div>
              <div style="width: 170px;display:inline-block" align="center">${bs.userid}</div>
              <div style="width: 170px;display:inline-block" align="center">${bs.createDate}</div>
              <div style="width: 170px;display:inline-block" align="center">${bs.processDate}</div>
                <a href="<%= request.getContextPath()%>/project/deleteBug.action?bugid=${bs.bugid}"> 删除</a></div>
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