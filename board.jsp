<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>  
<c:set var="user_no" value="${sessionScope.user_no}" />
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
		<form action='<c:url value="/board/board"/>' method="get">
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
		        <c:if test="${user_no != null}">
		        	<button id="write-btn">글작성</button>
				</c:if>	
			</div>		
		</form>
			<div>
				<div id="list-title">
					<div style="padding: 5px 5px; font-size: 25px; font-family: fantasy; ">NO</div>
					<div style="padding: 5px 300px; font-size: 25px;  font-weight: 900; ">제목</div>
					<div style="padding: 5px 50px 5px 20px; font-size: 25px;     font-weight: 900; ">작성자</div>
					<div style="padding: 5px 5px; font-size: 25px;     font-weight: 900; ">작성시간</div>
				</div>
			</div>
			<%-- <c:forEach var="articleDTO" items="${list}"> --%>
				<div>
					<div id="articleList" style="position: relative;">
						<div style="padding: 10px 40px 10px 7px;">77</div>
						<div style="padding: 10px 25px 10px 10px; width: 625px">제목이 보여짐rkskekfkakqktk</div>
						<div style="padding: 10px 20px; width: 140px;">작성자</div>
						<div style="padding: 10px 10px; ">2023-07-22</div>
					</div>
				</div>
			<%-- </c:forEach> --%>
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