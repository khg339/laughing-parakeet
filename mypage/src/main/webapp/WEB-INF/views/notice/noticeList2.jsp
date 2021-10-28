<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 목록</title>
</head>
<body>

<table border=1>
    
        <tr>
            <td>공지번호</td>
            <td>제목</td>
            <td>작성자</td>
            <td>내용</td>
            <td>작성일</td>
            <td>유형</td>
            
        </tr>
        <c:forEach items="${noticelist2}" var="noticelist2">
 			<tr>
 				
				  <td>${noticelist2.noticeno}</td>
				  <td>${noticelist2.title}</td>
				  <td>${noticelist2.name}</td>
				  <td>${noticelist2.content}</td>
				  <td>${noticelist2.datetime}</td>
				  <td>${noticelist2.n_type}</td>
 			</tr>
		</c:forEach>
   
</table>
</body>
</html>

 
 
 		

