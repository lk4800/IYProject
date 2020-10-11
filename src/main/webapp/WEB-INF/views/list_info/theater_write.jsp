<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="./resources/css/basictheaterwrite.css">

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
<script src="resources/js/summernote-ko-KR.js">
	
</script>

</head>
<body>
	<jsp:include page="../../include/header.jsp" />
	
	<form id="basic_theater_form" name="basic_theater_form" action="/IY_theater_write_ok" onsubmit="return false;" method="post">
	
	<div class="info_wrap" id="info_submit">
				<!--큰 제목-->
			<div class="detail_title_box">
				<p>
					<span>제목</span><input type="text" id="td_title" name="td_title">
				</p>
				<br>
				</div>
					<p class="running_time">
						<span>상영기간 </span><br><input type="text" id="td_viewdays" name="td_viewdays">
						<br>
						<span>YYYY.MM.DD~YYYY.MM.DD로 입력해주세요</span>
					</p>
					
				<br>
				</div>


	<div class="detail_wrap_box">
		<div class="detail_wrap_content">
			<div class="detail_top_view">
				<!--상단-->
				<!-- poster upload -->
				<br>
				
					<input id="file_upload" type="file"
						multiple/> 
				
						<br>
					<br>



				<div class="detail_top_right">
					<!--상품정보-->
					<div class="detail_top_right_product">
						<!--등급, 관람시간, 출연, 가격, 혜택-->
							<div class="theater_agegradeBox">
								등급 <select id="td_agegrade" name="td_agegrade">
									<option value="전체 이용 관람가">전체 이용 관람가</option>
									<option value="12세 이용 관람가">12세 이용 관람가</option>
									<option value="15세 이용 관람가">15세 이용 관람가</option>
									<option value="19세 이용 관람가">19세 이용 관람가</option>
								</select>
							</div>
							<br>
							<div class="td_location_box" id="td_location_box">
								지역 <select id="td_location" name="td_location">
									<option value="서울특별시">서울특별시</option>
									<option value="부산광역시">부산광역시</option>
									<option value="대구광역시">대구광역시</option>
									<option value="인천광역시">인천광역시</option>
									<option value="광주광역시">광주광역시</option>
									<option value="대전광역시">대전광역시</option>
									<option value="울산광역시">울산광역시</option>
									<option value="세종특별자치시">세종특별자치시</option>
									<option value="경기도">경기도</option>
									<option value="강원도">강원도</option>
									<option value="충청북도">충청북도</option>
									<option value="충청남도">충청남도</option>
									<option value="전라북도">전라북도</option>
									<option value="전라남도">전라남도</option>
									<option value="경상북도">경상북도</option>
									<option value="경상남도">경상남도</option>
									<option value="제주특별자치도">제주특별자치도</option>
								</select>
							</div>
							<br>
							<br>
							<p>관람시간&nbsp;&nbsp;&nbsp;<input type="text" id="td_runtime"></p>
							<br>
							<br>
							<p>출연&nbsp;&nbsp;&nbsp;<input type="text" id="td_actor"></p>
							<br>
							<br>
						<div>
							<p id="notice_tag">
								<br>
								<span>공연시간 안내</span>
								<br />
								<br />
								<textarea id="td_tinfo" rows="10px" cols="95px"></textarea>
							</p>
						</div>

							<div id="seat_price_in" class="seat_price_in">
								
							</div>
								<br>
								<br>
					</div>
					<!--포인트-->
					<div class="detail_top_right_down">
						<!--공연시간안내, 배송정보-->
						<br>
						<div id="roundDayBox">
							<span>티켓 정보 입력</span>&nbsp;
							<!-- <button onclick="ticketPlus();">+</button> -->
							<br><br>
								공연날짜 : <input type='date' id="date" name='userBirthday' value='2020-03-30'/><br />
								<span id="roundday">
								<br>
								
								시작시간 :
								<input type="time" name="starttime" id="starttime" class="playtime1" size="7"/>
								종료시간:
								<input type="time" name="endtime" id="endtime" class="playtime1" size="7"/>
								
								<p>좌석&nbsp;&nbsp;:
									<input id="seat_select1" class="seat_select1" type="text"
										size="7" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가격&nbsp;:&nbsp;
									<input id="seat_price1" class="seat_price1" type="text"
										size="7" />&nbsp;원
								</p>
							</span>
							<br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

		<div class="detail_body_view">
			<div class="detail_body_note">
				<textarea id="td_detailposter" class="td_detailposter"></textarea>
			</div>
			<div id="detail_btn">
				<button id="detail_btn_list" onclick="location='IY_theater_list'">목록</button>
				<button type='submit' id="detail_btn_submitbtn"	onclick="check()">확인</button>
			</div>
		</div>
</form>

	<!-- summernote script start -->
	<script>
	var a = 1;
	var url;
$(document).ready(function(){
	$('#td_detailposter').summernote({
		width:1200,
		height:500,
		callbacks: {	//여기 부분이 이미지를 첨부하는 부분
			onImageUpload : function(files) {
				uploadSummernoteImageFile(files[0],this);
			}
		}
	});

	
	
	function uploadPosterImageFile(file, editor) {
		data = new FormData();
		data.append("file", file);
		$.ajax({
			data : data,
			type : "POST",
			url : "${pageContext.request.contextPath}/uploadPosterImageFile",
			contentType : false,
			processData : false,
			success : function(data) {
				console.log(data);
				alert(data.url);
            	//항상 업로드된 파일의 url이 있어야 한다.
				$(editor).summernote('insertImage', data.url);
			}
		});
	}
});


