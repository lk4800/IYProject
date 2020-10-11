<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기2</title>
<link rel="stylesheet" type="text/css" href="./resources/css/res03-css.css" />
<link rel="stylesheet" type="text/css" href="./resources/css/main.css" />
</head>
<body>
		<jsp:include page="../../include/header.jsp" />
<script>
function payready(){
	alert('결제를 시작합니다!');
}
</script>
	<div class="body-wrap">

		<div class=body-wrap-block1>
			 <span id="mes">할인혜택</span><br><br><Br>
			 현재 포인트 : <span id="mes2">1200  point</span><br><br><br>
			 마이 포인트 사용: 1000   최종 결제금액 : 9000<br><br><br><br><br><br><br>
			 
			 <hr>
			<span id="mes3">결제수단</span><br><br><br>
			 
			<input type="radio" value="신용/체크카드 "> &nbsp; 카드사 선택   &nbsp;:  &nbsp; <select>
			<option class="mes04" selected>국민은행</option>
			<option class="mes03">신한은행</option>
			<option class="mes03">기업은행</option>
			<option class="mes03">농협은행</option>
			<option class="mes03">산업은행</option>
			<option class="mes03">전북은행</option>
			<option class="mes03">부산은행</option>
			</select>
			 
			 
			 <br><br><br>  
			 
			<input type="radio" value="카카오페이 "> &nbsp; 카카오페이
			 
			 
			

		</div>


		<div class=body-wrap-block3>
		<div class= body-wrap-block3-a1><span id="titlee">연극제목 : 시크릿</span><br><br>
		연극지역 : <br><br>
		날짜 :  2020-08-18<br><br>
		시간 :    17:30 ~ 18:45<br><br>
		1매가격 : 10000 <br><br>
		매수 :  1매<br><br><br>
		최종 결제 금액 : 9000<br><br>
		<br><Br>
		</div>
		<img src="./resources/img/reservation/secret.jpg" width="350px" height="230px"/>
		<button id="btn03" value="이전" onclick="location='IY_re02';">이전</button>
		<button id="btn04" value="이전" onclick="payready();">결제</button>
		</div>

	</div>

	<jsp:include page="../../include/footer.jsp" />
</body>
</html>