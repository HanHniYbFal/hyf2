<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="http://localhost:8080/ph/ " />
<link rel="stylesheet" href="./CSS/style.css"  type="text/css" charset="UTF-8"/>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="JS/delete.js"></script>
<title>删除书籍</title>
</head>
<body>
 <div id="container">
 <div id="header">
   <h1>删除书籍</h1>
 </div>

<div id="content">
   <form action="BookServlet?m=delete" method="post">
   <table>
   <tr>
   <td>图书编号</td>
   <td><input type="text" name="bookid"/> </td>
   </tr>
  <tr class="cols2">
    <td colspan="2"> <input class="submit" type="submit" value="删除"/> <input type="reset" value="重置"/>
    </td>
    </tr>
    <tr class="cols2">
   <td colspan="2" class="info"><%=request.getAttribute("msg")==null?"":request.getAttribute("msg") %>
   </td>
  </tr>
   </table>
   </form>
</div>
<div id="footer">
</div>
</div>
</body>
</html>
