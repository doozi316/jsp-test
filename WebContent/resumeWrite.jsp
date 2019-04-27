<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 입력</title>
</head>

<script> //화면 제어, 에러 체크를 위해 자주 사용됨
 	function fn_action() {
		// 현재 창(document).폼이름(frm).입력상자 중 username이라는 입력상자(username).value
		if(document.frm.username.value=="") {
			alert("이름을 입력해주세요."); //경고창
			return false ; //false 생략가능 (종료)
		}
		
		document.frm.submit(); //error(공백)가 아닌 경우 실행 
		
	}

</script> 


<body>
<!-- get : 입력한 것이 주소에 보임 / post (shift+ctrl+/) --> 
<form name="frm" method="post" action="resumeWriteSub.jsp">
이름 : &nbsp; <input type="text" name="username"><br>
생년월일 : &nbsp; <input type="text" name="userbirth"><br>
연락처 : &nbsp; <input type="text" name="usertell"><br>
거주지 : &nbsp; <input type="text" name="useraddr"><br>
<input type="button" value="전송" onclick="fn_action()"> <%--눌렀을 때 함수 실행되도록 onclick --%>
</body>
</html>