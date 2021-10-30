<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>read</title> 
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
 <script>var result = "${msg}"; 
     if (result == "addSuccess") { 
    		alert("해당 글이 즐겨찾기에 추가되었습니다."); }  </script>
</head>
<body>
<table border ="1">
	<tr>
		<th>제목</th>
		<td>${noticeDTO.title}</td> 
		<form role="form" method="post"> 
        <input type="hidden" name="noticeno" value="${noticeDTO.noticeno} "> 
        </form>
        <button type="submit" id="addBtn">즐겨찾기</button>
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
        <script> 
        $(document).ready(function () { 
        	
        	var formObj = $("form[role='form']"); 
        	console.log(formObj); 
        	
        	$("#addBtn").on("click", function () { 
        		formObj.attr("action", "${path}/mypage/notice/addstar"); ; 
        		formObj.submit(); 
        	});
        	});

         </script>
</body>
</html>