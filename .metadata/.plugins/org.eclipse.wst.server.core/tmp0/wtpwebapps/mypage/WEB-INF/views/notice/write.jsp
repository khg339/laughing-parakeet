<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<title>noticeWrite page</title>
</head>
<body>
<div>
	<form role="form" id="writeForm" method="post" action="${path}/notice/write">
		<div>
			<div><h3>게시글 작성</h3></div>
			<div>
				<div>
					<label for="title">제목</label>
					<input id="title" name="title" placeholder="제목을 입력하세요.">
				</div>
				<div>
					<label for="content">내용</label>
					<textarea id="content" name="content" rows="30"
					          placeholder="내용을 입력해주세요" style="resize: none;"></textarea>
				</div>
				<div>
					<label for="name">작성자</label>
					<input id="name" name="name" >
				</div>
			</div>
			<div>
				<button type="button">목록</button>
				<div>
					<button type="reset">초기화</button>
					<button type="submit">저장</button>
				</div>
			</div>
		</div>
	</form>
</div>
</body>
</html>