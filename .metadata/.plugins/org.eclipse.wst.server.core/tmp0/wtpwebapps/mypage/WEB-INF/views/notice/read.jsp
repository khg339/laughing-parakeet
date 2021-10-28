<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<title>noticeRead page</title>
</head>
<body>
<div>
	<div>
		<div><h3>글 제목 : &{notice.title}</h3></div>
	</div>
	<div style="height:700px">
		${notice.content}
	</div>
	<div>
		<div>
			<span><a href="#">${notice.name}</a></span>
			<span><fmt:formatDate pattern="yyyy-MM-dd" value="${notice.datetime}"/></span>
		</div>
	</div>
	<div>
		<form role="form" method="post">
			<input type="hidden" name="noticeno" value="${notice.noticeno}">
		</form>
		<button type="submit" class="btn btn-primary listBtn">목록</button>
		<div>
			<button type="submit" class="btn btn-warning nodBtn">수정</button>
			<button type="submit" class="btn btn-danger delBtn">삭제</button>
		</div>
	</div>
</div>
<script>
$(document).ready(function(){
	
	var form0bj = $("form[role='form']");
	console.log(form0bj);
	
	$(".modBtn").on("click", function(){
		form0bj.attr("action", "${path}/notice/modify");
		form0bj.attr("method", "get");
		form0bj.submit();
	});
	
	$(".delBtn").on("click", function(){
		form0bj.attr("action", "${path}/notice/remove");
		form0bj.submit();
	});
	
	$(".listBtn").on("click", function(){
		self.location="${path}/notice/list"
	});
});
</script>
</body>
</html>