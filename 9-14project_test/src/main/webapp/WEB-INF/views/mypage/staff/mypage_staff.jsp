<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel='stylesheet' type='text/css' href="./resources/css/mypage.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="../../../include/header.jsp" />

<div class="container">
  <div class="mypage-left-lnb-wrap">
    <nav class="mypage-left-manu">
      <p class="mypage-left-manu-tit">
      	<a href="IY_mypage">나의 인연</a>
      </p>
      <ul>
        <li><a href="#">게시글 내역</a>
        <li><a href="#">문의 내역</a>
        <li><a href="IY_mypage_edit_user">회원정보</a>
          <ul class="mypage-lnb-depth">
            <li><a href="IY_mypage_edit_user">- 개인정보 변경</a></li>
          </ul>
        </li>
      </ul>
    </nav>
  </div>

  <div class="mypage-right-wrap">
   
   
   <!-- 등록 공연 -->
   <div class="mypage-home-board-wrap">
     <div class="mypage-tit">
       <p>등록신청한 공연</p>
         <a href="#" class="mypage-tit-link">+ 더보기</a>
     </div>
     <div class="clear"></div>
     <div class="mypage-home-res-items-wrap">
       <div class="mypage-home-res-items">
            <div class="mypage-res-item">
              
                <a href="#" class="mypage-res-img">
                  <img src="http://www.kopis.or.kr/upload/pfmPoster/PF_PF166781_200812_101930.gif"/></a>
              
              <table class="mypage-res-cont">
                
                <tr>
                  <th>연극명</th>
                  <td colspan="3">
                    <p><span>연극제목</span></p>
                  </td>
                </tr>
                <tr>
                  <th>극장</th><td>예술의 전당</td>
                </tr>
                <tr>
                  <th>상영일시</th><td colspan="3">2020.08.18~2020.10.21</td>
                </tr>
               
              </table>
              <div class="mypage-res-item-price">
                <table>
                   <tr>
                  <th>결제일시</th><td colspan="3">2020.08.17 <button>결제정보</button><button>취소하기</button></td>
                </tr>
                </table>
              </div>
            </div>
          </div>
     </div>
   </div>
   
   
    <!-- 게시글 - 홍보 -->
      <div class="mypage-home-board-wrap">
        <div class="mypage-tit">
          <p>내가 쓴 게시글</p>
            <a href="#" class="mypage-tit-link">+ 더보기</a>
        </div>
         <div class="clear"></div>
        <div class="mypage-table">
          <table border="1">
            <tr><th class="mypage-table-bno">번호</th><th class="mypage-table-btit">제목</th><th class="mypage-table-bdate">작성일</th><th class="mypage-table-bhit">조회수</th></tr>
            <c:if test="${empty boardlist}">
            <tr><th colspan="4"> 목록이 없습니다~<br/><a href="#">글쓰러가기</a></th></tr>
            </c:if>
            <c:if test="${!empty boardlist}">
              <c:forEach var="board" items="${boardlist}">
                <tr><th>${board.fb_num}</th><th><a href="IY_board_fcont?fb_num=${board.fb_num}">${board.fb_title}</a></th><th>${board.fb_date}</th><th>${board.fb_hit}</th></tr>
              </c:forEach> 
            </c:if>
          </table>
        </div>
      </div>
  </div>
</div>


<div class="clear" ></div>

<jsp:include page="../../../include/footer.jsp" />
</body>
</html>