<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../include/dbcon.jsp" %>
<% 

String unq = request.getParameter("unq"); // 무엇에 대한 상세보기인가?를 나타내기 위해 unq를 받아오게함

String sql = "select unq, title,name,hit,rdate,content "; // select, from , where 사이에 띄어쓰기 해주기
		sql+="from board where unq='" +unq+ "'"; //불러온 unq where로 구분하는 데에 쓰기 
ResultSet rs=stmt.executeQuery(sql); //리턴을 위한 변수


String title ="";
String name ="";
int hit=0;
String rdate = "";
String content="";
		
if(rs.next()){
	unq  = rs.getString("unq");
	title = rs.getString ("title");
	name = rs.getString("name");
	hit=rs.getInt("hit");
	rdate = rs.getString("rdate");
	content=rs.getString("content");
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정화면</title>
</head>

<body>
<form name = "frm" method="post" action="boardModifySave.jsp">
<input type="hidden" name="unq" value="<%=unq%>"> <!-- 사용자에게만 보이지 않는 값 넘기기 -->
<table border = "1">
	<tr>
		<th>제목</th>
		<td><input type= "text" name = "title" value="<%=title %>"></td>
		
	</tr>
	<tr>
		<th>이름</th>
		<td><input type= "text" name = "name" value="<%=name %>"></td>
		
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea name = "content" ><%=content %></textarea></td>
		
	</tr>
</table>

<table>
	<tr>
		<td>
			<input type="submit" value="저장">
			<input type="reset" value="취소">
		</td>
	</tr>
</table>
</form>
</body>
</html>
