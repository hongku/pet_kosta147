<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
	<title>달력</title>
	<link rel='stylesheet' href='<c:url value="/resources/css/jquery-ui.min.css" />' />
	<link href='<c:url value="/resources/css/fullcalendar.min.css" />' rel='stylesheet' />
	<link href='<c:url value="/resources/css/fullcalendar.print.min.css" />' rel='stylesheet' media='print' />
	<script src='<c:url value="/resources/js/moment.min.js" />'></script>
	<script src='<c:url value="/resources/js/jquery.min.js" />'></script>
	<script src='<c:url value="/resources/js/fullcalendar.min.js" />'></script>
	<script src='<c:url value="/resources/js/locale-all.js" />'></script>
	<script src='<c:url value="/resources/js/gcal.min.js" />'></script>
	<script>
		$(document).ready(function() {
			
			// 예약 날짜 리스트 가져옴
			$.ajax({
				url : "calendarFormAjax.pet",
				method : 'POST',
				type : 'json',
				error : function(request, status, error) {
					alert("code : " + request.status + "\r\nmessage : " + request.reponseText);
				},
				success : function(data) {
					for(var i=0; i< data.length;i++){
						var event = {id : data[i].reserve_code, title: '내용 : '+data[i].reserve_contents, start: data[i].start, end: data[i].end};
						$('#calendar').fullCalendar( 'renderEvent', event, true);
					}
				}
			});

			// Full Calendar
			$('#calendar').fullCalendar({
				theme: true,
				header: {
					left: 'prev,next today',
					center: 'title',
					right: 'month,agendaWeek,agendaDay,listMonth'
				},
				navLinks: true, // can click day/week names to navigate views
				editable: false,
				selectable: false,
				selectHelper: false,
				select: function(start, end) {
					window.location='calendarInsertForm.pet?start='+start.format()+'&end='+end.format()+'';
				},/* 
				googleCalendarApiKey:'AIzaSyDng0LARq8nivICK9a0AvP26FtgKcYxcoM',
				events:'ko.south_korea#holiday@group.v.calendar.google.com', */
				loading: function(bool) {
					$('#loading').toggle(bool);
				}
			});
			
			// 기본값 : 한국어
			var initialLocaleCode = 'ko'; 
			$('#calendar').fullCalendar('option', 'locale', 'ko');
			$.each($.fullCalendar.locales, function(localeCode) {
				$('#locale-selector').append(
					$('<option/>')
						.attr('value', localeCode)
						.prop('selected', localeCode == initialLocaleCode)
						.text(localeCode)
				);
			});
			// 바뀔때마다 언어 바꿈
			$('#locale-selector').on('change', function() {
				if (this.value) {
					$('#calendar').fullCalendar('option', 'locale', this.value);
				}
			});
			
		});
	</script>
</head>
<body>

	<jsp:include page="../layout/header.jsp"/>
	
	<!-- 컨텐츠 -->
	<div class = "container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>예약현황</h2>
				<hr>
			</div>
		</div>
		<div class = "row">
			<div class = "col-lg-10"></div>
			<div class = "col-lg-2 form-inline">
				<label for="name">언어</label>
				<select id='locale-selector' class = "form-control"></select>
			</div>
		</div>
		<div class = "row">
			<div id='calendar' class= "col-lg-12"></div>
		</div>
	</div>
	<!-- 푸터 파일 -->
	<jsp:include page="../layout/footer.jsp"/>
	
</body>
</html>