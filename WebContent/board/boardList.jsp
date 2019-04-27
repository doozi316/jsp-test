<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file ="../include/dbcon.jsp" %> <!-- db연결 소스를 jsp파일로 만들기 (db 연결 소스가 상위에 항상 존재하기 때문에. 귀찮)-->
<%
String sqlTotal = "select count(*) as total from board "; //번호 역순으로 출력하귀 위해 총갯수 알아내기
ResultSet rsTotal=stmt.executeQuery(sqlTotal); //리턴을 위한 변수

	int total=0;
if(rsTotal.next()){
	total = rsTotal.getInt("total");
}
int number = total;

String sql = "select unq, title,name,hit,";
		sql+="substring(rdate,1,10) as rdate from board order by unq desc";
	
ResultSet rs=stmt.executeQuery(sql); //리턴을 위한 변수
%>
<!DOCTYPE html>
<html>
<head>
<meta http-e quiv = "Content-Type" content = "text/html; charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align ="center" style="width:800px;background:yellow;">
Total : <%=total %> 
</div>


<table border="1" style="width:800px" align="center">
<colgroup>
	<col width="10%"/>
	<col width="50%"/>
	<col width="15%"/>
	<col width="10%"/>
	<col width="15%"/>
</colgroup>
<tr bgcolor="gray" >
	<th>번호</th>
	<th>제목</th>
	<th>조회수</th>
	<th>이름</th>
	<th>등록일</th>
	
</tr>
<%

while(rs.next()){//next():행의 존재 유무 검색. 참이면 rs.getString 출력
	String unq = rs.getString("unq");
	String title = rs.getString("title");
	String name = rs.getString("name");
	String rdate = rs.getString("rdate");
	/* rdate=rdate.substring(0,10); */
	String hit = rs.getString("hit");

%>
<%-- <%=rs.getString("unq") %>
<%=rs.getString("title") %>
<%=rs.getString("name") %> --%>


<tr align ="center">
	<td> 
	<%=number %>
	 </td>
	<td><a href="boardDetail.jsp?unq=<%=unq%>"><%=title %></a></td> <!-- 인자값을 같이 전달해주기 위해 ? 쓰기. unq 변수에 <%=unq%>라는 변수값 넣는 것임 -->
	<td><%=hit %></td>
	<td><%=name %></td>
	<td><%=rdate %></td>
	<%-- <td><%=rdate.substring(0,10) %></td> --%>
	<%-- <td><%=rdate.left(10) %></td> --%>
</tr>
<%
number--;

} %>
</table>
</body>
</html>