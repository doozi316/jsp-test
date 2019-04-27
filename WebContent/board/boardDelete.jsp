<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="../include/dbcon.jsp" %>
    <% 
String title = request.getParameter("title");
String unq = request.getParameter("unq");
String name = request.getParameter("name");
String content = request.getParameter("content");

/*
delete from board
where unq = ''
*/
		
String sql = "delete from board ";
	sql+="where unq = '"+unq+"'";

	
int rs = stmt.executeUpdate(sql); //board 테이블 실행 변수, 저장 개수가 넘어감
%>
<script>

alert("삭제완료");
location.href="boardList.jsp";

</script>