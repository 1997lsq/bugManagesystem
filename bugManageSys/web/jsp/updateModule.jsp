<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <base href="<%=basePath%>">

  <title>My JSP 'addUser.jsp' starting page</title>

  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">
  <meta http-equiv="wordkeywords" content="wordkeyword1,wordkeyword2,wordkeyword3">
  <meta http-equiv="description" content="This is my page">
  <!--
  <link rel="stylesheet" type="text/css" href="styles.css">
  -->
  <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css">

  <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>

  <!-- (Optional) Latest compiled and minified JavaScript translation files -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/i18n/defaults-*.min.js"></script>

  <script type="text/javascript" src="jquery.js"></script>

  <style type="text/css">
    .auto-style6 {
      height: 120px;
    }
  </style>

</head>

<body style="background: #DCDCDC">
<form action="<%=request.getContextPath() %>/project/updateModule.action" method="post">
  <table border="0" align="center" >
    <tr><td class="auto-style6"></td></tr>
    <tr > <td class="auto-style3" colspan="2" align="center" style="font-family:'Microsoft Himalaya'"><b>更新模块</b></td></tr>
    <tr>
      <td colspan="2" >


        <HR   style="size: 30px;width: 400px; color: black "   align="center"   >
        <!-- <tr><td colspan="2"><hr style="height:5px;border-top:5px solid #555555; width: 395px; border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-bottom-style: none; border-bottom-color: inherit; border-bottom-width: medium;" /></td></tr>!-->
      </td>
    </tr>

    <tr  style="margin-top: 10px">
      <td  align="right" > <font size="2"  ><b>ID：</b></font> </td>
      <td>
        <div class="input-group">
          <span class="input-group-addon"><font style="font-family: 'Segoe MDL2 Assets'">&#xE1A6</font></span>
          <input type="text" name="moduleid" class="form-control" readonly placeholder="module_id" value="<%=request.getParameter("moduleid")%>">
        </div>
      </td>
    </tr>


    <tr>
      <td align="right"><div style="margin-top: 25px"><font size = 2  ><b>项目id：</b></font> </div></td>
      <td >
        <div class="input-group" style="margin-top: 25px">
          <span class="input-group-addon"><font style="font-family: 'Segoe MDL2 Assets'">&#xE0E7</font></span>
          <input type="text" class="form-control" name="proid" placeholder="pro_id" readonly value="<%=request.getParameter("proid")%>">
        </div>
      </td>
    </tr>



    <tr>
      <td align="right"><div style="margin-top: 25px"><font size = 2  ><b>模块名：</b></font> </div></td>
      <td >
        <div class="input-group" style="margin-top: 25px">
          <span class="input-group-addon"><font style="font-family: 'Segoe MDL2 Assets'">&#xE0E7</font></span>
          <input type="text" class="form-control" name="modulename" placeholder="module_name"  value="<%=request.getParameter("modulename")%>">
        </div>
      </td>
    </tr>

    <tr>
      <td align="right"><dir  style="margin-top: 25px"><font size = 2 ><b>时间</b></font> </dir></td>

      <td >
        <div class="input-group" style="margin-top: 25px">
          <span class="input-group-addon"><font style="font-family: 'Segoe MDL2 Assets'">&#xE087</font></span>
          <input type="text" class="form-control" name="time" placeholder="description" value="<%=request.getParameter("time")%>">
        </div>
      </td>
    </tr>

    <tr>
      <td align="right"><dir  style="margin-top: 25px"><font size = 2 ><b>功能：</b></font> </dir></td>
      <td >
        <div class="input-group" style="margin-top: 25px">
          <span class="input-group-addon"><font style="font-family: 'Segoe MDL2 Assets'">&#xE228</font></span>
          <input type="text" class="form-control" name="function" placeholder="function" value="<%=request.getParameter("function")%>">
        </div>
      </td>
    </tr>



    <tr>

      <td colspan="2" align="center">
        <div style="margin-top: 50px">
          <font face ="Microsoft YaHei"><b><input  type="submit" value="确定" style="border-style: none; border-color: inherit; border-width: medium; background: url('../png/button-.png'); height: 58px; width: 121px;"/><input type="reset" value="重置" style="border-style: none; border-color: inherit; border-width: medium; background: url('../png/button-.png'); height: 58px; width: 121px;"/></b></font>
        </div>
      </td>
    </tr>

  </table>
</form>

</body>

</html>
