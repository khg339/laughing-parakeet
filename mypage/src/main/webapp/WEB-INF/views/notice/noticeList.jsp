<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 목록</title>
</head>
<body>

<table border=1 width=350>
    <thead>
        <tr>
            <td>공지번호</td>
            <td>제목</td>
            <td>작성자</td>
            <td>내용</td>
            <td>작성일</td>
            <td>유형</td>
            
        </tr>
    </thead>
    <tbody id="tbody">

    </tbody>
    
</table>
</body>
</html>

 
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