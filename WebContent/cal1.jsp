<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ page import = "java.util.Calendar" %>
    
    <%
    Calendar cal = Calendar.getInstance(); //Calendar 클래스를 사용하기 위한 인스턴스 작업 - 메모리에 올림
    int y = cal.get(Calendar.YEAR); //출력 년도
    int m = cal.get(Calendar.MONTH); // 출력 개월(출력 시 +1 필요)
    
    cal.set(y,m,1); //출력 월의 1일날로 세팅(1일날의 요일을 얻기 위해)
    //ex) 2019년, 3월, 1일의 요일을 가져오기 위해 날짜를 알아내서 세팅!
    int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK); //1일날의 요일 (숫자로 받아옴) -> 일:1, 월:2, ... 토:7
    int lastDay = cal.getActualMaximum(Calendar.DATE); //마지막 날짜를 가지고 오는 메소드
    %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력</title>
</head>
<body>
	
	<table border= "1" width = "200" align = "center">
	<tr align = "center">
		<th><font color="red">일</font></th> <!-- 글자의 굵은 표시, 중앙정렬  -->
		<th>월</th>
		<th>화</th>
		<th>수</th>
		<th>목</th>
		<th>금</th>
		<th><font color="blue">토</font></th>	
	</tr>
	<tr align = "center">
	<%
	int number = 1;
		for(int i=1;i<dayOfWeek;i++){
			out.print("<td>&nbsp;</td>");
			number++;
		}
		
		for(int i =1;i<=lastDay;i++){
		
		
			if(number%7==0){
			out.print("<td align=center><font color = blue>"+i+"</font></td>");
			}//토요일
			else if(number%7==1){
			out.print("<td align = center><font color = red>"+i+"</font></td>");
			}//일요일
			else{
				out.print("<td align = center>"+i+"</td>");
			}
			
			
			if(number%7==0){ //number는 칸의 주소? 번호? 같은 의미 따라서 날짜 i에 나누기 7을 하면 반드시 일요일부터 출력돼야 해서 대신 number(칸을 기준)를 써줌
				out.print("</tr><tr>");
			}
			number++; // 1~31
		}
	
	while(number<= 50){
		out.print("<td>&nbsp;</td>");
		
		if(number%7==0){
			break; //while의 중단이라고 보면 됨. if의 중단이 아님
		}
		number++;
	}
	
	%>
	</tr>
	
	</table>





</body>
</html>