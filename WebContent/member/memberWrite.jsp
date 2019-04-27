<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 화면(폼)</title>
</head>

<script>

function fn_action(){
	
	var f = document.frm;
	
	if(f.userid.value==""){
		alert("아이디를 입력해주세요.");
		return false;
	}
	if(f.userid.value.length < 4 ||
			f.userid.value.length > 12){
		alert("아이디는 4~12자리로 입력해주세요.");
		return false;
	}
	if(f.userpwd.value==""){
		alert("패스워드를 입력해주세요.");
		return false;
	}
	f.submit();
	
}

</script>


<body>
<form name="frm" method="post" action="memberWriteSub.jsp">
<table border="1">

	<colgroup>
		<col width="20%"/>
		<col width="*"/>
	</colgroup>
	<tr>
		<td><font color="red">*</font>아이디</td>
		<td><input type="text" name="userid">(4~12자리)</td>
	</tr>
	<tr>
		<td><font color="red">*</font>패스워드</td>
		<td><input type="password" name="userpwd"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="username"></td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td>
			<input type="text" name="birthday">
			
		
		
		
		
		
		
			<%-- <select name="birth_y">
			<%for(int i = 1940; i<=2010; i++){%>
				<option value="<%=i%>"><%=i%></option>
				<%} %>
			</select> 년
			
			<select name="birth_m">
			<%for(int i = 1;i<=12;i++){ %>
				<option value="<%=i%>"><%=i%></option>
				<%} %>
			</select> 월
			<select name="birth_d">
			<%for(int i = 1;i<=31;i++){ %>
				<option value="<%=i%>"><%=i%></option>
				<%} %>
			</select> 일 --%>
		</td>
	</tr>
	<tr>
		<td>성별</td>
		<td><input type="radio" name="gender" value="F">여자
		<input type="radio" name="gender" value="M">남자</td>
	</tr><%-- name 이 같으면 둘 중 하나만 선택할 수 있고 name 이 다르면 둘 다 선택가능한 상황이 연출됨! --%>
	<tr>
		<td>핸드폰</td>
		<td>
			<select name="hp1">
				<option value="010">010</option> <%--value는 눈에 보이는 값이 아님! 값을 넘길 경우 value 필요 --%>
				<option value="011">011</option>
			</select>
			&nbsp;-&nbsp;
			<input type="text" name="hp2">
			&nbsp;-&nbsp;
			<input type="text" name="hp3">
		</td>
	</tr>
	<tr>
		<td>주소</td>
		<td>
			<input type="text" name="postnum"><br>
			<input type="text" name="addr">
		</td>
	</tr>
	<tr>
		<td align="center" colspan="2"><input type="button" value="저장" onclick="fn_action()"></td>
	</tr>





</table>
</form>


</body>
</html>