<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애완동물 정보</title>
</head>
<body>
<form name = "frm" method="post" action="petWriteSub.jsp">
주인이름 :<input type="text" name = "name"><br>
주인주소 :<input type="text" name = "address"><br>
애완동물 종류 :
<input type="checkbox" name="pet" value= "강아지">강아지
<input type="checkbox" name="pet" value= "고양이">고양이
<input type="checkbox" name="pet" value= "돼지">돼지
<br>
<input type="submit" value="전송">
</form>
</body>
</html>