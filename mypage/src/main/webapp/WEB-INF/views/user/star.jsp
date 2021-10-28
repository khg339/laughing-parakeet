<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>MYPAGE > 즐겨찾기목록</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Style_table.css">
        <style>
            #btn{width:50px; height:30px; background-color: rgb(245, 236, 235); color:black; font-size:12px;
                border:none; border-radius:10px; margin-top: 20px; margin-left: 930px;}
        </style>
     <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
        <div id="page">
            <div class="header">
                <div class="logo">
                    <a href="Main.html"><img src="${pageContext.request.contextPath}/images/hsLogo.png" alt="한신대학교 컴퓨터공학부"></a>
                </div>
                <div class="menubar">
                    <ul class="upper_nav">
                        <li><a href="/mypage/">HOME</a></li>
                        <li><a href="Sitemap.html">SITEMAP</a></li>
                        <li><a href="/mypage/notice/my">MYPAGE</a></li>
                    </ul>

                    <ul class="nav">
                        <li><a href="/mypage/major/majorList">학부소개</a></li>
                        <li><a href="/mypage/notice/noticeList">공지사항</a></li>
                        <li><a href="/mypage/notice/noticeList2">교수님공지</a></li>
                        <li><a href="/mypage/lab/labList">LAB</a></li>
                        <li><a href="/mypage/thesis/thesisList">졸업논문</a></li>
                    </ul>
                </div>
            </div>
            <div class="content">
                <div id="nav_box">
                    <table id="nav_table" cellspacing="0" cellpadding="10">
                        <caption><b>MYPAGE</b></caption>
                        <tr><td><a href="my">MY 정보</a></td></tr>
                        <tr><td><a href="star">즐겨찾기 목록</a></td></tr>
                    </table>
                </div>
                <div id="content_box">
                    <div><h2>MYPAGE</h2><br><br>
                        <img src="${pageContext.request.contextPath}/images/tri_icon.png" class="tri_icon"><b>즐겨찾기 목록</b><br><br><br>
                       
<table border="0">
   <tbody> <tr> 
   <th>분류</th>
   <th>제목</th>
   <th>작성자</th>
   <th>작성일</th>
   <th>취소</th>
   </tr> 
   <c:forEach items="${stars}" var="star"> 
       <tr> 
       <td>${star.n_type}</td> 
       <td>${star.title}</td>
       <td>${star.name }</td>
       <td>${star.datetime}</td> 
       <td> 
       <form role="form" method="post"> 
       <input type="checkbox" id="del_n_no" name="noticeno" value="${star.noticeno}"> </form>
       
       </td>
       </tr> 
   </c:forEach>
   </tbody> 
  </table> 
  <button type="submit" id="btn" class="btn btn-danger delBtn">취소</button>
       </div>
                </div>
            </div>
<script>
$(document).ready(function () { 
var formObj = $("form[role='form']"); 

console.log(formObj); 


 $(".delBtn").on("click", function () { 
 formObj.attr("action", "${path}/mypage/user/remove"); 
 formObj.submit(); 
 });
});
</script>
            
            <footer>
                <ul>
                    <li><strong>관련사이트</strong></li>
                    <li><a href="http://www.hs.ac.kr/intro.html">한신대학교</a></li>
                    <li><a href="http://ent.hs.ac.kr/ipsi/main/main.asp">입학홍보처</a></li>
                    <li><a href="http://hslib.hs.ac.kr/">도서관</a></li>
                    <li><a href="https://sso2.hs.ac.kr/login.do?request_redirect_uri=https://portal.hs.ac.kr/">포털</a></li>
                    <li><a href="https://sso2.hs.ac.kr/">LMS</a></li>
                    <li><a href="http://www.hs.ac.kr/kor/4837/subview.do">학사일정</a></li>
                    <li><a href="https://cert.hs.ac.kr/icerti/index_internet.jsp">인터넷증명발급</a></li>
                    <li><a href="http://sugang.hs.ac.kr/login">수강신청</a></li>
                    <li><a href="http://ipp.hs.ac.kr/index.do">IPP센터</a></li>
            </footer>
        </div>
    </body>
</html>