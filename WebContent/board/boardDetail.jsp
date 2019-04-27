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
<title>상세화면</title>
</head>
<script>
function fn_modify(){
	var url = "boardModify.jsp?unq=<%=unq%>";
	location.href=url; //페이지 이동
	
}
function fn_delete(){
	var url = "boardDelete.jsp?unq=<%=unq%>";
	location.href=url; //페이지 이동
	
}
</script>
<body>
<table border = "1">
	<tr>
		<th>제목</th>
		<td><%=title %></td>
		
	</tr>
	<tr>
		<th>이름</th>
		<td><%=name %></td>
		
	</tr>
	<tr>
		<th>등록일</th>
		<td><%=rdate %></td>
		
	</tr>
	<tr>
		<th>내용</th>
		<td><%=content %></td>
		
	</tr>
</table>

<table>
	<tr>
		<td>
			<input type="button" value="수정" onClick="fn_modify()">
			<input type="button" value="삭제" onClick="fn_delete()">
		</td>
	</tr>
</table>
</body>
</html>