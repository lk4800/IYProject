<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
    <head>
    	<meta charset="UTF-8">
      <title>게시판 목록</title>
      <link rel="stylesheet" href="./resources/css/board.css">
    </head>
    <body>
    	<jsp:include page="../../include/header.jsp" />
    	<div class="board_list_wrap">
    		<div class="board_submenu">
    			<a class=board_list_st href="#">공지 게시판</a>
    			<a class=board_list_st href="#">자유 게시판</a>
    			<a class=board_list_st id="board_list_st_last" href="#">홍보 게시판</a>
    		</div>
    		<div>
    		<div>
    			<h2 class="board_list_bt"><b>공지게시판</b></h2>			
    		</div>	
    		<div>
            <button type="button" onclick="location='IY_board_write'" class="board_write_btn">글쓰기</button>
    		</div>	
    		</div>
        	<div>
          	  <div class="board_list">
            	    <div class="board_list_head">
              	      <div class="board_num">번호</div>
                	    <div class="board_tit">제목</div>
                  	  <div class="board_writer">글쓴이</div>
                    	<div class="board_date">작성일</div>
                    	<div class="board_view">조회</div>
                	</div>
                	<div class="board_list_body">
                    <div class="board_item">
                      <div class="board_num">5</div>
                      <div class="board_tit"><a href="#">혜진이와 아이들이</a></div>
                      <div class="board_writer">관리자</div>
                      <div class="board_date">2019-11-20</div>
                      <div class="board_view">111</div>
                    </div>
                    <div class="board_item">
                      <div class="board_num">4</div>
                      <div class="board_tit"><a href="#">html과 css로 웹사이트를 만들어요.</a></div>
                      <div class="board_writer">관리자</div>
                      <div class="board_date">2019-11-12</div>
                      <div class="board_view">222</div>
                    </div>
                    <div class="board_item">
                      <div class="board_num">3</div>
                      <div class="board_tit"><a href="#">코딩은 안즐거워요.</a></div>
                      <div class="board_writer">관리자</div>
                      <div class="board_date">2019-11-02</div>
                      <div class="board_view">333</div>
                    </div>
                    <div class="board_item">
                      <div class="board_num">2</div>
                      <div class="board_tit"><a href="#">인생연극</a></div>
                      <div class="board_writer">관리자</div>
                      <div class="board_date">2019-10-28</div>
                      <div class="board_view">222</div>
                    </div>
                    <div class="board_item">
                      <div class="board_num">1</div>
                      <div class="board_tit"><a href="#">게시판</a></div>
                      <div class="board_writer">관리자</div>
                      <div class="board_date">2019-10-24</div>
                      <div class="board_view">111</div>
                    </div>
                </div>
            </div>
            <div class="board_search_form">
            	<input type="text" id="board_search"/>
            	<select id="board_select_list">
            		<option value="제목" selected="selected">제목</option>
 								<option value="내용">내용</option>
  							<option value="제목+내용">제목+내용</option>
            	</select>
            	<button>검색</button>
            </div>
            <div class="board_paging">
              <a href="#" class="board_bt board_first">처음 페이지</a>
              <a href="#" class="board_bt board_prev">이전 페이지</a>
              <a href="#" class="board_num on">1</a>
              <a href="#" class="board_num">2</a>
              <a href="#" class="board_num">3</a>
              <a href="#" class="board_num">4</a>
              <a href="#" class="board_num">5</a>
              <a href="#" class="board_num">6</a>
              <a href="#" class="board_num">7</a>
              <a href="#" class="board_num">8</a>
              <a href="#" class="board_num">9</a>
              <a href="#" class="board_num">10</a>
              <a href="#" class="board_bt board_next">다음 페이지</a>
              <a href="#" class="board_bt board_last">마지막 페이지</a>
            </div>
        </div>
      </div>
      	<jsp:include page="../../include/footer.jsp" />
    </body>
</html>