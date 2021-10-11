<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 목록</title>
</head>
<body>

<table>
	 <thead>
		  <tr>
			   <th>공지번호</th>
			   <th>제목</th>
			   <th>작성자</th>
			   <th>내용</th>
			   <th>작성일</th>
			   <th>공지유형</th>
		  </tr>
	 </thead>
 
 <tbody>
 		<c:forEach items="${noticelist}" var="noticelist">
 			<tr>
				  <td>${noticelist.noticeno}</td>
				  <td>${noticelist.title}</td>
				  <td>${noticelist.name}</td>
				  <td>${noticelist.content}</td>
				  <td>${noticelist.datetime}</td>
				  <td>${noticelist.n_type}</td>
 			</tr>
		</c:forEach>

</body>
</html>