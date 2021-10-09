<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>register page</title>
</head>
<body>
   <form action="${path}/mypage/user/register" method="post">
   <div class="input-group mb-3">
      <input type="text" name="memberno" class="form-control" placeholder="memberno">
      <div class="input-group-append">
         <div class="input-group=text">
            <span class="fas fa-memberno"></span>
         </div>
      </div>
   </div>
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
   <div class="input-group mb-3">
      <input type="text" name="name" class="form-control" placeholder="name">
      <div class="input-group-append">
         <div class="input-group=text">
            <span class="fas fa-name"></span>
         </div>
      </div>
   </div>
   <div class="input-group mb-3">
      <input type="text" name="major" class="form-control" placeholder="major">
      <div class="input-group-append">
         <div class="input-group=text">
            <span class="fas fa-major"></span>
         </div>
      </div>
   </div>
   <div class="input-group mb-3">
      <input type="text" name="email" class="form-control" placeholder="email">
      <div class="input-group-append">
         <div class="input-group=text">
            <span class="fas fa-email"></span>
         </div>
      </div>
   </div>
   <div class="input-group mb-3">
      <input type="text" name="lab" class="form-control" placeholder="lab">
      <div class="input-group-append">
         <div class="input-group=text">
            <span class="fas fa-lab"></span>
         </div>
      </div>
   </div>
   <div class="input-group mb-3">
      <input type="text" name="phone" class="form-control" placeholder="phone">
      <div class="input-group-append">
         <div class="input-group=text">
            <span class="fas fa-phone"></span>
         </div>
      </div>
   </div>
   <div class="input-group mb-3">
      <input type="text" name="age" class="form-control" placeholder="age">
      <div class="input-group-append">
         <div class="input-group=text">
            <span class="fas fa-age"></span>
         </div>
      </div>
   </div>
   <div class="input-group mb-3">
      <input type="text" name="grade" class="form-control" placeholder="grade">
      <div class="input-group-append">
         <div class="input-group=text">
            <span class="fas fa-grade"></span>
         </div>
      </div>
   </div>
   <div class="input-group mb-3">
      <input type="text" name="state" class="form-control" placeholder="state">
      <div class="input-group-append">
         <div class="input-group=text">
            <span class="fas fa-state"></span>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-8">
         <div class="icheck-primary">
            <input type="checkbox"  id="agreeTerms" name="terms" value="agree">
            <label for="agreeTerms">
            I agree to the <a href="#">terms</a>
            </label>
         </div>
      </div>
      <div class="col-4">
         <button type="submit" class="btn btn-primary btn-block">Register</button>
      </div>
   </div>
   </form>
   <a href="${path}/mypage/user/login" class="text-center">l already have a membership</a>

<script>
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