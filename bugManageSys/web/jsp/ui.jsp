<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="gb2312"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">  
<title>��ӭҳ��</title>  
</head>  
<body>  
<center>  
welcome,<%= request.getParameter("user") %><br>  
<a href="login.jsp">�������µ�¼</a>  
<hr>  
<%  
    //��ҳ�Ĺ���  
    int pageSize = 3;   //ÿҳ��ʾ3����¼    
    int pageNow = 1;   //������ʾ��һҳ������    
    int pageCount = 0; //һ���ж���ҳ��ͨ�������ã�    
    int rowCount = 0;  //һ���ж����м�¼��ͨ������ã�  
      
    //��̬�Ľ���pageNow��ֵ  
    String s_pageNow = request.getParameter("s_pageNow");  
    if(null != s_pageNow)  
    {  
        pageNow = Integer.parseInt(s_pageNow);  
    }  
          
    //�����ݿ��в�ѯrowCount��ֵ  
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");    
    Connection ct = DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=TestServlet","sa","123456");      
    PreparedStatement ps = ct.prepareStatement("select count(*)from users");  
    ResultSet rs = ps.executeQuery();    
    if(rs.next())  
    {  
        rowCount = rs.getInt(1);  
    }  
      
    //����pageCount��ֵ  
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
      
    //�ñ����ʾ�û�����Ϣ  
    %>  
    <table border="1">  
    <tr><td>�û�ID</td><td>�û���</td><td>����</td><td>����</td><td>�ȼ�</td></tr>   
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
    //��ʾ������  
    if(1 != pageNow)  
    {  
        out.println("<a href=wel.jsp?s_pageNow=1>[��ҳ]</a>");      
        out.println("<a href=wel.jsp?s_pageNow="+(pageNow-1)+">[��һҳ]</a>");       
  
    }  
      
    for(int i=1; i<=pageCount; ++i){       
        out.println("<a href=wel.jsp?s_pageNow="+i+">["+i+"]</a>");       
    }  
      
    if(pageCount != pageNow)  
    {  
        out.println("<a href=wel.jsp?s_pageNow=1>[��һҳ]</a>");     
        out.println("<a href=wel.jsp?s_pageNow="+(pageNow+1)+">[βҳ]</a>");    
    }  
%>  
</center>  
</body>  
</html>