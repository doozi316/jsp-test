<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 출력</title>
</head>
<body>
<%String username=request.getParameter("username"); //넘어온 데이터를 받는 역할
String userbirth=request.getParameter("userbirth");
String usertell=request.getParameter("usertell");
String useraddr = request.getParameter("useraddr");
%>

이름 : <%=username%><br>
생년월일 : <%=userbirth %><br>
연락처 : <%=usertell %><br>
거주지 : <%=useraddr %><br>
</body>
</html>