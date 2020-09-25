<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매내용</title>
<link rel="stylesheet" type="text/css" href="./resources/css/res11.css" />
<link rel="stylesheet" type="text/css"
	href="./resources/css/res-conts.css" />
<link rel="stylesheet" type="text/css"
	href="./resources/calendar-css.css" />

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>
<body>

	<div class="quick-reservation-title">
		<h1>빈칸빈칸</h1>
	</div>
	<%-- iframe에서 보여질 영역--%>
	<div class="quick-reservation">

		<%-- location-choice--%>
		<div class=location-choice>
			<p>지역</p>
			<%--list-area --%>
			<div class=list-area id=lc-list-area>


				<%--all-list --%>
				<div class=all-list id="lc-all-list">

				
						<%--sidolist --%>
						<div class=sidolist>
							<ul>
								<li><button class="resbtn" id="11" onclick="sido_codebtn();">
										<span class="text">서울특별시</span>
									</button></li>
								<li><button class="resbtn" id="26" onclick="sido_codebtn();">
										<span class="text">부산광역시</span>
									</button></li>
								<li><button class="resbtn" id="27" onclick="sido_codebtn();">
										<span class="text">대구광역시</span>
									</button></li>
								<li><button class="resbtn" id="28" onclick="sido_codebtn();">
										<span class="text">인천광역시</span>
									</button></li>
								<li><button class="resbtn" id="29" onclick="sido_codebtn();">
										<span class="text">광주광역시 </span>
									</button></li>
								<li><button class="resbtn" id="30" onclick="sido_codebtn();">
										<span class="text">대전광역시</span>
									</button></li>
								<li><button class="resbtn" id="31" onclick="sido_codebtn();">
										<span class="text">울산광역시</span>
									</button></li>
								<li><button class="resbtn" id="36" onclick="sido_codebtn();">
										<span class="text">세종특별자치시</span>
									</button></li>
								<li><button class="resbtn" id="41" onclick="sido_codebtn();">
										<span class="text">경기도</span>
									</button></li>
								<li><button class="resbtn" id="42" onclick="sido_codebtn();">
										<span class="text">강원도</span>
									</button></li>
								<li><button class="resbtn" id="43" onclick="sido_codebtn();">
										<span class="text">충청북도</span>
									</button></li>
								<li><button class="resbtn" id="44" onclick="sido_codebtn();"><%--.resbtn val id = this.getid() data{id:id}  --%>
										<span class="text">충청남도</span>
									</button></li>
								<li><button class="resbtn" id="45" onclick="sido_codebtn();">
										<span class="text">전라북도</span>
									</button></li>
								<li><button class="resbtn" id="46" onclick="sido_codebtn();">
										<span class="text">전라남도</span>
									</button></li>
								<li><button class="resbtn" id="47" onclick="sido_codebtn();">
										<span class="text">경상북도</span>
									</button></li>
								<li><button class="resbtn" id="48" onclick="sido_codebtn();">
										<span class="text">경상남도</span>
									</button></li>
								<li><button class="resbtn" id="50" onclick="sido_codebtn();">
										<span class="text">제주특별자치도</span>
									</button></li>
								<li><button class="resbtn" id="1">
										<span class="text">선호극장1</span>
									</button></li>
								<li><button class="resbtn" id="2">
										<span class="text">선호극장2</span>
									</button></li>
								<li><button class="resbtn" id="3">
										<span class="text">선호극장3</span>
									</button></li>
							</ul>
						</div>
						<%--/sidolist --%>
				

					<%--dogunlist --%>
					<div class=gugunlist>
						<ul>
							<c:if test="${!empty glist}">
								<c:forEach var="a" items="${glist}">
									<li>${a.gugun_name}</li>
								</c:forEach>
							</c:if>
							<c:if test="${empty glist}">
								<li>목록이 없습니다.</li>
							</c:if>

						</ul>
					</div>
					<%--/dogunlist --%>
				</div>
				<%--all-list --%>

			</div>
			<%--list-area --%>
		</div>
		<%--location-choice --%>

		<div class="theater-choice">
			<p>극장</p>
			<div class=list-area id=tc-list-area>

				<div class=all-list id="tc-all-list">

					<div class=list>
						<ul>
							<li><button class="resbtn">
									<span class="theater-grade">12</span> <span class="text">다만
										탁에서 구하소서</span>
								</button></li>
							<li><button class="resbtn">
									<span class="theater-grade">12</span> <span class="text">다만
										탁에서 구하소서</span>
								</button></li>
							<li><button class="resbtn">
									<span class="theater-grade">12</span> <span class="text">다만
										탁에서 구하소서</span>
								</button></li>
							<li><button class="resbtn">
									<span class="theater-grade">12</span> <span class="text">다만
										탁에서 구하소서</span>
								</button></li>
						</ul>
					</div>



				</div>
			</div>
		</div>

		<div class="day-choice">
			<p>날짜</p>
			<div class=list-area id=dc-list-area>

				<div class=all-list id="dc-all-list">


					<div id="calendarForm"></div>

				</div>
			</div>
		</div>
	</div>
	<!-- quick-reservation -->
