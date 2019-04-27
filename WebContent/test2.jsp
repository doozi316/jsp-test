<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기초</title>
</head>
<body>
<%="test1" %>
<br>
<%String a = "test2"; %>
<%=a %>
<br>
<%out.print("test3"); %>
<br>
<%
int eng = 100;
int kor = 90;
%>

<%=eng %>
<br>
<%=kor %>
<br>
합계 : <%=eng+kor %>

</body>
</html>