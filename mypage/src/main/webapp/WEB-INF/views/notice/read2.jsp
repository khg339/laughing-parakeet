<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>공지사항 > 학부공지사항</title>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
 
 <script>var result = "${msg}"; 
     if (result == "addSuccess") { 
    		alert("해당 글이 즐겨찾기에 추가되었습니다."); }  </script>
    		
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Style_content.css">
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
                        <caption><b>교수님공지</b></caption>
                        <tr><td><a href="/mypage/notice/noticeList2">전체보기</a></td></tr>
                        <tr><td><a href="Pro_Na.html">나근식</a></td></tr>
                        <tr><td><a href="Pro_Kim.html">김성기</a></td></tr>
                        <tr><td><a href="Pro_Han.html">한근식</a></td></tr>
                        <tr><td><a href="Pro_Choi.html">최창원</a></td></tr>
                        <tr><td><a href="Pro_Jang.html">장재건</a></td></tr>
                        <tr><td><a href="Pro_Kang.html">강영경</a></td></tr>
                        <tr><td><a href="Pro_LeeS.html">이성구</a></td></tr>
                        <tr><td><a href="Pro_Park.html">박성진</a></td></tr>
                        <tr><td><a href="Pro_LeeH.html">이형우</a></td></tr>
                        <tr><td><a href="Pro_Ryu.html">류승택</a></td></tr>
                        <tr><td><a href="Pro_Yoon.html">윤효석</a></td></tr>
                        <tr><td><a href="Pro_Kyung.html">경연웅</a></td></tr>
                        <tr><td><a href="Pro_Jo.html">조재춘</a></td></tr>
                        <tr><td><a href="Pro_LeeY.html">이양선</a></td></tr>
                    </table>
                </div>
                <div id="content_box">
                    <div id="content1"><h2>공지사항</h2><br><br>
                        <img src="${pageContext.request.contextPath}/images/tri_icon.png" class="tri_icon"><b>${noticeDTO.title}</b><br><br><hr><br>
                        <form role="form" method="post"> 
        <input type="hidden" name="noticeno" value="${noticeDTO.noticeno} "> 
        </form><button type="submit" id="addBtn">즐겨찾기</button>
                        
                        <div>
                            <table>
							<tr>
								<th><td align="right"><small>${noticeDTO.datetime}</small>&nbsp;&nbsp;${noticeDTO.name}<br><br><br></td>
								
							</tr>
							<tr>
								<td>${noticeDTO.content}</td>
							</tr>	
						</table>
                        </div>
                    </div>
                    <hr><br>
                    <div id="content2">
                        <img src="${pageContext.request.contextPath}/images/tri_icon.png" class="tri_icon"><b>댓글</b><br><br>
                        <div>
                            <table>
                                <tr><th id="comment">작성자이름</th><td>오 정말 좋은 생각이에요 굳굳굳ㄱㄷ </td></tr>
                                <tr><th id="comment">작성자이름</th><td>음 저는 잘모르겠네요 음으믕ㅁㅇ하하 음 저는 잘모르겠네요 하하음 저는 잘모르겠네요 음으믕ㅁㅇ하하</td></tr>
                                <tr><th id="comment">작성자이름</th><td>반대합니다!</td></tr>
                            </table>
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
<script> 
        $(document).ready(function () { 
        	
        	var formObj = $("form[role='form']"); 
        	console.log(formObj); 
        	
        	$("#addBtn").on("click", function () { 
        		formObj.attr("action", "/mypage/notice/addstar"); 
        		formObj.submit(); 
        	});
        	});
        $(function(){
            $('input').iCheck({
               checkboxClass:'icheckbox_square-blue',
               radioClass:'iradion_square-blue',
               increaseArea:'20%'
            });
         });
         </script>
</body>
</html>