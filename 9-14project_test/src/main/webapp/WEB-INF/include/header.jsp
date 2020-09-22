<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="./resources/css/include.css">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<div class="top-gnb-wrap">
  <div class="top-login">
   <div class="top-login-right">
   <c:if test="${login eq null}">
    <a href="IY_login">로그인</a>
    </c:if>
    <c:if test="${login ne null}">
    <a href="IY_logout">로그아웃</a>
    <a href="IY_mypage">마이페이지</a>
    </c:if>
    </div>
    
  </div>
  <script>
    $(window).on('scroll',function(){
       var stop=$(this).scrollTop();
       if(stop>200){
          document.getElementsByClassName("top-login").style.display="block";
       }else{
          document.getElementsByClassName("top-login").style.display="none";
       }
    })
  </script>

  <header class="top-menu">
  	<div class="top-menuBox">
    <div class="top-gnb-left">
      <a href="lifetheater" class="top_header_menu_logo"><img src="./resources/img/include/rectanglelogo.png"/></a>
    </div>
    
    <div class="top-menu-center">
      <a href="IY_listLoad">연극찾기</a>
      <a href="IY_re01">예매하기</a>
      <a href="IY_board_nlist">게시판</a>
      <a href="#">극장 찾기</a>
    </div>
    </div>
  
    
    <!-- <div class="top-menu-right">
      <a href="#">MY티켓</a>
    </div> -->
  </header>
</div>
</body>
</html>