</body>



<%-- 달력  js --%>

<script>
	(function() {
		calendarMaker($("#calendarForm"), new Date());
	})();

	var nowDate = new Date();
	function calendarMaker(target, date) {
		if (date == null || date == undefined) {
			date = new Date();
		}
		nowDate = date;
		if ($(target).length > 0) {
			var year = nowDate.getFullYear();
			var month = nowDate.getMonth() + 1;
			$(target).empty().append(assembly(year, month));
		} else {
			console.error("custom_calendar Target is empty!!!");
			return;
		}

		var thisMonth = new Date(nowDate.getFullYear(), nowDate.getMonth(), 1);
		var thisLastDay = new Date(nowDate.getFullYear(),
				nowDate.getMonth() + 1, 0);

		var tag = "<tr>";
		var cnt = 0;
		//빈 공백 만들어주기
		for (i = 0; i < thisMonth.getDay(); i++) {
			tag += "<td></td>";
			cnt++;
		}

		//날짜 채우기
		for (i = 1; i <= thisLastDay.getDate(); i++) {
			if (cnt % 7 == 0) {
				tag += "<tr>";
			}

			tag += "<td><button>" + i + "</button></td>";
			cnt++;
			if (cnt % 7 == 0) {
				tag += "</tr>";
			}
		}
		$(target).find("#custom_set_date").append(tag);
		calMoveEvtFn();

		function assembly(year, month) {
			var calendar_html_code = "<table class='custom_calendar_table'>"
					+ "<colgroup>"
					+ "<col style='width:81px'/>"
					+ "<col style='width:81px'/>"
					+ "<col style='width:81px'/>"
					+ "<col style='width:81px'/>"
					+ "<col style='width:81px'/>"
					+ "<col style='width:81px'/>"
					+ "<col style='width:81px'/>"
					+ "</colgroup>"
					+ "<thead class='cal_date'>"
					+ "<th><button type='button' class='prev'><</button></th>"
					+ "<th colspan='5'><p><span>"
					+ year
					+ "</span>년 <span>"
					+ month
					+ "</span>월</p></th>"
					+ "<th><button type='button' class='next'>></button></th>"
					+ "</thead>"
					+ "<thead  class='cal_week'>"
					+ "<th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th>"
					+ "</thead>" + "<tbody id='custom_set_date'>" + "</tbody>"
					+ "</table>";
			return calendar_html_code;
		}

		function calMoveEvtFn() {
			//전달 클릭
			$(".custom_calendar_table").on(
					"click",
					".prev",
					function() {
						nowDate = new Date(nowDate.getFullYear(), nowDate
								.getMonth() - 1, nowDate.getDate());
						calendarMaker($(target), nowDate);
					});
			//다음날 클릭
			$(".custom_calendar_table").on(
					"click",
					".next",
					function() {
						nowDate = new Date(nowDate.getFullYear(), nowDate
								.getMonth() + 1, nowDate.getDate());
						calendarMaker($(target), nowDate);
					});
			//일자 선택 클릭
			$(".custom_calendar_table").on(
					"click",
					"td",
					function() {
						$(".custom_calendar_table .select_day").removeClass(
								"select_day");
						$(this).removeClass("select_day")
								.addClass("select_day");
					});
		}
	}
	
	<%--
	$('.resbtn').click(function(){
		var sido_code;
		const sido_codeInfo ={
			sido_code : document.getElementById(this) //시도코드 id값을 sido_code에 넣음
		} 
		
		$.ajax({
			url : "/controller/IY_getGugun",
			type : "POST",
			cache : false,
			data : JSON.stringify(sido_codeInfo),
			headers:{"Content-Type ":"application/json"},
			success : function(data) {
				
			
				//$('#id').text(data);
				//alert('success');
			},
	error : function(request, status, error) {
		var msg = "ERROR : " + request.status + "<br>"
		msg += +"내용 : " + request.responseText + "<br>" + error;
		console.log(msg);
	}
});
	});
	--%>
	<%-- sido 버튼 클릭시 해당 값 출력하기 onclick="sido_codebtn();" --%>

	function sido_codebtn() {

		
		var sido_code;
		const sido_codeInfo ={
			sido_code : document.getElementById(this) //시도코드 id값을 sido_code에 넣음
		} 
			console.log(sido_code);
			
			$.ajax({
				url : "/controller/IY_getGugun",
				type : "POST",
				cache : false,
				data : JSON.stringify(sido_codeInfo),
			  
				headers:{"Content-Type ":"application/json"},
				success : function(data) {
					$('#id').text(data);
					window.location.reload();
					
					//alert('success');
				},
		error : function(request, status, error) {
			var msg = "ERROR : " + request.status + "<br>"
			msg += +"내용 : " + request.responseText + "<br>" + error;
			console.log(msg);
		}
	});
	};	

</script> 


</html>










