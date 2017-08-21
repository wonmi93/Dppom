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
	<table>
		<tr>
			<td>NO.</td>
			<td>이미지</td>
			<td>제목</td>
			<td>작성자</td>
			<td>파일</td>
			<td>게시일</td>
			
			<c:choose>
		 		<c:when test="${empty viewRow}">
		 			<!-- 등록된 글이 없을 경우 -->  	
		 			<tr>
						<td colspan="6" style ="height:100px;">등록된 글이 없습니다.!!!!!!!!!!!!</td>
					</tr>
		 		</c:when>
		 		<c:otherwise>
		 			<!-- 등록된 글이 있을 경우 -->
		 			<c:forEach items="${viewRow}" var="row" varStatus="loop">
			 			<tr>
				 			<td style="text-align:center;">${viewRow.idx}</td>
				 			<td><a href="./view.do?idx=${viewRow.idx}&nowPage=${nowPage}">${viewRow.title}</a></td>
				 			<td style="text-align:center;">${viewRow.name}</td>
				 			<td style="text-align:center;">${viewRow.hits}</td>
				 			<td style="text-align:center;">${viewRow.postdate}</td>
				 		</tr>
			 		</c:forEach>
		 		</c:otherwise>
		 	</c:choose>
			
		</tr>
	</table>
</body>
</html>