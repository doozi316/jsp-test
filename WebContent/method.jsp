<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
	public int multi(int a, int b){ //매개변수
	int c = a*b;
	return c;
}
%>

<html>
<head>
<meta charset="UTF-8">
<title>선언부를 사용한 두 정수값의 곱</title>
</head>
<body>
10*25=<%=multi(10,25) %> <!-- 아규먼트 -->
</body>
</html>