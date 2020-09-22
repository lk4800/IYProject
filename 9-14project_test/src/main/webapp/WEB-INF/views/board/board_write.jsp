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
<script src="resources/js/summernote-ko-KR.js" ></script>
<link rel="stylesheet" href="./resources/css/board.css">
</head>
<body>
	<jsp:include page="../../include/header.jsp" />
	<div class="board_write_wrap">
	<form action="board_write_ok" method="POST" id="board_write_submit">
		<h2 class="board_write_title"><b>자유 게시판</b></h2>
		<input placeholder="제목을 입력해 주세요." id="board_title" style="height: 40px;" />
		<textarea id="board_summernote"></textarea>
	
		</form><!--  -->
		<div id="board_write_btmbtn">
			<button id="board_write_listbtn" onclick="location='IY_board_list'">목록</button>		
			<button type='submit' id="board_write_submitbtn" onclick='check();'>등록</button>
		</div>
		<div class="clear"></div>
	</div>
		<jsp:include page="../../include/footer.jsp" />
	<script>
		 $('#board_summernote').summernote({
			placeholder : '내용을 입력해주세요',
			tabsize : 300,
			height : 500,
			width : 900,
			lang: 'ko-KR'
		}); 
		function check(){
			if($.trim($('#board_title').val())==''){
				alert('제목을 입력하세요');
				$('#board_title').val('').focus();
				return false;
			}
			else if($.trim($('#board_summernote').val())==''){
				alert('내용을 입력하세요');
				$('#board_summernote').val('').focus();
				return false;
			}
			else{
				$('#board_write_submit').submit();
			}
		}
		
	</script>
</body>
</html>

