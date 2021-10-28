<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학부소개</title>
</head>
<body>

<table border=1>
    
        <tr>
            <td>학부</td>
            <td>학부소개</td>
            <td>학과장님</td>
            <td>학부역사</td>
            <td>학부목표</td>
            <td>학부시설</td>
            
        </tr>
        <c:forEach items="${majorlist}" var="majorlist">
 			<tr>
 				
				  <td>${majorlist.major}</td>
				  <td>${majorlist.intro}</td>
				  <td>${majorlist.represent_professor}</td>
				  <td>${majorlist.history}</td>
				  <td>${majorlist.goal}</td>
				  <td>${majorlist.facility}</td>
 			</tr>
		</c:forEach>
   
</table>
</body>
</html>

 
 
 		

