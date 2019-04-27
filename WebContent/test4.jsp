<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Random, break</title>
</head>
<body>
<%
Random random = new Random();
for (int i =1; i<=20; i++){

	int number=random.nextInt(20)+1; //0부터 시작하기 때문에 +1 해주고 20이 되기 이전까지의 랜덤값생성 
	
%>
<%=i %>:<%=number %> <br>
<% 
if (number == 7) break; //랜덤값이 7이 발생하면 break
}%>
</body>
</html>