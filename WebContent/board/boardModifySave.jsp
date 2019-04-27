<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file ="../include/dbcon.jsp" %>
   <% 
String title = request.getParameter("title");
String unq = request.getParameter("unq");
String name = request.getParameter("name");
String content = request.getParameter("content");

/* UPDATE  board  SET  
		title = 'asdasdfsd',
		name  = '홍길동',
		content = 'asdfasdf'
	WHERE
		unq = '12';
*/
String sql = " UPDATE  board  SET ";
       sql+= " 		title = '" +title+ "',  ";
       sql+= " 		name = '" +name+ "',  ";
       sql+= " 		content = '"+content+"'  ";
       sql+= " WHERE  unq= '"+unq+"'  ";
 
// String sql = "DELETE FROM board  WHERE unq='12' ";   

int rs = stmt.executeUpdate(sql);  // SQL 적용 메소드
%>
<script>
alert("저장완료");
location.href = "boardList.jsp";
</script>









