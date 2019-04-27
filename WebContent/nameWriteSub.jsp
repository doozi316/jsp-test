<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출력화면</title>
</head>
<body>

<%String username=request.getParameter("username"); //넘어온 데이터를 받는 역할
String useraddr = request.getParameter("useraddr");
String postnum = useraddr.substring(0,6);
//String addr= useraddr.substring(7);
String addr= useraddr.substring(7,useraddr.length());
%>
이름 :&nbsp; <%=username %><br>
<%-- 주소 :&nbsp; <%=useraddr %>--%>
우편번호 : <%=postnum %><br>
주소 : <%=addr %>
</form>
</body>
</html>