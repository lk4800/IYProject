<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<div id="board_cont_fb_num" style="display: none;">${fbCont.fb_num}</div>
			<h3 id="board_cont_title">${fbCont.fb_title}</h3>
				<div id="board_cont_writerInfo">
					<div id="board_cont_profile">
						<div id="board_cont_nameBox">
							${fbCont.name}
						</div>
						<div id="board_cont_article_info">
							<span id="board_cont_uploadDate">
								${fbCont.fb_date}
							</span>
							<span id="board_cont_hitCount">
								조회수 ${fbCont.fb_hit}
							</span>
							<span id="board_cont_comCount">
								댓글 ${totalRep}
							</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 헤더 끝 -->
			<!-- 내용시작 -->
			<div id="board_cont_body">
				<div id="board_cont_content">
					${fbCont.fb_cont}
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
						<%-- <c:if test="${empty frContList}">
							
						</c:if>
						<c:if test="${!empty frContList}"> --%>
							<c:forEach var="r" items="${frContList}">
								<!-- /반복 해야대 -->
						<li class="boad_cont_commentItem">
							<div class="board_cont_commentArea">
								<div class="board_cont_comment_nickBox">
									<span class="board_cont_comment_nickname">${r.name}</span>
								</div>
								<div class="board_cont_comment_contBox">
									<span class="board_cont_comment_content"><pre>${r.fb_reply_cont}</pre></span>
								</div>
								<div class="board_cont_comment_infoBox">
									<span class="board_cont_comment_info_date">${r.fb_reply_date}</span>
									<a  role="button" class="board_cont_comment_info_button">답글쓰기</a>
								</div>
							</div>
						</li>
						<!-- /반복 해야대 -->
							</c:forEach>
						<%-- </c:if> --%>
						
					</ul>
					<!-- 댓글 글쓰기  -->
					<c:if test="${!empty login }">
						<div class="board_cont_comment_commentWriter">
							<div class="board_cont_comment_inbox">
								<span class="board_cont_comment_inboxName">${login.name}</span>
								<textarea placeholder="댓글을 남겨보세요" rows="1" 
									class="board_cont_comment_inbox_text" onkeydown="resize(this)"
									onkeyup="resize(this)"
									style="overflow: hidden; overflow-wrap: break-word; height: 17px;"></textarea>
							</div>
								<div class="board_cont_comment_register_box">
									<!-- 댓글 등록 버튼 -->
									<a href="#" role="button" class="button btn_register is_active" onclick="repInsert();">등록</a>
								</div>
								<!--  -->
								<div class="clear"></div>
							</div>
						<!-- 댓글 끝 -->
					</c:if>
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
	function resize(h) {//댓글 입력란 높이 자동 증가
	  h.style.height = "1px";
	  h.style.height = (12+h.scrollHeight)+"px";
	}
	function delcheck(){
		var answer = confirm('게시물을 삭제하시겠습니까?');
	if(answer){
			/*삭제 확인시 실행*/
		}
	}
	console.log($("#board_cont_fb_num").html());
	function repInsert(){//댓글 등록 시 실행
		if($.trim($(".board_cont_comment_inbox_text").val()) == ""){
			alert("글을 작성해주세요");
			$(".board_cont_comment_inbox_text").focus();
			
			return false;
		}else{
			const repInfo={
					fboard_num:$("#board_cont_fb_num").html(),
					fb_reply_cont:$(".board_cont_comment_inbox_text").val(),
	    		email:"${login.email}"
	    	};
			console.log(repInfo);
				 $.ajax({
	    		type:"post",
	    		url:"fb_rep_insert",
	    		headers:{"Content-Type":"application/json"},
	    		data:JSON.stringify(repInfo),
		    		success:function(){
		    			window.location.reload();
		    			$('.board_cont_comment_inbox_text').val('');
	    		} 
	    });
		}
	
	}
	//document.onkeydown = notReload;

</script>

</html>












