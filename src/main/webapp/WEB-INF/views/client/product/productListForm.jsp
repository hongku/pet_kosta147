<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
	<title>상품 목록</title>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	<!-- 헤더 파일 -->
	<jsp:include page="../../layout/header.jsp"/>

	<!-- 컨텐츠 -->
	<div class="container">
		<!-- 헤더 -->
		<header class="jumbotron hero-spacer" style="background-color: #fff;">
			<h1>애완동물 용품</h1>
			<p>Zooital에서 제공하는 애완동물 용품을 살펴보세요!</p>
		</header>
		<hr>
		
		<!-- Title -->
		<div class="row">
			<div class="col-lg-9">
				<h3>상품 리스트</h3>
			</div>
			<div class="col-lg-3">
				<div class="input-group">
					<form action="productListForm.pet" method="post">
						<span class="input-group-btn">
							<select class="form-control" name = "product_category">
								<option value = "음식" selected="selected">음식</option>
								<option value = "놀이">놀이</option>
								<option value = "의류">의류</option>
								<option value = "기타">기타</option>
							</select>
							<button class="btn btn-custom" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</span>
					</form>
				</div>
			</div>
		</div>
		
		<!-- 상품 목록 -->
		<div class="row text-center">
		<c:forEach items = "${list}" var="product">
			<div class="col-md-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<img style="width: 200px; height: 225px;" src="<c:url value="/resources/images/product_img/${product.product_url}" />" alt="">
					<div class="caption">
						<h3>${product.product_name}</h3>
						<p>가격 : ${product.product_cost}원 / 개수 : ${product.product_amount}개</p>
						<p class="form-inline">
							<a href="productDetailForm.pet?product_code=${product.product_code}" class="btn btn-custom btn-md">살펴보기</a>
							<!-- 장바구니 -->
							<se:authorize access = "isAuthenticated()">
							<button type="button" class = "btn btn-custom btn-md" data-toggle="modal" data-target="#basketModal${product.product_code}">
								장바구니 담기
							</button>
							</se:authorize>
							<div class="modal fade" id="basketModal${product.product_code}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h4 class="modal-title" id="myModalLabel">장바구니</h4>
										</div>
										<form action = "../basket/baksetInsertPro.pet" method="post">
											<div class="modal-body">
												<img src="<c:url value="/resources/images/product_img/${product.product_url}" />" alt="">
												<hr>
												<h3>${product.product_name}</h3>
												<p>몇개를 담겠습니까?</p>
												<input type="number" min = "0" name="product_amount" class="form-control"/>
												<input type="hidden" name="product_code" value="${product.product_code}"/>
											</div>
											<div class="modal-footer">
												<button type="button" class = "btn btn-custom btn-md" data-dismiss="modal">취소</button>
												<input type="submit" class = "btn btn-custom btn-md" value="담기">
											</div>
										</form>
									</div>
								</div>
							</div><!-- 모달 끝 -->
						</p>
						<se:authorize access="hasAnyRole('ROLE_SUPER_PART', 'ROLE_SUPER_FULL')">
						<p class="form-inline"> <!-- 관리자만 볼 수 있게.. -->
							<a href="productUpdateForm.pet?product_code=${product.product_code}" class="btn btn-custom btn-md">수정</a>
							<!-- 삭제 -->
							<button type="button" class = "btn btn-custom btn-md" data-toggle="modal" data-target="#deleteModal${product.product_code}">
								삭제
							</button>
							<div class="modal fade" id="deleteModal${product.product_code}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h4 class="modal-title" id="myModalLabel">주의! 삭제 확인</h4>
										</div>
										<div class="modal-body">
											삭제 하시겠습니까?
										</div>
										<div class="modal-footer">
											<button type="button" class = "btn btn-custom btn-md" data-dismiss="modal">취소</button>
											<button class = "btn btn-custom btn-md" name="visited" onclick = "location='productDeletePro.pet?product_code=${product.product_code}'">삭제</button>
										</div>
									</div>
								</div>
							</div><!-- 모달 끝 -->
						</p>
						</se:authorize>
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
		<hr>
	</div>
	
	<!-- 푸터 파일 -->
	<jsp:include page="../../layout/footer.jsp"/>
</body>
</html>