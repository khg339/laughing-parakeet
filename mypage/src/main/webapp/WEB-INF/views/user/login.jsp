<!DOCTYPE html>
<html>
    <head>
        <title>한신대학교 컴퓨터공학부</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
        <style>
            *{
    font-family: 'Noto Sans KR', sans-serif;
    list-style:none;
    text-decoration:none;
    border-collapse:collapse;
    margin:0px;
    padding:0px;
    color:white;
    background-color:rgb(0, 0, 0);
}
.header{
    display:flex;
    width:1280px;
    height:170px;
    margin:auto;
}
.logo>img{
    width:150px;
    height:auto;
}
.menubar{
    width:calc(1280px- 170px);
    height:150px; 
}
.upper_nav{
    display:flex;
    justify-content:flex-end;
    width: 1110px;
    height:20px;
}
.upper_nav>li{
    margin-left:10px;
    margin-right:10px;
}
.nav{
    display:flex;
    justify-content:flex-end;
    line-height:140px;
    font-size:26px;
    width: 1110px;
    height:140px;
}
.nav>li{
    margin-left:30px;
    margin-right:40px;
}
            body{display:flex; justify-content:center; align-items:center;}
            .loginBox{justify-content:center; align-items:center; width:400px; height:300px; }
            .loginForm{position: relative; z-index:2;}
            .loginBox h1{font-size:32px; text-align: center;}
            .idForm{position:relative; }
            .pwForm{position:relative; }
            .idForm input{width: 100%; padding:20px 10px 10px; background-color:rgba(255, 255, 255, 0.116);
             border:none; border-bottom: 1px solid rgb(230, 227, 227); font-size:18px; outline:none;}
             .pwForm input{width: 100%; padding:20px 10px 10px; background-color:rgba(255, 255, 255, 0.116);
             border:none; border-bottom: 1px solid rgb(230, 227, 227); font-size:18px; outline:none;}
            label{position:absolute; margin-bottom:10px; left:10px; top:0px; font-size:20px;}
            .btn-area{margin-top:30px; justify-content:center; align-items:center;}
            .btn-area input{width:30%; height:40px; background-color: rgb(245, 236, 235); color:black; font-size:15px; border:none; border-radius:10px;}
        </style>
    </head>
    <body>
        <div id="page">
            <div class="header">
                <div class="logo">
                    <img src="media/hsLogo1.png">
                </div>
                <div class="menubar">
                    <ul class="upper_nav">
                        <li><a href="#">HOME</a></li>
                        <li><a href="#">SITEMAP</a></li>
                        <li><a href="#">LOGIN</a></li>
                        <li><a href="#">JOIN</a></li>
                    </ul>
                    <ul class="nav">
                        <li><a href="#">학부소개</a></li>
                        <li><a href="#">공지사항</a></li>
                        <li><a href="#">교수님공지</a></li>
                        <li><a href="#">LAB</a></li>
                        <li><a href="#">졸업논문</a></li>
                    </ul>
                </div>
            </div>
            <div class="loginBox">
                <h1>Login</h1><br>
                <form class="loginForm" action="#" method=post>
                    <div class="idForm">
                        <input type="text" name="id" size=20>
                        <label for="id">ID</label>
                    </div><br>
                    <div class="pwForm">
                        <input type="password" name="pw" size=20>
                        <label for="pw">PW</label>
                    </div>
                    <div class="btn-area">
                        <input type="submit" value="LOGIN">
                    </div>
                </form>

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