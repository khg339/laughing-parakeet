<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>공지사항 > 학부공지사항</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Style_table.css">
        <style>#content_box table{width:750px;text-align:center;}
        #lab_box{display:flex;justify-content:center;align-items:center;margin-right: 20px;}
        #content_box2{display: block;}</style>
    </head>
    <body>
        <div id="page">
            <div class="header">
                <div class="logo">
                    <a href="/mypage/lab/home"><img src="${pageContext.request.contextPath}/images/hsLogo.png" alt="한신대학교 컴퓨터공학부"></a>
                </div>
                <div class="menubar">
                     <ul class="upper_nav">
                        <li><a href="/mypage/lab/home">HOME</a></li>
                        <li><a href="Sitemap.html">SITEMAP</a></li>
                        <li><a href="/mypage/user/my">MYPAGE</a></li>
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
                        <caption><b>LAB</b></caption>
                        <tr><td><a href="/mypage/lab/labList">LAB 소개</a></td></tr>
                        <tr><td><a href="/mypage/lab/labrank">LAB 순위</a></td></tr>
                        <%-- <c:forEach items="${lablist}" var="lablist">
                        
                        <tr><td><a href="Lab_AI.html">${lablist.lab} </a></td></tr>
                        
                        
                        </c:forEach> --%>
                        <tr><td><a href="${path}/mypage/lab/apply">LAB 신청</a></td></tr>
                    </table>
                </div>
            <div id="content_box">
                    <div><h2>LAB 소개</h2><br><br>
                        <img src="${pageContext.request.contextPath}/images/tri_icon.png"class="tri_icon"><b>전체보기</b><br><br><br>                  
                        <c:forEach items="${lablist}" var="lablist">
                        <div id="content_box2">                        
                            <!-- <div id="lab_box">    -->         
                                
                               <!--  <div id="lab_table"> -->
                                <div id="lab_img"><img src="${pageContext.request.contextPath}/images/${lablist.url}" width="200px" height="200px">
                                <table border="0">
			                            <tr><th>LAB</th><td>${lablist.lab}</td></tr>
							            <tr><th>LAB 담당교수님</th><td>${lablist.professor}</td></tr>
							            <tr><th>LAB 소개</th><td id="title">${lablist.intro}</td></tr>
							            <tr><th>LAB 대표 학생</th><td>${lablist.represent_student}</td></tr>
							            <tr><th>LAB 주소</th><td>${lablist.address}</td></tr>
							            <tr><th>LAB POINT</th><td>${lablist.point}</td></tr>								 
										
                                </table>
                                </c:forEach>
                            </div>
                            
                            
                                <br><br><br><br>
                            </div>
                        </div>
                        
                        
                                
                              <%--  <form action="${path}/mypage/lab/apply">
							<button>랩실 신청</button>
</form>  --%>
                            </div>
                            <br><br>
                        </div>
                    </div>
                </div>
            </div>
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
<!-- <script>
var msg="${msg}";
if(msg== "APPLYED"){
   alert("랩실 신청이 완료되었습니다.");
}
</script>
 -->
</body>
</html>