<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../include/dbcon.jsp" %>
<%
	String sql = "select unq, content from daehwa order by unq desc";
	ResultSet rs = stmt.executeQuery(sql); //select 한 데이터 메모리에 올리기 (출력하기 위해)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>

<%
while(rs.next()){
	String content=rs.getString("content");
	out.print(content + "<br>");
}
%>


</body>
</html>
<!-- 여기까지 쓰면 새로고침해야 채팅이 업데이트됨. 번거롭기 때문에 2초마다 업뎃시키는 소스 추가(아래에) -->
<meta http-equiv='refresh' content='2; url=read.jsp'>
<!-- url은 2초 후에 어디로 갈것인가를 나타냄. 즉, 2초마다 자기자신을 호출함 -->
