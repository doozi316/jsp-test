<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 출력 화면</title>
</head>
<body>



<%
String userid =request.getParameter("userid");
String userpwd =request.getParameter("userpwd");
String gender = request.getParameter("gender");
/*데이터 유효성 체크
1. 주요 데이터의 null 값
 (userid, userpwd, gender)
1.1 앞뒤 공백 제거 (trim() 사용)
//2. 아이디의 첫번째 값이 영문
3. 아이디의 길이가 4자~12자
4. 
*/

if(userid==null){
	out.print("<script>alert('아이디를 체크해주세요'); history.back(); </script>");
	return; //jsp
}

if(userpwd==null){
	out.print("<script>alert('패스워드를 체크해주세요'); history.back(); </script>");
	return; //jsp
}


if(gender==null){
	out.print("<script>alert('성별을 체크해주세요'); history.back(); </script>");
	return; //jsp
}

userid = userid.trim();
userpwd = userpwd.trim(); //앞뒤 공백 제거

if(userid.length() < 4 ||
		userid.length() > 12){
	out.print("<script>alert('아이디는 4~12자리로 입력해주세요.'); history.back(); </script>");
	return ;
}



String username =request.getParameter("username");

/*12/25/1998->1998/12/25 
1. substring()
2. split()

*/
String birthday=request.getParameter("birthday");
String[] array = birthday.split("/");
birthday = array[2] +"/"+array[0]+"/"+array[1];


/*

String m = birthday.substring(0,2);
String d = birthday.substring(3,5);
String y = birthday.substring(6,10);
birthday = y +"/" +m+"/"+d;

*/







/* String birth_y =request.getParameter("birth_y");
String birth_m =request.getParameter("birth_m");
String birth_d =request.getParameter("birth_d"); */

String hp1 = request.getParameter("hp1");
String hp2 = request.getParameter("hp2");
String hp3 = request.getParameter("hp3");
String postnum = request.getParameter("postnum");
String addr = request.getParameter("addr");
%>

<table>
	<tr>
		<td>아이디 : <%=userid%></td>
	</tr>
	
	<tr>
		<td>패스워드 : <%=userpwd%></td>
	</tr>
	
	<tr>
		<td>이름 : <%=username%></td>
	</tr>
	
	<tr>
		<td>생년월일 : <%=birthday %>
		
	
		<%-- <%=birth_y%> - <%=birth_m%> - <%=birth_d%> --%></td>
	</tr>
		
	<tr>
		<td>성별 :
		<%
		 if(gender.equals("M"))
		 gender="남자";
		 else
		 gender="여자";
		  %>
		 <%=gender %>
		 </td>
		
		
	</tr>
	
	<tr>
		<td>핸드폰 : <%=hp1%> - <%=hp2%> - <%=hp3%></td>
	</tr>
	
	<tr>
		<td>주소 : [<%=postnum%>] <%=addr%></td>
	</tr>
	
	<tr>
		<td><input type="button" value="뒤로" onclick=history.back();></td>
	</tr>
</table>


</body>
</html>