<%@page import="test.file.dto.FileDto"%>
<%@page import="test.file.dao.FileDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
<%
	//id라는 키 값으로 세션에 저장된 문자열이 있는지 읽어와 본다.
	String id = (String)session.getAttribute("id");

%>
	<div class="container">
		<h1>인덱스 페이지 입니다.</h1>
		
		<%if(id != null) {%>
			<p>
				<a href="users/private/info.jsp"><%=id %></a> 님 로그인 중 ...
				<a href="users/logout.jsp">로그아웃</a>
			</p>
		<%} %>
		
		<ul>
			<li><a href="users/signup_form.jsp">회원가입</a></li>
			<li><a href="users/loginform.jsp">로그인</a></li>
			
			<!-- 로그인 상태에서만 상품구매 가능 -->
			<li><a href="test/buy.jsp?code=111">111번 상품 구입 테스트</a></li>
			
			<li><a href="ajax/test01.jsp">Ajax 테스트</a></li>
			<li><a href="ajax/test02.jsp">Ajax 테스트 2</a></li>
			<li><a href="ajax/test03.jsp">Ajax 테스트 3</a></li>
			
			<li><a href="file/list.jsp">자료실 목록 보기</a></li>
			
			<li><a href="gallery/test.jsp">이미지 업로드 TEST</a></li>
			<li><a href="gallery/test2.jsp">ajax 이미지 업로드</a></li>
			<li><a href="gallery/list.jsp">이미지 갤러리</a></li>
			
			<li><a href="test/editor.jsp">SmartEditor 테스트</a></li>
		</ul>
	</div>
</body>
</html>