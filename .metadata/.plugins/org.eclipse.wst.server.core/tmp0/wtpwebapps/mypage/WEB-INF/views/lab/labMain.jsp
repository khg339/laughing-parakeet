<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
<title>labMain page</title>
</head>
<body>
<h1>
   랩실 메인 페이지 
</h1>
<div>
<form action="${path}/mypage/lab/apply">
<button>랩실 신청</button>
</form>
</div>
<script>
var msg="${msg}";
if(msg== "APPLYED"){
   alert("랩실 신청이 완료되었습니다.");
}
</script>
</body>
</html>