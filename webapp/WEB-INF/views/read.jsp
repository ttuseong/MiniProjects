<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>layout1</title>

<!-- style -->
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/lightgallery.min.css">
<link rel="stylesheet" href="assets/css/owl.theme.css">
<link rel="stylesheet" href="assets/css/owl.transitions.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/read.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</script>
<script src="https://kit.fontawesome.com/ff5ee53d46.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="assets/js/html5shiv.min.js"></script>

<!-- 웹폰트 -->
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/header.jsp" />

	<section id="contents">
		<h2 class="ir">반응형 사이트 컨텐츠</h2>
		<div class="container">
			<jsp:include page="/WEB-INF/views/include/leftSide.jsp" />

			<section id="cont-center">
				<h3 class="ir">cont-center</h3>
				<article class="cbox column4">
					<h4 class="cbox-title">Gallery</h4>
					<p class="cbox-desc">웹 백엔드와 관련된 정보 공유</p>

					<div id="board">
						<div id="read">
							<form action="#" method="get">
								<!-- 작성일 -->
								<div class="form-group">
									<span class="form-text">작성일</span> <span class="form-value">${contentVo.boardTitle }</span>
								</div>

								<!-- 제목 -->
								<div class="form-group">
									<span class="form-text">제 목</span> <span class="form-value">${contentVo.boardTime }</span>
								</div>

								<!-- 내용 -->
								<div id="txt-content">
									<span class="form-value"> 
										<c:if test="${contentVo.imgName != null }">
											<img alt="" src="${pageContext.request.contextPath}/upload/${contentVo.imgName}">
										</c:if>
										${contentVo.boardContent}
									</span>
								</div>

							</form>
							<!-- //form -->
						</div>
						<!-- //read -->
					</div>
					<!-- //board -->

					<!-- Gallery -->
				</article>
				<!-- column4 -->

			</section>
			<!-- cont-center -->

			<jsp:include page="/WEB-INF/views/include/rightSide.jsp" />
		</div>
	</section>

	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
<script type="text/javascript" src="assets/js/custom.js"></script>
<script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="assets/js/lightgallery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#lightgallery").lightGallery();
	});
</script>

</html>
