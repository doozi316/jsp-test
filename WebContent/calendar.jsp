<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar 클래스</title>
</head>
<body>
<%Calendar cal = Calendar.getInstance(); //인스턴스화(객체화)
%> 
오늘은
<%=cal.get(Calendar.YEAR) %>년
<%=cal.get(Calendar.MONTH)+1 //MONTH만 0부터 시작하도록 개발되어서 +1해줌
%>월 
<%=cal.get(Calendar.DATE)%>일
입니다.
</body>
</html>