<%@ page import="com.entity.Book" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% 
   String path=request.getContextPath();
   String basePath=request.getScheme()+"://"
		   +request.getServerName()+":"+request.getServerPort()
		   +path+"/";
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath %>" >
<link rel="stylesheet" href="./CSS/style.css"  type="text/css" charset="UTF-8"/>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="JS/add.js"></script>
<title>添加书籍</title>
</head>
<body>
 <div id="container">
 <div id="header">
   <h1>添加书籍</h1>
 </div>

<div id="content">
   <form action="BookServlet?m=add" method="post">
   <table>
   <tr>
   <td>书名</td>
   <td><input type="text" name="bookName"/> </td>
   </tr>
   <tr>
   <td>作者</td>
   <td><input type="text" name="author" /> </td>
   </tr>
   <tr>
   <td>图书编号</td>
     <td><input type="text" name="bookid"/> </td>
     </tr>
   
   <tr class="cols2">
    <td colspan="2"> <button style="width:120px" class="submit" type="submit">添加</button> <button style="width:120px" class="reset" type="reset">重置</button>
    </td>
    </tr>
    <tr class="cols2">
    <td colspan="2" class="info">
    <%=request.getAttribute("msg")==null?"":request.getAttribute("msg") %></td>
   </tr>
   </table>
   </form>
</div>

<div id="footer">
</div>
</div>
</body>
</html>
