<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<title>noticeList page</title>
</head>
<body>
<div>
	<div>
		<div><h3>공지사항 목록</h3></div>
		<div>
			<table>
			<tbody>
			<tr>
				<th style="width:30px">#</th>
				<th>제목</th>
				<th style="width:100px">작성자</th>
				<th style="width:150px">작성시간</th>
				<th style="width:60px">종류</th>
			</tr>
			<c:forEach items="${notices}" var="notice">
			<tr>
				<td>${notice.noticeno}</td>
				<td><a href="${path}/notice/read?noticeno=${notice.noticeno}">${notice.title}</a></td>
				<td>${notice.name}</td>
				<td><fmt:formatDate value="${notice.datetime}" pattern="yyyy-MM-dd a HH:mm"/></td>
				<td>${notice.n_type}</td>
		    </tr>
			</c:forEach>
			</tbody>
			</table>
		</div>
		<div>
			<div>
				<button type="button" id="writeBtn">
					글쓰기
				</button>
			</div>
		</div>
	</div>
</div>
<script>
var result="${msg}";
if (result == "regSuccess"){
	alert("게시글 등록이 완료되었습니다.");
}else if(result == "modSuccess"){
	alert("게시글 수정이 완료되었습니다.");
}else if(result == "delSuccess"){
	alert("게시글 삭제가 완료되었습니다.")
}
</script>
</body>
</html>