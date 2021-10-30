<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
<title>apply page</title>
</head>
<body>
 <form action="${path}/mypage/lab/labPost" method="post">

<div class="input-group mb-3">
      <input type="text" name="memberno" class="form-control" placeholder="memberno">
      <div class="input-group-append">
         <div class="input-group=text">
            <span class="fas fa-memberno"></span>
         </div>
      </div>
   </div>
   <div class="input-group mb-3">
      <input type="text" name="lab" class="form-control" placeholder="lab">
      <div class="input-group-append">
         <div class="input-group=text">
            <span class="fas fa-exclamation"></span>
         </div>
      </div>
   </div>
   <div class="input-group mb-3">
      <input type="text" name="content" class="form-control" placeholder="content">
      <div class="input-group-append">
         <div class="input-group=text">
            <span class="fas fa-lock"></span>
         </div>
      </div>
   </div>
   
   <div class="col-4">
   		
         <button type="submit" class="btn btn-primary btn-block">Apply</button>
      </div>
   
   </form>
   
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