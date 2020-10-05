<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="./resources/css/detailPage_admin.css">

<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	type="text/javascript"></script>
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
	<div class="detail_title_wrap" mehod="post" id="dp_write_submit">
		<form action="dp_write_ok">
			<div class="detail_title_box">
				<!--큰 제목-->
				<tr>
					<td><h1>제목</h1> <input type="text" id="title"></td>
				</tr>
				<br>
				<div>
					<tr>
						<td>상영기간 <input type="text" id="Dayto"></td>
					</tr>
				</div>
				<br>

			</div>
	</div>

	<div class="detail_wrap_box">
		<div class="detail_wrap_content">
			<div class="detail_top_view">
				<!--상단-->
				<div class="detail_image_p">
					<!--포스터-->
					<img class="detail_images_box" src="./resources/img/image01.jpeg">
					<input type="image" value="image" src="#" border="0">
				</div>
				<!-- poster upload -->
				<br>
				<form id="detail_image_p">
					<fileset> <input id="file_upload_dp_poster" type="file"
						multiple>
					<br>
					<br>
					<input type="submit" value="업로드"> </fileset>
				</form>


				<div class="detail_top_right">
					<!--상품정보-->
					<div class="detail_top_right_product">
						<!--등급, 관람시간, 출연, 가격, 혜택-->
						<dl>
							<tr>
								<td>등급&nbsp;&nbsp;&nbsp;<input type="text" id="grade">
								<td><br> <br>
							</tr>
							<td>관람시간&nbsp;&nbsp;&nbsp;<input type="text" id="screentime"></td>
							<br>
							<br>
							<td>출연&nbsp;&nbsp;&nbsp;<input type="text" id="actor"></td>
							<br>
							<br>

							<div id="seat_price_in" class="seat_price_in">
								<tr>
									좌석&nbsp;&nbsp;
									<input id="seat_select" class="seat_select" type="text"
										size="7" /> 가격&nbsp;&nbsp;
									<input id="seat_price" class="seat_price" type="text" size="7" />&nbsp;원
								</tr>
								<br>
								<tr>
									좌석&nbsp;&nbsp;
									<input id="seat_select" class="seat_select" type="text"
										size="7" /> 가격&nbsp;&nbsp;
									<input id="seat_price" class="seat_price" type="text" size="7" />&nbsp;원
								</tr>
								<br>
								<tr>
									좌석&nbsp;&nbsp;
									<input id="seat_select" class="seat_select" type="text"
										size="7" /> 가격&nbsp;&nbsp;
									<input id="seat_price" class="seat_price" type="text" size="7" />&nbsp;원
								</tr>
								<br>
								<tr>
									좌석&nbsp;&nbsp;
									<input id="seat_select" class="seat_select" type="text"
										size="7" /> 가격&nbsp;&nbsp;
									<input id="seat_price" class="seat_price" type="text" size="7" />&nbsp;원
									</br>
									</br>
									</br>
								</tr>
							</div>
						</dl>
					</div>
					<!--포인트-->
					<div class="detail_top_right_down">
						<!--공연시간안내, 배송정보-->
						<dl>
							<tr>
								<br>
								<td>공연시간 안내</td>
								<br />
								<br />
								<textarea>안녕?</textarea>
							</tr>
						</dl>
						<br>
					</div>
					
					
					
					
				</div>
			</div>
		</div>

		<div class="detail_body_view">
			<div class="detail_body_note">
				<textarea id="summernote" class="summernote"></textarea>
			</div>
					<div id="detail_btn">
			<button id="detail_btn_list" onclick="location='IY_listLoad_admin'">목록</button>		
			<button type='button' id="detail_btn_submitbtn" onclick="location='IY_detailPage_schedule'">등록</button>
		</div>
			
		</div>
	</div>


	<!-- summernote script start -->
	<script>
$(document).ready(
function() {
$('#summernote').summernote({
width : 1200,
height : 500,
callbacks : { //여기 부분이 이미지를 첨부하는 부분
onImageUpload : function(files) {
uploadSummernoteImageFile(
files[0], this);
}
}
});

/*이미지 파일 업로드 */
function uploadSummernoteImageFile(file, editor) {
data = new FormData();
data.append("file", file);
$.ajax({data : data,
type : "POST",
url : "${pageContext.request.contextPath}/uploadSummernoteImageFile",
contentType : false,
processData : false,
success : function(data) {
console.log(data);
alert(data.url);
//항상 업로드된 파일의 url이 있어야 한다.
$(editor).summernote(
'insertImage',
data.url);
}
});
}
});
	</script>
	<!-- summernote script end -->

	<jsp:include page="../../include/footer.jsp" />
</body>
</html>