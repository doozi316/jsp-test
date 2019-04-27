<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보등록</title>
</head>
<body>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ 정보 등록 ]<br><br>


<%
String name = request.getParameter("name");
String phone = request.getParameter("phone");

%>


<%
if(name!=null && phone!=null
&&name!="" && phone!=""){%>
	<%=name %>의 전번은 <%=phone %>입니다.
<%}

%>

<br><br>
<!-- <form name = "frm" method="post" action="selfSubmit.jsp">  --> 
<form name = "frm" method="post" action="<%= request.getRequestURI()%>"> <%-- request.getRequestURI : 파일 이름을 return 해 주는 메소드 --%>
이름 <input type="text" name = "name"> &nbsp;&nbsp;
전번 <input type="text" name = "phone">
<input type="submit" value="전송">
</form>



</body>
</html>