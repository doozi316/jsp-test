<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="../include/dbcon.jsp" %>
    <%
String unq = request.getParameter("unq"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function fn_clear(){
	var url = "clear.jsp";
	location.href=url;
	
}
</script>
<body>
<form name="frm" method="post" action="inputSave.jsp">
<input type="text" name="content">
<input type="submit" value="저장">
<input type="button" value="지우기" onClick="fn_clear()">
</form>


</body>
</html>