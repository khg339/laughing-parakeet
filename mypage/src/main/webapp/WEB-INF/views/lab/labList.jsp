<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연구실 소개</title>
</head>
<body>
<table border=1>
    
        <tr>
            <td>연구실</td>
            <td>연구실 담당교수님</td>
            <td>연구실소개</td>
            <td>연구실 대표 학생</td>
            <td>연구실 주소</td>
            <td>연구실 포인트</td>
            
        </tr>
        <c:forEach items="${lablist}" var="lablist">
 			<tr>
 				
				  <td>${lablist.lab}</td>
				  <td>${lablist.professor}</td>
				  <td>${lablist.intro}</td>
				  <td>${lablist.represent_student}</td>
				  <td>${lablist.address}</td>
				  <td>${lablist.point}</td>
 			</tr>
		</c:forEach>
		</table>
		<form action="${path}/mypage/lab/apply">
<button>랩실 신청</button>
</form>
		
<script>
var msg="${msg}";
if(msg== "APPLYED"){
   alert("랩실 신청이 완료되었습니다.");
}
</script>

</body>
</html>