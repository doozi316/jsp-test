<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정 관리</title>
</head>
<script>
function fn_action(){
	
	
}

</script>
<body>
<%String date = request.getParameter("date"); %>
<form name="frm" method="post" action="schSub.jsp">
<input type="hidden" name="date" value="<%=date %>"> <!-- 사용자가 모르게 값을 넘기기 위해서 hidden 타입 사용 -->
<table style="width:98%;">
	<tr>
		<td><%=date %></td>
	</tr>
	<tr>
		<td>
			<textarea name = "content"  cols="70" rows="5" style="width:99%; height:100px;"></textarea>
		
		</td>
	</tr>
	<tr>
		<td align="center">
			<input type="submit" value="저장" onclick="fn_action()">
			<input type="button" value="닫기" onclick="self.close()">
		</td>
	</tr>

	


</table>
</form>

</body>
</html>