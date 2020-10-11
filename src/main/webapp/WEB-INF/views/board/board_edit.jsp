<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<!-- <script src="resources/js/jquery.js"></script> -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
<link rel="stylesheet" href="./resources/css/board.css">
</head>
<body>
	<jsp:include page="../../include/header.jsp" />
	<div class="board_edit_wrap">
	<form>
		<h2 class="board_edit_title"><b>자유 게시판</b></h2>
		<input placeholder="제목을 입력해 주세요." id="board_title" style="height: 40px;" />
		<div id="board_summernote"></div>
		<div id="board_edit_btmbtn">
			<button id="board_edit_cancel">취소</button>
			<button id="board_edit_com">수정</button>
		</div>
		<div class="clear"></div>
			<jsp:include page="../../include/footer.jsp" />
	</form>
	</div>
	<script>
		$('#board_summernote').summernote({
			placeholder : '내용을 입력해주세요',
			tabsize : 300,
			height : 500,
			width : 900
		});
	</script>
</body>
</html>

