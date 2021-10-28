<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>read</title>
</head>
<body>
<table border ="1">
	<tr>
		<th>제목</th>
		<td>${noticeDTO.title}</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>${noticeDTO.content}</td>
	</tr>
	<tr>
		<th>작성자</th>
		<td>${noticeDTO.name} </td>
	</tr>
	<tr>
		<td>작성일</td>
		<td>${noticeDTO.datetime} </td>
	</tr>
	
</table>
<div>
	<a href="/mypage/notice/noticeList">목록</a>
</div>

</body>
</html>