function ticketPlus(){
	if(a > 3){
		alert('등록할수있는 연극최대 갯수입니다.');
	}else{
		a+=1;
		htmls="";
		htmls+="<span>티켓 정보 입력</span>&nbsp;<br><br> 공연날짜 : <input type='date' id='runtimeDate"+a+"' name='userBirthday'value='2020-03-30' /><br /> <span id='roundday'> <br>";
		htmls+="시작시간 : <input type='time' name='starttime' id='starttime"+a+"' class='playtime1' size='7' /> 종료시간: <input type='time' name='endtime' id='endtime"+a+"' class='playtime1' size='7' />";
		htmls+="<p>좌석&nbsp;&nbsp;: <input id='seat_select"+a+"' class='seat_select1'type='text' size='7' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가격&nbsp;:&nbsp;";
		htmls+="<input id='seat_price"+a+"' class='seat_price1' type='text' size='7' />&nbsp;원 </p> </span> <br>";
	$("#roundDayBox").append(htmls);
	alert(a);
	}
}



function check(){ //연극 기본정보를 DB로 넘긴후 티켓팅 재기함수를 부르는 함수							
	
	if($.trim($('#td_title').val())==""){ //입력 경고창
		 alert("제목을 입력하세요!");
		 $("#td_title").val('').focus();
		return false;
		 }
	else if($.trim($('#td_viewdays').val())==""){
		 alert("상영기간을 입력하세요!");
		 $("#td_viewdays").val('').focus();
		return false;
		 }
	else if($.trim($('#td_runtime').val())==""){
		 alert("관람시간을 입력하세요!");
		 $("#detail_runtime").val('').focus();
		return false;
		 }
	else if($.trim($('#td_actor').val())==""){
		 alert("출연진 정보를 입력하세요!");
		 $("#td_actor").val('').focus();
		return false;
		 }
	else if($.trim($('#td_tinfo').val())==""){
		 alert("공연시간안내을 입력하세요!");
		 $("#td_tinfo").val('').focus();
		return false;
		 }
	else if($.trim($('#td_detailposter').val())==""){
		 alert("내용 및 포스터를 입력하세요!");
		 $("#td_detailposter").val('').focus();
		return false;
		 } else{
			 const theater_write={ 
					 td_title:$("#td_title").val(),
					 td_viewdays:$("#td_viewdays").val(),
					 td_agegrade:$("#td_agegrade").val(),
					 td_actor:$("#td_actor").val(),
					 td_tinfo:$("#td_tinfo").val(),
					 td_detailposter:$("#td_detailposter").val(),
					 td_location:$("#td_location").val(),
					 td_ticketinginfo :$("#date").val()+' '+$("#starttime").val()+'~'+$("#date").val()+' '+$("#endtime").val(),
		    	};
			 console.log(theater_write);
			 
			 
			 $.ajax({
			        type: "POST",
			        url: 'IY_theater_write_ok',
			        headers:{"Content-Type":"application/json"},
			        data:JSON.stringify(theater_write),
			        processData: false,
			        contentType: false,
			        success: function (data) {
			            alert("basictheater등록 완료");
			           
			            console.log(data);
			        }
			 });
			 
		 }
}

function theaterInfo(url){ //
	const boardInfo={
			 td_title:$("#td_title").val(),
			 td_viewdays:$("#td_viewdays").val(),
			 td_agegrade:$("#td_agegrade").val(),
			 td_actor:$("#td_actor").val(),
			 td_tinfo:$("#theater_notice").val(),
			 td_detailposter:$("#summernote").val(),
			 td_ticketinginfo:$("#td_ticketinginfo").val(),
			 td_location:$("#basicctheater_location").val(),
			 td_mainposter:url,
   		email:"${login.email}"
   	};
	console.log(boardInfo);
	$.ajax({
        type: "post",
        url: 'td_insert',
        headers:{"Content-Type":"application/json"},
        data:JSON.stringify(boardInfo),
        processData: false,
        contentType: false,
        success: function (data) {
            alert("basictheater등록 완료");
            ticketInfoInsert(data.td_no);
            console.log(data);
        }
    });
	
}

function ticketInfoInsert(td_no){ //ticketIfoInsert
	alert(a);
	if(a>=1){
		var runtimeDate = $("#runtimeDate"+a).val();
		var starttime = $("#starttime"+a).val();
		var endtime = $("#endtime"+a).val();
	console.log(td_no);
		var td_no = td_no;
		var td_runtime = runtimeDate+" "+starttime+"~"+endtime;
		var td_stgrade = $("#seat_select"+a).val();
		var td_stprice = $("#seat_price"+a).val();
		
		console.log(td_no);
		console.log(td_runtime);
		console.log(td_stgrade);
		console.log(td_stprice);
		
		const ticketInfo={
				td_no:td_no,
				td_runtime:td_runtime,
				td_stgrade:td_stgrade,
				td_stprice:td_stprice
		}
		console.log(ticketInfo);
		$.ajax({
	        type: "post",
	        url: 'ticket_insert',
	        headers:{"Content-Type":"application/json"},
	        data:JSON.stringify(ticketInfo),
	        processData: false,
	        contentType: false,
	        success: function () {
	            alert("티켓팅정보"+a+" 완료");
	            a = a-1;
	            ticketInfoInsert(td_no);
	        }
	    });
		
	}else{
		alert('티켓팅 전부 등록 완료');
		//location해야댐
	}
}

</script>
		    		 <!-- email:"${login.email}" -->
<!-- email:"${login.email}" -->
	<jsp:include page="../../include/footer.jsp" />
</body>
</html>
