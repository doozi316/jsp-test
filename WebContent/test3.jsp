<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>누적합</title>
</head>
<body>
<%
int sum=0;
for(int i = 1; i<=10 ;i++){
sum = sum +i;
}%>
1부터 10까지의 합은 <%=sum %> 입니다.
<br>
<%
for(int i = 1;i<=10; i++){
	out.print(i+"");
	}
	%>
<br>
<table border="1">
	<tr>
	<% for(int i= 1;i<=10;i++){
		%>
		
		<td><img src="google.png" width = "50px" height="50px"></td>
		<%
    //if(i==5 || i==10 || i==15) { 
    if(i%5==0){
    %>
	

</tr><tr>

<%} %>
<%} %>
	</tr>

</table>

<table border="1">
	<tr>
		<td>1</td>
		<td>2</td>
		<td>3</td>
		<td>4</td>
		<td>5</td>
	</tr>
	
	<tr>
		<td>6</td>
		<td>7</td>
		<td>8</td>
		<td>9</td>
		<td>10</td>
	</tr>
	


</table>

</body>
</html>