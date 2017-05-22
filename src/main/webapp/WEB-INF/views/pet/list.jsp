<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action="search.pet" method="post">
		검색 : <input type="text" size="30" name="search" placeholder="이름으로 검색이 가능합니다">
		<input type="submit" value="검색">
	</form>

	<c:forEach items="${ list }" var="list">
		이름: ${ list.pet_name }<br>
		종류: ${ list.pet_type }<br>
		성별: ${ list.pet_sex }<br>
		나이: ${ list.pet_age }<br>
		전화번호: ${ list.pet_phone }<br>
		지점: ${ list.store_code }<br>
		<input type="button" value="수정" onclick="location='updateForm.pet?pet_code=${list.pet_code}'">
		<input type="button" value="삭제" onclick="location='delete.pet?pet_code=${list.pet_code}'">
		<hr>
	</c:forEach>
</body>
</html>