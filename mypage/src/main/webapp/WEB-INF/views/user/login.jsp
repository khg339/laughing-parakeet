<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login page</title>
</head>
<body>
   <form action="${path}/mypage/user/loginPost" method="post">
   <div class="input-group mb-3">
      <input type="text" name="ID" class="form-control" placeholder="ID">
      <div class="input-group-append">
         <div class="input-group=text">
            <span class="fas fa-exclamation"></span>
         </div>
      </div>
   </div>
   <div class="input-group mb-3">
      <input type="text" name="PW" class="form-control" placeholder="PW">
      <div class="input-group-append">
         <div class="input-group=text">
            <span class="fas fa-lock"></span>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-8">
         <div class="icheck-primary">
            <input type="checkbox"  id="remember">
            <label for="remember">
            Remember Me
            </label>
         </div>
      </div>
      <div class="col-4">
         <button type="submit" class="btn btn-primary btn-block">Sign In</button>
      </div>
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