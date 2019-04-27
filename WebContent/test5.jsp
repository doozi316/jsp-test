<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합 구하기</title>
</head>
<body>
<%
String str1="첫 번째 문장. first string";
String str2="두 번째 문장. First string";
%>
str1.length()=<%=str1.length()%><br>
str1.charAt(5)=<%=str1.charAt(5)%><br>
str1.indexOf("st")=<%=str1.indexOf("st") %><br>
str1.indexOf('s')=<%=str1.indexOf('s') %><br>
str1.substring(5)=<%=str1.substring(5) %><br>
str1.substring(5,10)=<%=str1.substring(5,10) %><br>
str1.equals(str2)=<%=str1.equals(str2) %><br>
str1.compareTo(str2)=<%=str1.compareTo(str2) %><br>


<% 
/*
length():문자열의 길이 return
charAt(인덱스번호):번호에 위치한 값 return
indexOf("문자열"):찾기기능; 인덱스번호 return
substring(시작번호(포함O), 끝번호(포함X)):문자열의 범위의 값 return
equals("문자열"):비교결과 return (true, false)
compareTo("문자열"):비교결과 return()
		*/
		%>
		
		
	<%	
	String address = "  123456 대구시 수성구";
	/*
	1. 길이
	2. 우편번호 출력
	3. 주소만 출력
	4. 대구라는 단어의 존재 유무 -> 존재함/존재하지 않음
	*/	
	 %>
	 
	 길이 = <%=address.length()%> <br>
	 우편번호 출력 = <%=address.substring(2,8)%><br>
	 주소만 출력 = <%=address.substring(9,16)%><br>
	 대구라는 단어의 존재 유무 = <%
	 int result = address.indexOf("대구");
	 if(result >  -1){
		 out.print("존재함");
	 }else{
		 out.print("존재하지 않음");
	 }
	 
	 String address2 = address.trim(); //앞뒤 공백을 제거해주는 메소드
	 
	 
	 %><br>
	 <%=address.length()%><br>
	 <%=address2.length()%><br>
	 
	<% 
	String birthday = "20100115 20011225 19981102";
	String[] array = birthday.split(" "); // 공백을 기준으로 나눈 후 배열로 처리 return			
	%>
	
	<%=array[0]%><br>
	<%=array[1]%><br>
	<%=array[2]%><br><br>
	
	
	<% for (int i = 0; i<array.length;i++){
		out.print(array[i]+"<br>");
	}
	%>
		
</body>
</html>