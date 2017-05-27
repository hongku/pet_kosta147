<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 헤더 파일 -->
	<jsp:include page="../layout/header.jsp"/>

	<!-- 컨텐츠 -->
	<button class = "btn btn-custom btn-md" onclick="location='empInsertForm.pet'">직원추가</button>
	<table width="100%" class="table table-stripedtable-hover" id="dataTables-example">
		<thead>
			<tr>
				<th>직원 코드</th>
				<th>직원 이름</th>
				<th>직원 나이</th>
				<th>(비)정규직</th>
				<th>상세 보기</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${emplist }" var="emp">
			<tr class = "board-custom">
				<td>${emp.emp_code}</td>
				<td>${emp.emp_name}</td>
				<td>${emp.emp_age}</td>
				<td>
				<c:if test="${emp.emp_job == 'full'}">
					정규직
				</c:if>
				<c:if test="${emp.emp_job == 'part'}">
					비정규직
				</c:if>
				</td>
				<td>
				<form action="empUpdateDeleteForm.pet" method="post">
					<input type="hidden" value = "${emp.emp_code}" name="emp_code">
					<input class = "btn btn-custom btn-md" type = "submit" value="상세보기">
				</form>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

	

	<!-- 푸터 파일 -->
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>