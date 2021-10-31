<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>학부소개</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Style_content.css">
    </head>
    <body>
        <div id="page">
            <div class="header">
                <div class="logo">
                    <a href="Main.html"><img src="${pageContext.request.contextPath}/images/hsLogo.png" alt="한신대학교 컴퓨터공학부"></a>
                </div>
                <div class="menubar">
                    <ul class="upper_nav">
                        <li><a href="Main.html">HOME</a></li>
                        <li><a href="Sitemap.html">SITEMAP</a></li>
                        <li><a href="Mypage_info.html">MYPAGE</a></li>
                    </ul>
                    <ul class="nav">
                        <li><a href="Intro.html">학부소개</a></li>
                        <li><a href="News_notice1.html">공지사항</a></li>
                        <li><a href="News_Professor.html">교수님공지</a></li>
                        <li><a href="Lab.html">LAB</a></li>
                        <li><a href="Thesis.html">졸업논문</a></li>
                    </ul>
                </div>
            </div>
            <div class="content">
                <div id="nav_box">
                    <table id="nav_table" cellspacing="0" cellpadding="10">
                        <caption><b>학부소개</b></caption>
                        <tr><td><a href="Intro.html">학부소개</a></td></tr>
                        <tr><td><a href="Intro1.html">교육목표</a></td></tr>
                        <tr><td><a href="Intro2.html">교육과정</a></td></tr>
                        <tr><td><a href="Intro3.html">이수체계</a></td></tr>
                        <tr><td><a href="Intro4.html">교과목내용</a></td></tr>
                        <tr><td><a href="Intro5.html">교수진소개</a></td></tr>
                        <tr><td><a href="Intro6.html">학생회소개</a></td></tr>
                        <tr><td><a href="Intro7.html">시설소개</a></td></tr>
                        <tr><td><a href="Intro8.html">학부연혁</a></td></tr>
                    </table>
                </div>
                <%-- <div id="content_box">
					<c:forEach items="${majorlist}" var="majorlist">
                    <div><h2>학부소개</h2><br><br>
                        <img src="${pageContext.request.contextPath}/images/tri_icon.png" class="tri_icon"><b>학부소개</b><br><br><br>
                        <img src="${pageContext.request.contextPath}/images/circle_icon.png" class="circle_icon"><b>학부소개</b><br><br>
                     ${majorlist.intro}<br><br><br><br>
                         <img src="${pageContext.request.contextPath}/images/circle_icon.png" class="circle_icon"><b>학과장님</b><br><br>
                            ${majorlist.represent_professor}<br><br><br>
                         <img src="${pageContext.request.contextPath}/images/s_circle_icon.png" class="s_circle_icon"><b>학부목표</b><br><br>
                         <div id="sub_cont">
                           ${majorlist.goal}<br><br><br>
                         </div>
                    </div></c:forEach> --%>
                    <div id="content_box">
                    <div><h2>학부소개</h2><br><br>
                        <img src="${pageContext.request.contextPath}/images/tri_icon.png" class="tri_icon"><b>학부소개</b><br><br><br>
                        <img src="${pageContext.request.contextPath}/images/circle_icon.png" class="circle_icon"><b>학부소개</b><br><br>
                        컴퓨터공학부는 급속도로 발전하는 IT 시대에서 컴퓨터와 SW 기술과 관련된 다양한 분야들을 연구하는 학부입니다.
                         컴퓨터공학부는 컴퓨터 및 정보기술 분야 이론에 대한 심층적 이해와 효과적인 실험, 실습교육을 통해 정보화 사회의 핵심적 역할을 담당할 인력 양성을 위해, 
                         수학 및 과학과 컴퓨터공학 기초지식 함양, 컴퓨터공학 분야의 전문지식 및 현장 적응 능력 배양, 창의적인 사고와 문제 해결 능력 배양, 
                         참된 인성을 바탕으로 윤리의식과 책임감 함양, 정보화 사회에서 학제간 다면성 지향 등을 교육목표로 합니다. 따라서 프로그래밍 언어(Programming Language), 
                         보안(Security), 모바일(Mobile), 웹서비스(Web Service), 멀티미디어 콘텐츠(Multimedia Contents), 인공지능(Artificial Intelligent) 
                         분야에 관련된 다양한 과목들을 학습합니다.<br><br><br><br>
                         <img src="${pageContext.request.contextPath}/images/circle_icon.png" class="circle_icon"><b>학부 특성화</b><br><br>
                            소프트웨어 산업 및 미래 IT 기술의 핵심이 되는 고급 기술을 습득하고 현장 중심형 실무 개발 기술력을 갖춘 기업 맞춤형 소프트웨어 인력양성을 목표로 합니다.<br><br><br>
                         <img src="${pageContext.request.contextPath}/images/s_circle_icon.png" class="s_circle_icon"><b>기업 맞춤형 소프트웨어 인력양성 : MATCHing STEP</b><br><br>
                         <div id="sub_cont">
                            Maching : Man(인성), Ability(도전), Technology(기술), Creation(창의),Harmony(협동)<br>
                            STEP : Software-Expert Training & Enhancement Program<br><br><br>
                         </div>
                         <img src="${pageContext.request.contextPath}/images/s_circle_icon.png" class="s_circle_icon"><b>인성 (Man) : 기본 소양과 인성을 갖춘 소프트웨어 지식인</b><br><br>
                         <div id="sub_cont">
                            더불어 가는 실천 지성 및 실무능력 배양<br>
                            소프트웨어 분야 전문가 및 융합적 신지식인 양성<br><br><br>
                         </div>
                         <img src="${pageContext.request.contextPath}/images/s_circle_icon.png" class="s_circle_icon"><b>도전(Ability) : 새로운 기술에 대한 무한한 도전정신을 갖춘 소프트웨어 전공자</b><br><br>
                         <div id="sub_cont">참여와 도전정신 배양<br>
                            취창업 지원 확대 및 산학연계 인턴쉽/멘토링<br><br><br></div>
                         <img src="${pageContext.request.contextPath}/images/s_circle_icon.png" class="s_circle_icon"><b>기술(Technology) : ICT 사회를 선도할 수 있는 실무 중심형 소프트웨어 기술인</b><br><br>
                         <div id="sub_cont">
                            현장중심형 소프트웨어 기술력 배양<br>
                            기업 밀착형 소프트웨어 전공교육 및 신기술 아카데미<br><br><br>
                         </div>
                         <img src="${pageContext.request.contextPath}/images/s_circle_icon.png" class="s_circle_icon"><b>창의(Creative) : 창의적 개발능력을 갖춘 소프트웨어 전문인</b><br><br>
                         <div id="sub_cont">창의적 문제 해결능력 배양<br>
                            산학 소프트웨어 경진대회 및 캡스톤 디자인/아이디어 창출<br><br><br></div>
                         <img src="${pageContext.request.contextPath}/images/s_circle_icon.png" class="s_circle_icon"><b>협동(Harmony) : 합리적인 협업 능력을 갖춘 소프트웨어 전문가</b><br><br>
                         <div id="sub_cont">협업/협동 능력 배양<br>
                            멤버십/친화력 강화활동 및 실무자-학생 1:N 프로젝트<br><br><br><br><br></div>
                         <img src="${pageContext.request.contextPath}/images/circle_icon.png" class="circle_icon"><b>학부(과)의 인재상</b><br><br>
                         컴퓨터공학 분야의 전문지식 및 현장 적응력과 창의적인 사고와 문제 해결 능력을 겸비하고 
                         참된 인성을 바탕으로 윤리의식과 책임감을 갖춘 정보화 사회에서 학제간 다면성을 지향하는 국제화된 인재<br><br><br><br><br>
                         <img src="${pageContext.request.contextPath}/images/circle_icon.png" class="circle_icon"><b>학과(부) 취득자격증</b><br><br>
                         정보처리기사1급, 전자계산기조직응용기사1급, 전자계산기기사1급, 정보통신 설비기사1급, 전자기사1급, 
                         사무정보기기응용기사1급, 인터넷정보설계사, 인터넷시스템관리사, 인터넷 전문검색사, 인터넷 정보검색사 등 IT관련 제반 전문 자격증<br><br><br><br><br>
                         <img src="${pageContext.request.contextPath}/images/circle_icon.png" class="circle_icon"><b>진출분야</b><br><br>
                         <img src="${pageContext.request.contextPath}/images/s_circle_icon.png" class="s_circle_icon">기업규모<br>
                         <div id="sub_cont">대기업, 중견기업, 중소기업, 공기업, 벤처창업, 연구소, 진학<br><br></div>
                         <img src="${pageContext.request.contextPath}/images/s_circle_icon.png" class="s_circle_icon">기업종류<br>
                         <div id="sub_cont">컴퓨터가 쓰이는 모든 기업(SI 업체, 제조업, 통신회사, 포털, 영상/콘텐츠제작사, 게임업체, 웹개발사, 앱개발사, 소프트웨어개발사, 네트워크 및 보안, 모바일업체, 금융기관 등)<br><br></div>
                         <img src="${pageContext.request.contextPath}/images/s_circle_icon.png" class="s_circle_icon">직무형태<br>
                         <div id="sub_cont">프로그램 개발(소프트웨어 개발자, 시스템엔지니어, 서버 관리자, 데이터베이스 관리자, 웹개발자, 보안기술자, 영상/그래픽스 개발자, 게임개발자), 정보기기 생산, 그래픽 디자인,
                              IT 전기략획/ /컨설팅, IT 영업관리, IT 교육사업, 프로그램 테스트 엔지니어<br><br><br><br><br></div>
                         <img src="${pageContext.request.contextPath}/images/circle_icon.png" class="circle_icon"><b>특기사항</b><br><br>
                         컴퓨터공학부에는 학생들의 다양한 학술활동을 지원하기 위해 소프트웨어공학 연구실, DB 프로그래밍 연구실, 지능형소프트웨어 연구실, 그래픽스 연구실, 
                         패턴인식 연구실, 멀티미디어통신연구실, 인터넷보안연구실, 모바일 콘텐츠 연구실, 인공지능 연구실, 임베디드시스템 연구실, 웹 데이터베이스 연구실, 
                         네트워크 연구실,컴퓨터비젼 연구실 등의 13개의 학생연구실을 운영하고 있으며, 각 연구실들은 여러 전공 그룹별 연구회(Study group)로 활성화되어 
                         각 관심분야에 대한 기술 습득과 프로젝트 수행을 통하여 차별화된 학습 경험을 얻을 수 있습니다.<br>
                    
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

 
 
 		

