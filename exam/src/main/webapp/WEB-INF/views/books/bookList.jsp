<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style>
	table, tr, th, td{
		border	: 1px solid black;
		text-align : center;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>도서 죄회 수정</h3>

	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>책 이미지</th>
				<th>출판일</th>
				<th>책 가격</th>
				<th>출판사</th>
				<th>책 정보</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${bookList}" var="book">
				<tr>
					<td>${book.bookNo}</td>
					<td>${book.bookName}</td>
					<td><img src="resources/images/${book.bookCoverimg}"
						style="width: 100px; height: 130px;"></td>
					<td><fmt:formatDate value="${book.bookDate}"
							pattern="yyyy/MM/dd" /></td>
					<td><fmt:formatNumber value="${book.bookPrice}"
							pattern="#,###" /></td>
					<td>${book.bookPublisher}</td>
					<td>${book.bookInfo}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>