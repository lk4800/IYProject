<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지-게시판</title>
<link rel='stylesheet' type='text/css' href="./resources/css/main.css"/>
<link rel='stylesheet' type='text/css' href="./resources/css/mypage.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>

	<jsp:include page="../../include/header.jsp" />


<div class="container">
  <div class="mypage-left-lnb-wrap">
    <nav class="mypage-left-manu">
      <p class="mypage-left-manu-tit">
      	<a href="IY_mypage">나의 인연</a>
      </p>
      <ul>
        <li><a href="IY_mypage_reservation">예매내역</a></li>
        <li><a href="IY_mypage_point">포인트 내역</a></li>
        <li><a href="#">게시글 내역</a>
        <li><a href="IY_mypage_edit_user">회원정보</a>
          <ul class="mypage-lnb-depth">
            <li><a href="IY_mypage_edit_user">- 개인정보 변경</a></li>
            <li><a href="IY_mypage_edit_theater">- 선호극장 변경</a></li>
          </ul>
        </li>
      </ul>
    </nav>
  </div>


  <div class="mypage-right-wrap">
    <!-- ############# 게시판 ###################### -->
    
     <div class="mypage-home-board-wrap">
        <div class="mypage-tit">
          <p>내가 쓴 게시글</p>
           
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

</body>
</html>