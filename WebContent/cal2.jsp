<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ page import = "java.util.Calendar" %>
    
    <%
    Calendar cal = Calendar.getInstance(); //Calendar 클래스를 사용하기 위한 인스턴스 작업 - 메모리에 올림
   /*  int y = cal.get(Calendar.YEAR); //출력 년도
    int m = cal.get(Calendar.MONTH); // 출력 개월(출력 시 +1 필요) */
    
 
	String year= request.getParameter("year");
	String month = request.getParameter("month");
	
	//입력한 문자 타입을 숫자타입으로 바꿔주기! 왜? 밑의 set(y,m,1) 때문에. set은 괄호 안의 모든 타입이 숫자여야함

			int y=0,m=0;
		
	if(year !=null && month!=null && !year.equals("") && !month.equals("")){
		 y=Integer.parseInt(year); 
		 m=Integer.parseInt(month)-1;
	} else {
		 y = cal.get(Calendar.YEAR);
		 m = cal.get(Calendar.MONTH)-1; 
	}
	
    cal.set(y,m,1); //출력 월의 1일날로 세팅(1일날의 요일을 얻기 위해) month 는 0부터 시작함 개발자가 그렇게 설정해놓음
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

<script>

function fn_pop(d){ //매개변수
	var date = "<%=y%>-<%=m+1%>-"+d;
	var url = "sch.jsp?date="+date; // get 전송 : 넘겨줄 주소 뒤에 꼬랑지처럼 데이터 붙여주기(물음표) like post 전송 
	
	window.open(url,"일정 관리","width=300, height=400"); //popup(어떤 존재를 팝업으로 열 것인가, 별칭, 넓이, 높이) 
	
	
	
}



</script>






<body>
	<form name="frm" method="post" action="cal2.jsp">
	 
	

	<table align="center">
	<tr><td>
	<input type="text" name="year" value = "<%=y %>" style="width:50px;" >년<!--value는 초기값  -->
	<input type="text" name="month" value ="<%=m+1 %>" style="width:70px;">월
	<input type="submit" value="확인" >
	</td></tr>
	</table>
	<br>
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
			out.print("<td align=center><font color = blue>"+i+"</font></td>   \n");
			}//토요일
			else if(number%7==1){
			out.print("<td align = center><font color = red>"+i+"</font></td>   \n");
			}//일요일
			else{
			out.print("<td align = center onclick=\"fn_pop('"+i+"')\">"+i+"</td>   \n"); //i 같은 애들을 아규먼트라고함
			/* 
			
			JSP 에서 ""은 open 과 close의 뜻
			그런데 ""를 문자로 넣고 싶다면 앞에 \를 붙여서 \" \"로 표기
			
			
			
			*/
			}
			
			
			if(number%7==0){ //number는 칸의 주소? 번호? 같은 의미 따라서 날짜 i에 나누기 7을 하면 반드시 일요일부터 출력돼야 해서 대신 number(칸을 기준)를 써줌
				out.print("</tr>    \n    <tr>");
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




</form>
</body>
</html>