<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file ="../include/dbcon.jsp" %>
 
 
 <%
 String content = request.getParameter("content");
 String sql = "insert into daehwa (content) "; 
		sql+= "  values('"+content+"')";
 
 stmt.executeUpdate(sql); //저장하는 건 Update 
 %>
 
 <script>
 location.href="input.jsp";
 
 </script>
 
 