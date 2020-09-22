<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="./resources/css/board.css">
</head>
<body>
<script src="./resources/js/jquery.js"></script>
	<jsp:include page="../../include/header.jsp" />
	<div class="board_cont_wrap">
		<div class="board_contentBox">
			<!-- 헤더 시작 -->
			<div id="board_cont_header">
			<h3 id="board_cont_title">게시물 제목입니다</h3>
				<div id="board_cont_writerInfo">
					<div id="board_cont_profile">
						<div id="board_cont_nameBox">
							유져네임
						</div>
						<div id="board_cont_article_info">
							<span id="board_cont_uploadDate">
								2020-08-13 10:22
							</span>
							<span id="board_cont_hitCount">
								조회수 0
							</span>
							<span id="board_cont_comCount">
								댓글 0
							</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 헤더 끝 -->
			<!-- 내용시작 -->
			<div id="board_cont_body">
				<div id="board_cont_content">
					내용이에오.
				</div>
				<div id="board_cont_comCount2">
				<span>댓글 0</span>
				</div>
			</div>
			<!-- 내용 끝 -->
			<!-- 댓글 시작 -->
			<div id="board_cont_comment">
				<div id="board_cont_comment_option">
						<h3 style="font-size: 17px; margin-right: 12px; display: inline-block;">댓글</h3>
					<div id="board_cont_comment_tab">
						<a href="#" id="board_cont_lastbtn">등록순</a>
						<a href="#" id="board_cont_firstbtn">최신순</a>
					</div>
				</div>
				<div id="board_cont_commentBox">
					<ul class="board_cont_commentList">
						<!-- /반복 해야대 -->
						<li class="boad_cont_commentItem">
							<div class="board_cont_commentArea">
								<div class="board_cont_comment_nickBox">
									<span class="board_cont_comment_nickname">댓글 작성자 이름</span>
								</div>
								<div class="board_cont_comment_contBox">
									<span class="board_cont_comment_content">댓글 내용</span>
								</div>
								<div class="board_cont_comment_infoBox">
									<span class="board_cont_comment_info_date">2020-08-13 13:41</span>
									<a href="#" role="button" class="board_cont_comment_info_button">답글쓰기</a>
								</div>
							</div>
						</li>
						<!-- /반복 해야대 -->
					</ul>
					<div class="board_cont_comment_commentWriter">
						<div class="board_cont_comment_inbox" contentEditable="true">
							<em class="board_cont_comment_inboxName">abc</em>
							<textarea placeholder="댓글을 남겨보세요" rows="1" class="board_cont_comment_inbox_text" onkeydown="resize(this)" onkeyup="resize(this)" style="overflow: hidden; overflow-wrap: break-word; height: 17px;"></textarea>
						</div>
						<div	class="board_cont_comment_inbox_upload" >
							<img src="" alt="첨부 이미지"  width="54" height="54" class="board_cont_comment_uploadImage">
							<div class="board_cont_comment_upload_delete">
							</div>
						</div>
						<div class="board_cont_comment_attach">
							<div class="board_cont_comment_attach_picture">
								 <label for="image">
								 <input type="image" src="resources/img/board/camera_ch.jpg" id="cameralogo" height="22" width="35"/>
      					 <input type="file" id="uploadimg" style="display: none;" onchange="changeFile(this.file)" />
   							</label>
							</div>
							<div class="board_cont_comment_register_box"> <!-- 댓글 등록 버튼 -->
								<a href="#" role="button" class="button btn_register is_active">등록</a>
							</div>
							<div class="clear"></div>
						</div>
					</div><!-- 댓글 끝 -->
					<div class="board_cont_btnBox"> <!-- 목록버튼 -->
						<button class="board_cont_listbtn" onclick="location='IY_board_list'">목록</button>
						<button class="board_cont_delbtn" onclick="delcheck();">삭제</button>
						<button class="board_cont_editbtn" onclick="delcheck();">수정</button>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
		<jsp:include page="../../include/footer.jsp" />
</body>
<script>
	function resize(h) {
	  h.style.height = "1px";
	  h.style.height = (12+h.scrollHeight)+"px";
	}
	function delcheck(){
		var answer = confirm('회원가입을 완료하시겠습니까?');
		if(answer){
			/*삭제 확인시 실행*/
		}
	}
	
		function changeFile(file){
			var formData = new FormData();
			/*
				1.첨부파일을 업로드 하는 또 다른 방식은 jQuery 아작스를 이용해서  파일 데이터만을 전송한다.
				2.아작스를 이용하는 첨부파일 처리는 FormData라는 객체를 이용하는데 IE의 웹브라우저 경우 10이후 버전부터 지ㅜ언되므로 브라우저의 제약이 있을 수 있다.
			 */
			 			
			 			var inputFile=$("input[id='uploadimg']");
			 			//input 태그 네임파라미터 이름이 uploadFile인 경우에 접근
			 			var files=inputFile[0].files;//첫번쨰 input type='file' --첫번째 input type=file을 가르킨다.
			 			//다중 첨부한 파일은 fiels배열로 받는다.자바스크립트에서는 엄격한  형겸사를 하지않아서 
			 			//var변수정의 키워드로 한개값을 저장하는 변수도 사용할 수 있고, 복수개의 값을 저장하는 배열도 사용할 수 있다.
			 			console.log(files);//콘솔모드 출력
			 			
			 			//첨부파일을 formData객체에 추가
			 			for(var i=0;i<files.length;i++){
			 				formData.append("uploadFile",files[i]);
			 			}
		$.ajax({
			type: "POST",
			url: "/controller/fileuploadAction",
			processData:false,//데이터를 컨텐트 타입에 맞게 변환=>false로 지정해야 전송이 된다.
			contentType:false,//컨텐트 타입 지정
			data:{formData},//formData객체를 전송=>formData에 첨부한 파일이 있음.
			success:function(result){
				/* $.ajax({
					
					}); 잠시 보류*/
				}
			})
		}
	
	$("input[id='cameralogo']").click(function() {
	    $("input[id='uploadimg']").click();
	});
</script>

</html>












