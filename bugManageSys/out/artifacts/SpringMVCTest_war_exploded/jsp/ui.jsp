<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="gb2312"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">  
<title>欢迎页面</title>  
</head>  
<body>  
<center>  
welcome,<%= request.getParameter("user") %><br>  
<a href="login.jsp">返回重新登录</a>  
<hr>  
<%  
    //分页的功能  
    int pageSize = 3;   //每页显示3条记录    
    int pageNow = 1;   //首先显示第一页的内容    
    int pageCount = 0; //一共有多少页（通过计算获得）    
    int rowCount = 0;  //一共有多少行记录（通过查表获得）  
      
    //动态的接收pageNow的值  
    String s_pageNow = request.getParameter("s_pageNow");  
    if(null != s_pageNow)  
    {  
        pageNow = Integer.parseInt(s_pageNow);  
    }  
          
    //到数据库中查询rowCount的值  
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");    
    Connection ct = DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=TestServlet","sa","123456");      
    PreparedStatement ps = ct.prepareStatement("select count(*)from users");  
    ResultSet rs = ps.executeQuery();    
    if(rs.next())  
    {  
        rowCount = rs.getInt(1);  
    }  
      
    //计算pageCount的值  
    if(rowCount%pageSize == 0)  
    {  
        pageCount = rowCount/pageSize;  
    }else  
    {  
        pageCount = rowCount/pageSize + 1;        
    }  
      
    ps = ct.prepareStatement("select top "  
                            +pageSize+" *  from users where userID not in (select top "  
                            +pageSize*(pageNow-1)+" userID from users)");    
    rs = ps.executeQuery();  
      
    //用表格显示用户的信息  
    %>  
    <table border="1">  
    <tr><td>用户ID</td><td>用户名</td><td>密码</td><td>邮箱</td><td>等级</td></tr>   
    <%  
    while(rs.next())  
    {  
        out.println("<tr>");    
        out.println("<td>"+rs.getInt(1)+"</td>");    
        out.println("<td>"+rs.getString(2)+"</td>");    
        out.println("<td>"+rs.getString(3)+"</td>");    
        out.println("<td>"+rs.getString(4)+"</td>");    
        out.println("<td>"+rs.getInt(5)+"</td>");    
        out.println("</tr>");       
    }     
    %>     
    </table>  
    <%  
    //显示超链接  
    if(1 != pageNow)  
    {  
        out.println("<a href=wel.jsp?s_pageNow=1>[首页]</a>");      
        out.println("<a href=wel.jsp?s_pageNow="+(pageNow-1)+">[上一页]</a>");       
  
    }  
      
    for(int i=1; i<=pageCount; ++i){       
        out.println("<a href=wel.jsp?s_pageNow="+i+">["+i+"]</a>");       
    }  
      
    if(pageCount != pageNow)  
    {  
        out.println("<a href=wel.jsp?s_pageNow=1>[下一页]</a>");     
        out.println("<a href=wel.jsp?s_pageNow="+(pageNow+1)+">[尾页]</a>");    
    }  
%>  
</center>  
</body>  
</html>