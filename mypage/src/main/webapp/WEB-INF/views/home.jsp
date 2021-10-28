<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>한신대학교 컴퓨터공학부</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Style_main.css">
        <style>
            h4{background-color: rgb(238, 234, 234); color: black; margin-top: 0;}
            #first{font-size:large; color:rgb(243, 38, 38)}
        </style>
    </head>
    <body>
        <div id="page">
            <div class="header">
                <div class="logo">
                    <a href="Main.html"><img src="${pageContext.request.contextPath}/images/hsLogo.png"alt="한신대학교 컴퓨터공학부" alt="한신대학교 컴퓨터공학부"></a>
                </div>
                <div class="menubar">
                    <ul class="upper_nav">
                        <li><a href="/mypage/">HOME</a></li>
                        <li><a href="Sitemap.html">SITEMAP</a></li>
                        <li><a href="/mypage/user/login">LOGIN</a></li>
                        <li><a href="/mypage/user/register">JOIN</a></li>
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
                <div><img class="move1" src="${pageContext.request.contextPath}/images/hanshin.png" width="320" height="65"></div>
                <div><img class="move2" src="${pageContext.request.contextPath}/images/computer.png"width="auto" height="62"></div>
                <div><img class="move1" src="${pageContext.request.contextPath}/images/engineering.png"width="auto" height="70"></div>
                <div class="scroll"><img src="${pageContext.request.contextPath}/images/scroll.png" width="40" height="40"></div>
                <div class="labRanking1">
                    <img src="${pageContext.request.contextPath}/images/labRanking.png" width="300" height="auto">
                    <div class="labRanking2">
                        <div id="firstLab">
                            <div id="lab">
                                <img src="${pageContext.request.contextPath}/images/bigdata.png"><br>
                                <h4 id="first">1</h4><br>
                                연구실 이름<Br>
                                POINT : 0000<br>
                            </div>
                        </div>
                        <div id="otherLabs">
                            <div id="lab">
                                <img src="${pageContext.request.contextPath}/images/xr.png"><br>
                                <h4>2</h4><br>
                                연구실 이름<Br>
                                POINT : 0000<br>
                            </div>
                            <div id="lab">
                                <img src="${pageContext.request.contextPath}/images/iot.png"><br>
                                <h4>3</h4><br>
                                연구실 이름<Br>
                                POINT : 0000<br>
                            </div>
                            <div id="lab">
                                <img src="${pageContext.request.contextPath}/images/ai.png"><br>
                                <h4>4</h4><br>
                                연구실 이름<Br>
                                POINT : 0000<br>
                            </div>
                            <div id="lab">
                                <img src="${pageContext.request.contextPath}/images/sw.png"><br>
                                <h4>5</h4><br>
                                연구실 이름<Br>
                                POINT : 0000<br>
                            </div>
                        </div>
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
    </body>
</html>