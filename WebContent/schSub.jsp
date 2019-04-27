<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정 출력 화면</title>
</head>
<body>

<% String date = request.getParameter("date");
String content=request.getParameter("content");

content = content.replaceAll("\n","<br>");

content=content.replaceAll("멍청","▩▩");
content=content.replaceAll("바보","▩▩");

%>


<form name= "frm1" type="post" >

<table>


	<tr>
		<td><%=date %></td>
	</tr>
	
	<tr>
		<td><%=content %></td>
	</tr>






</table>







</form>
</body>
</html>