<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>약품 리스트</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#search_box").keyup(function() {
			$.ajax({ // Ajax 요청을 작성하고 GET 방식으로 전송함.
				url : "medicamentSearchAjax.pet",
				method : 'POST',
				type : 'json',
				data : {
					search : $(this).val()
				},
				success : function(result) {
					var contents = '';
					for (var i = 0; i < result.length; i++) {
						contents = contents + result[i] + "<br>";
					}
					$("#search_display").html(contents);
				},
				error : function(result, status, er) {
					$("#search_display").text(er);
				}
			}); // Ajax 응답을 정상적으로 받으면 실행됨.
		});
	});
</script>
</head>
<body>
	<!-- 헤더 파일 -->
	<jsp:include page="../layout/header.jsp"/>

	<!-- 컨텐츠 -->
	<div class="blockquote-reverse input-group custom-search-form col-sm-3">
		<form action="medicamentListForm.pet" method="get">
			<span class="input-group-btn">
				<input type="text" name="search" id= "search_box" class="form-control" placeholder="Search...">
				<button class="btn btn-default" type="button">
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</span>
			<div id="search_display"></div>
		</form>
	</div>
	<table width="100%" class="table table-striped table-bordered table-hover"
		id="dataTables-example">
		<thead>
			<tr class="info">
				<th>약품 코드</th>
				<th>약품 이름</th>
				<th>개수</th>
				<th>가격</th>
				<th>종류</th>
				<th>제조일자</th>
				<th>유통기한</th>
				<th>약품주기</th>
				<th>지점코드</th>
				<th>수정/삭제</th>
				<th>요청</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var ="var">
			<tr>
				<td>${var.medicament_code}</td>
				<td onclick = "location='medicamentDetailForm.pet?medicament_code=${var.medicament_code}'">${var.medicament_name}</td>
				<td>${var.medicament_amount}</td>
				<td>${var.medicament_cost}원</td>
				<td>${var.medicament_category}</td>
				<td>${var.medicament_mandate}</td>
				<td>${var.medicament_exdate}</td>
				<td>
				<c:if test="${var.medicament_category == '주사'}">
					${var.medicament_cycle}개월
				</c:if>
				<c:if test="${var.medicament_category != '주사'}">
					해당없음
				</c:if>
				</td>
				<td>${var.store_code}</td>
				<td>
					<button class="btn btn-md btn-info"
					onclick = "location='medicamentUpdateForm.pet?medicament_code=${var.medicament_code}'">수정</button>
					<button class="btn btn-md btn-info"
					onclick = "location='medicamentDeletePro.pet?medicament_code=${var.medicament_code}'">삭제</button>
					<button class="btn btn-md btn-info"> 미리보기 </button>
				</td>
				<td>
					<form action = "medicamentRequestPro.pet" method = "post">
						<input type = "hidden" name = "medicament_code" value = "${var.medicament_code}"/>
						<input type = "hidden" name = "medicament_name" value = "${var.medicament_name}"/>
						<input type = "hidden" name = "medicament_cost" value = "${var.medicament_amount}"/>
						<input type = "hidden" name = "medicament_manDate" value = "${var.medicament_mandate}"/>
						<input type = "hidden" name = "medicament_exDate" value = "${var.medicament_exdate}"/>
						<input type = "hidden" name = "store_code" value = "${var.store_code}"/>
						<select name = "order_to" class="form-control">
						<se:authentication property="name" var="username"/>
						<c:forEach items = "${storeCodeList}" var = "store_code">
						<c:if test="${username != store_code}">
							<option value = "${store_code}">${store_code}</option>
						</c:if>
						</c:forEach>
						</select>
						<input type="number" min = "0" name="medicament_amount" class="form-control"/>
						<input class="btn btn-md btn-info" type = "submit" value="요청하기"/>
					</form>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="blockquote-reverse">
		<button onclick = "location='medicamentInsertForm.pet'" class="btn btn-md btn-info">약품 추가</button>
		<br><kbd> ctrl + f</kbd> 를 이용해서 원하는 약을 찾으세요
		<br>page
		<c:forEach begin="1" end = "${page.pageTotalNum}" var= "pageNum">
			<button class="btn btn-sm btn-default"
			onclick = "location='medicamentListForm.pet?pageNum=${pageNum}'">${pageNum}</button>
		</c:forEach>
	</div>
	
	<!-- 푸터 파일 -->
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>