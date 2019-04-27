<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>
주인이름 : <%=request.getParameter("name") %><br>
주인주소 : <%=request.getParameter("address") %>
<p>
<%
String[] values=request.getParameterValues("pet");
/*
values[0]="dog";
values[1]="cat";
values[2]="pig";

*/

%>




<%--
if(values !=null){
	for(int i = 0 ; i<values.length;i++){
		%>
		<%=values[i] %>
		<%
	}
}
--%>

</body>
</html>