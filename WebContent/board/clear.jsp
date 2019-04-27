<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../include/dbcon.jsp" %>
<% 

String sql = "delete from daehwa ";
stmt.executeUpdate(sql);%>

<script>
location.href="input.jsp"
</script>
