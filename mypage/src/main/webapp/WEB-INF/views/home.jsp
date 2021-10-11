<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
   <title>Home</title>
</head>
<body>
<h1>
   Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<p><a href ="/mypage/user/login">메인</a></p>
<p><a href ="/mypage/user/register">회원가입</a></p>
<p><a href ="/mypage/notice/noticeList">공지 목록</a></p>
<p><a href ="/mypage/lab/labMain">랩실</a></p>



</body>
</html>