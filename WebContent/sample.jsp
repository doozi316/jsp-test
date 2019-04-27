<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>게시글 작성</title>

</head>

<body>

	<table>

		<tr>

			<th bgcolor="gray">제목</th>

			<td>

 <input type="text" name="title" style="width:98%">

			</td>

		</tr>

		<tr>

			<th bgcolor="gray">암호</th>

			<td>

 <input type="password" name="pwd" style="width:98%">

			</td>

		</tr>

		<tr>

			<th bgcolor="gray">이름</th>

			<td>

 <input type="text" name="name" style="width:98%">

			</td>

		</tr>

		<tr>

			<th bgcolor="gray">내용</th>

			<td>

 <textarea name="content" style="width:98%"></texttarea>

			</td>

		</tr>

		<tr>

			<td>

 <input type="submit" value="전송">

			</td>

		</tr>

	</table>

</body>