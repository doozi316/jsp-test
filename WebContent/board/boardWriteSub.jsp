<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWriteSub.jsp 파일</title>
</head>
<body>

<%String title = request.getParameter("title");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String content = request.getParameter("content");

// replace(), replaceAll() : 치환 함수
// content를 여러줄 입력하면서 enter를 칠때 \n이 자동 입력됨. 이걸 <br>로 바꿔줘야 모두 데리고 옴

content=content.replaceAll("\n","<br>");
//content=content.replaceAll("old data","new data");

content=content.replaceAll("멍청","▩▩");
content=content.replaceAll("바보","▩▩");
%>


<form name="frm1" type="post" action ="boardWrite.jsp">

<table>

	<tr>
		<td>제목 : <%=title%> </td>

	</tr>
	
	<tr>
		<td>암호 : <%=pwd %></td>
	</tr>
	
	<tr>
		<td>이름 : <%=name %></td>

	</tr>
	
	<tr>
		<td>내용 : <%=content %></td>
	
	</tr>
	
	
	<tr>
		<td align = "center"><input type="submit" value="뒤로">
		<input type="button" value="뒤로1" onclick="history.back()">
		</td><!--onclick="history.back()"은 JS 명령. 뒤로가기이기 때문에 전송을 누르기 직전의 상황(작성된 폼)까지 뜬다.  -->
		<%-- <td align = "center" colspan="2"><a href="boardWrite.jsp"><input type="submit" value="뒤로"></a> --%>
		
	</tr>

</table>
</form>

</body>
</html>