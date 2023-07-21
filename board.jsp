<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  
<c:set var="loginout" value="${sessionScope.id == null ? 'logout' : 'login'}" />
<c:set var="loginoutlink" value="${sessionScope.id==null ? '/login' : '/mypage'}" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>보통의 게시판</title>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
	    <link rel="stylesheet" href="${path}/resources/css/board/board.css" >
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
	    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	</head>
	<body>
		<div>
			<header>
				<h1><a href="<c:url value="/" />">HOME</a></h1>
				<nav>
					<ul>
						<li><a href="https://www.wavve.com/index.html">Wavve</a></li>
						<li><a href="https://www.tving.com/onboarding">Tving</a></li>
						<li><a href="https://www.coupangplay.com/">Coupang</a></li>
						<li><a href="https://www.disneyplus.com/ko-kr">disneyplus</a></li>
						<li><a href="https://www.netflix.com/kr/">netflix</a></li>
					</ul>
				</nav>
			</header>		
		</div>
		
		<div id="container">
			<div class="search-var">
				<div class="dropdown">
				  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				    제목 <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu">
				    <li><a class="dropdown-item"  href="javascript:void(0)">제목</a></li>
				    <li><a class="dropdown-item"  href="javascript:void(0)">내용</a></li>
				  </ul>
				</div>
				<input  type="text" class="search-input" name="keyword" value="${ param.keyword }"/>
		        <button type="submit" class="btn btn-outline-success" id="btn">검색</button>			
			</div>

				
				
		</div>
		
		<script>
			$(document).ready(function(){
				/* 드롭다운 */
				$('.dropdown .dropdown-menu li > a').bind('click', function (e) {
				    var html = $(this).html();
				    $('.dropdown button.dropdown-toggle').html(html + ' <span class="caret"></span>');
				});				
			});

		</script>
		


		
		
		
		
	</body>
</html>