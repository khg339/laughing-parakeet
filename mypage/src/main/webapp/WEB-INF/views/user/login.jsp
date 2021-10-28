<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>한신대학교 컴퓨터공학부</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Style_login_join.css">
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
                        <li><a href="#">SITEMAP</a></li>
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
                <div class="loginBox">
                    <h1>Login</h1><br>
                    <form class="loginForm" action="${path}/mypage/user/loginPost" method="post">
                        <div class="idForm">
                            <input type="text" name="ID" size=20>
                            <label for="id">ID</label>
                        </div><br>
                        <div class="pwForm">
                            <input type="password" name="PW" size=20>
                            <label for="pw">PW</label>
                        </div>
                        <div class="btn-area">
                            <input id="btn" type="submit" value="LOGIN">
                        </div>
                    </form>
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
                    
                </ul>
            </footer>
        </div>
   

<script>
   var msg="${msg}";
   if(msg== "REGISTERED"){
      alert("회원가입이 완료되었습니다. 로그인해주세요");
   }else if(msg=="FALURE"){
      alert("아이디와 비밀번호를 확인해주세요");
   }
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
