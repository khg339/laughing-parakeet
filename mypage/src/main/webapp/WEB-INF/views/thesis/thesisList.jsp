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
            <td>논문번호</td>
            <td>작성자학번</td>
            <td>논문제목</td>
            <td>작성일</td>
            <td>내용</td>
            
        </tr>
        <c:forEach items="${thesislist}" var="thesislist">
 			<tr>
 				
				  <td>${thesislist.thesisno}</td>
				  <td>${thesislist.memberno}</td>
				  <td>${thesislist.title}</td>
				  <td>${thesislist.datetime}</td>
				  <td>${thesislist.content}</td>
 			</tr>
		</c:forEach>
   
</table>
</body>
</html>

 
 
 		

