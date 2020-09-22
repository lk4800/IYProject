<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정 - 인연</title>
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
        <li><a href="IY_mypage_edit_user">회원정보</a>
          <ul>
            <li><a href="IY_mypage_edit_user">- 개인정보 변경</a></li>
            <li><a href="IY_mypage_edit_theater">- 선호극장 변경</a></li>
          </ul>
        </li>
        
      </ul>
    </nav>
  </div>


  <div class="mypage-right-wrap">
    <div class="mypage-contents">
        <div class="mypage-edit-user-ck">
      <div class="mypage-tit">
        <p>회원정보</p>
      </div>
       <div class="clear"></div>
        <form>
      <div class="mypage-edit-user-ck-pwd">
          <p>회원님의 개인정보 보호를 위해 비밀번호를 입력해야 합니다</p>
          <input type="password" maxlenth="20" name="pwd" id="pwd" class="mypage-input-pwd">
          
          </div>
          <div class="mypage-edit-user-ck-pwd-btn">
             <button>취소</button>
             <button>확인</button>
       
        </form>
      </div>
    </div>
    
    
    <div class="mypage-edit-user-info-wrap">
      <div class="mypage-tit">
        <p>개인 정보 수정</p>
      </div>
      <div class="clear"></div>
      <div class="mypage-edit-user-info">
        <form method="post">
          <div class="mypage-table">
            <table>
              <tr><th>이름</th><td>회원이름</td></tr>
              <tr><th>생년월일</th><td>2020년 8월 18일</td></tr>
              <tr><th>휴대폰</th><td>
              	<select>
              	  <option>010</option>
              	  <option>011</option>
              	  <option>019</option>
              	</select>-<input type="text" size="4"/>-<input type="text" size="4"/></td></tr>
              <tr><th>이메일</th><td>회원메일주소</td></tr>
            </table>
          </div>
          <div class="mypage-edit-user-ck-pwd-btn">
            <button>취소</button>
            <button>등록</button>
          </div>
        </form>
      </div>
    </div>
    </div>
  
    
  </div>



<div class="clear" ></div>

	<jsp:include page="../../include/footer.jsp" />

</body>
</html>