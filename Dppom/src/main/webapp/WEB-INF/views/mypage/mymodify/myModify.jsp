<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../resources/bootstrap-3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="../../resources/bootstrap-3.3.7/js/bootstrap.min.js"></script>
<title>마이 페이지</title>
</head>
<body>
	<h1>회원정보 수정하기</h1>
	<!--
	<table width="770" border="1" cellspacing="0" cellpadding="2" style="text-align:center;">
		<tr style="background-color:#f3f3f3;">
			<th width="10%">번호</th>
			<th width="10%">아이디</th>
			<th width="10%">비밀번호</th>
			<th width="10%">제목</th>
			<th width="10%">내용</th>
			<th width="20%">이메일</th>
			<th width="10%">등록날짜</th>
			<th width="10%">게시판명</th>
			<th width="10%">답변유무</th>
		</tr>
		<c:choose>
			<c:when test="${empty recommData}">
			<tr>
				<td colspan="9">등록된 글이 음슴</td>
			</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${recommData}" var="recomm" >
				<tr>
					<td>${recomm.idx}</td>
					<td>${recomm.id}</td>
					<td>${recomm.pass}</td>
					<td>${recomm.title}</td>
					<td>${recomm.content}</td>
					<td>${recomm.email}</td>
					<td>${recomm.regi_date}</td>
					<td>${recomm.page_title}</td>
					<td>${recomm.reply_flag}</td>
				</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
	-->
</body>
</html>