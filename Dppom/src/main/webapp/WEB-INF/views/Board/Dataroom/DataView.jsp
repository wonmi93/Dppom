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
	<table width="770" border="1" cellspacing="0" cellpadding="2">
		<tr>
			<td width="20%">번호</td>
			<td width="30%">
				${viewRow.idx}
			</td>
			<td width="20%">작성자</td>
			<td width="30%">
				${viewRow.name}
			</td>
		</tr>
		<tr>
			<td width="20%">작성일</td>
			<td width="30%">
				${viewRow.postdate}
			</td>
			<td width="20%">조회수</td>
			<td width="30%">
				${viewRow.hits}
			</td>
		</tr>
		<tr>
			<td width="20%">제목</td>
			<td width="80%" colspan="3">
				${viewRow.title}
			</td>
		</tr>
		<tr>
			<td width="10%">내용</td>
			<td width="90%" colspan="3" style="height:150px; padding:10px;">
				${viewRow.content}
			</td>
		</tr>
		<tr>
			<td colspan="4" style="text-align:center; padding:10px 0;">
				<button type="button" onclick="location.href='./password.do?idx=${viewRow.idx}&mode=modify&nowPage=${param.nowPage}';">수정</button>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='./password.do?idx=${viewRow.idx}&mode=delete&nowPage=${param.nowPage}';">삭제</button>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='./list.do?nowPage=${param.nowPage}';">리스트로</button>&nbsp;&nbsp;&nbsp;
				<button type="button" onclick="location.href='./reply.do?idx=${viewRow.idx}&nowPage=${param.nowPage}';">답글 달기</button>&nbsp;&nbsp;&nbsp;
			</td>
		</tr>
	</table>
</body>
</html>